import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_33/models/profile_response.dart';
import 'package:flutter_application_1/Tugas_day_33/service/api_service.dart';
import 'package:flutter_application_1/Tugas_day_33/service/dio_client.dart';
import 'package:flutter_application_1/Tugas_day_33/service/token_storage.dart';
import 'package:flutter_application_1/Tugas_day_33/view/login_view.dart';

class EditProfileView extends StatefulWidget {
  final ProfileData profileData;

  const EditProfileView({super.key, required this.profileData});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool _isLoading = false;

  late String _selectedGender;
  late int _selectedBatchId;
  late int _selectedTrainingId;

  late final ApiService _apiService;
  late final Dio _dio;

  List<Map<String, dynamic>> _batchList = [
    {'id': 1, 'name': 'Batch 2'},
    {'id': 2, 'name': 'Batch 3'},
    {'id': 3, 'name': 'Batch 4'},
    {'id': 4, 'name': 'Batch 5'},
  ];

  List<Map<String, dynamic>> _trainingList = [
    {'id': 16, 'title': 'Mobile Programming'},
    {'id': 14, 'title': 'Web Programming'},
    {'id': 1, 'title': 'Data Management Staff'},
    {'id': 2, 'title': 'Bahasa Inggris'},
    {'id': 3, 'title': 'Desainer Grafis Madya'},
    {'id': 9, 'title': 'Barista'},
    {'id': 10, 'title': 'Bahasa Korea'},
    {'id': 13, 'title': 'Content Creator'},
    {'id': 15, 'title': 'Digital Marketing'},
  ];

  @override
  void initState() {
    super.initState();
    _dio = createDioClient();
    _apiService = ApiService(_dio);

    // Inisialisasi controller dari data profile yang ada
    _nameController = TextEditingController(text: widget.profileData.name ?? '');
    _emailController = TextEditingController(text: widget.profileData.email ?? '');

    // Inisialisasi jenis kelamin
    final gender = widget.profileData.jenisKelamin?.toUpperCase();
    _selectedGender = (gender == 'P' || gender == 'PEREMPUAN') ? 'P' : 'L';

    // Inisialisasi batch id berdasarkan batch_ke jika cocok
    _selectedBatchId = 1;
    final batchKeStr = widget.profileData.batchKe?.toString();
    if (batchKeStr != null && batchKeStr.isNotEmpty) {
      final matchedBatch = _batchList.firstWhere(
        (b) =>
            b['name'].toString().toLowerCase().contains(batchKeStr.toLowerCase()) ||
            b['id'].toString() == batchKeStr,
        orElse: () => _batchList.first,
      );
      _selectedBatchId = matchedBatch['id'] as int;
    }

    // Inisialisasi training id berdasarkan training_title jika cocok
    _selectedTrainingId = 16;
    final trainingTitle = widget.profileData.trainingTitle;
    if (trainingTitle != null && trainingTitle.isNotEmpty) {
      final matchedTraining = _trainingList.firstWhere(
        (t) => t['title'].toString().toLowerCase() == trainingTitle.toLowerCase(),
        orElse: () => _trainingList.first,
      );
      _selectedTrainingId = matchedTraining['id'] as int;
    }

    _fetchBatchesFromApi();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _fetchBatchesFromApi() async {
    try {
      final res = await _dio.get('/api/batches');
      if (res.data != null && res.data['data'] is List) {
        final List batches = res.data['data'];
        final newBatchList = <Map<String, dynamic>>[];
        final newTrainingList = <Map<String, dynamic>>[];

        for (var b in batches) {
          newBatchList.add({
            'id': b['id'],
            'name': 'Batch ${b['batch_ke']}',
          });
          if (b['trainings'] is List) {
            for (var t in b['trainings']) {
              if (!newTrainingList.any((item) => item['id'] == t['id'])) {
                newTrainingList.add({
                  'id': t['id'],
                  'title': t['title'],
                });
              }
            }
          }
        }

        if (mounted && newBatchList.isNotEmpty) {
          setState(() {
            _batchList = newBatchList;
            if (newTrainingList.isNotEmpty) {
              _trainingList = newTrainingList;
            }

            // Sesuaikan batch yang dipilih jika tersedia di list baru
            final batchKeStr = widget.profileData.batchKe?.toString();
            if (batchKeStr != null && batchKeStr.isNotEmpty) {
              final matched = _batchList.firstWhere(
                (b) =>
                    b['name'].toString().toLowerCase().contains(batchKeStr.toLowerCase()) ||
                    b['id'].toString() == batchKeStr,
                orElse: () => _batchList.first,
              );
              _selectedBatchId = matched['id'] as int;
            } else if (!_batchList.any((b) => b['id'] == _selectedBatchId)) {
              _selectedBatchId = _batchList.first['id'] as int;
            }

            // Sesuaikan jurusan yang dipilih jika tersedia di list baru
            final trainingTitle = widget.profileData.trainingTitle;
            if (trainingTitle != null && trainingTitle.isNotEmpty) {
              final matchedT = _trainingList.firstWhere(
                (t) =>
                    t['title'].toString().toLowerCase() ==
                    trainingTitle.toLowerCase(),
                orElse: () => _trainingList.first,
              );
              _selectedTrainingId = matchedT['id'] as int;
            } else if (!_trainingList.any((t) => t['id'] == _selectedTrainingId)) {
              _selectedTrainingId = _trainingList.first['id'] as int;
            }
          });
        }
      }
    } catch (_) {
      // Menggunakan fallback data yang sudah disiapkan
    }
  }

  String _extractErrorMessage(dynamic error) {
    if (error is DioException) {
      if (error.response?.statusCode == 401) {
        return 'Sesi Anda telah berakhir. Silakan login kembali.';
      }
      if (error.response?.data != null && error.response?.data is Map) {
        final data = error.response!.data as Map<String, dynamic>;
        if (data['errors'] != null && data['errors'] is Map) {
          final errors = data['errors'] as Map;
          final messages = <String>[];
          errors.forEach((_, val) {
            if (val is List && val.isNotEmpty) {
              messages.add(val.first.toString());
            } else if (val != null) {
              messages.add(val.toString());
            }
          });
          if (messages.isNotEmpty) {
            return messages.join('\n');
          }
        }
        if (data['message'] != null) {
          return data['message'].toString();
        }
      }
      return error.message ?? 'Terjadi kesalahan pada server';
    }
    return error.toString();
  }

  Future<void> _handleSave() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final token = await TokenStorage.getToken();
      if (token == null || token.isEmpty) {
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const LoginView()),
        );
        return;
      }

      final body = <String, dynamic>{
        'name': _nameController.text.trim(),
        'email': _emailController.text.trim(),
        'jenis_kelamin': _selectedGender,
        'batch_id': _selectedBatchId,
        'training_id': _selectedTrainingId,
      };

      // Password opsional: hanya kirim jika pengguna mengisi password baru
      if (_passwordController.text.isNotEmpty) {
        body['password'] = _passwordController.text;
      }

      final response = await _apiService.updateProfile('Bearer $token', body);

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(response.message ?? 'Profil berhasil diperbarui!'),
          backgroundColor: Colors.green,
        ),
      );

      // Kembali ke ProfileView dengan nilai true untuk trigger reload data
      Navigator.pop(context, true);
    } catch (e) {
      if (!mounted) return;
      if (e is DioException && e.response?.statusCode == 401) {
        await TokenStorage.clearToken();
        if (!mounted) return;
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const LoginView()),
          (route) => false,
        );
        return;
      }

      final msg = _extractErrorMessage(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(msg),
          backgroundColor: Colors.redAccent,
        ),
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Edit Profil'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header Avatar Card
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade200),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.08),
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 34,
                            backgroundColor: Colors.deepPurple.shade100,
                            child: Text(
                              _nameController.text.isNotEmpty
                                  ? _nameController.text[0].toUpperCase()
                                  : 'U',
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.edit,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Ubah Informasi Akun',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'ID: ${widget.profileData.id ?? "-"}',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Nama Lengkap
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    hintText: 'Masukkan nama lengkap',
                    prefixIcon: const Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return 'Nama lengkap wajib diisi';
                    }
                    return null;
                  },
                  onChanged: (_) {
                    setState(() {}); // Update inisial avatar jika nama berubah
                  },
                ),
                const SizedBox(height: 16),

                // Email
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Alamat Email',
                    hintText: 'nama@example.com',
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return 'Alamat email wajib diisi';
                    }
                    if (!val.contains('@')) {
                      return 'Format email tidak valid';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Jenis Kelamin
                DropdownButtonFormField<String>(
                  initialValue: _selectedGender,
                  decoration: InputDecoration(
                    labelText: 'Jenis Kelamin',
                    prefixIcon: const Icon(Icons.wc_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  items: const [
                    DropdownMenuItem(value: 'L', child: Text('Laki-laki (L)')),
                    DropdownMenuItem(value: 'P', child: Text('Perempuan (P)')),
                  ],
                  onChanged: (val) {
                    if (val != null) {
                      setState(() => _selectedGender = val);
                    }
                  },
                ),
                const SizedBox(height: 16),

                // Batch Pelatihan
                DropdownButtonFormField<int>(
                  initialValue: _batchList.any((b) => b['id'] == _selectedBatchId)
                      ? _selectedBatchId
                      : null,
                  decoration: InputDecoration(
                    labelText: 'Batch Pelatihan',
                    prefixIcon: const Icon(Icons.groups_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  items: _batchList.map((b) {
                    return DropdownMenuItem<int>(
                      value: b['id'] as int,
                      child: Text(b['name'].toString()),
                    );
                  }).toList(),
                  onChanged: (val) {
                    if (val != null) {
                      setState(() => _selectedBatchId = val);
                    }
                  },
                ),
                const SizedBox(height: 16),

                // Jurusan / Kejuruan
                DropdownButtonFormField<int>(
                  initialValue: _trainingList.any((t) => t['id'] == _selectedTrainingId)
                      ? _selectedTrainingId
                      : null,
                  isExpanded: true,
                  decoration: InputDecoration(
                    labelText: 'Jurusan / Kejuruan',
                    prefixIcon: const Icon(Icons.school_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  items: _trainingList.map((t) {
                    return DropdownMenuItem<int>(
                      value: t['id'] as int,
                      child: Text(
                        t['title'].toString(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  }).toList(),
                  onChanged: (val) {
                    if (val != null) {
                      setState(() => _selectedTrainingId = val);
                    }
                  },
                ),
                const SizedBox(height: 16),

                // Password Baru (Opsional)
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Password Baru (Opsional)',
                    hintText: 'Masukkan password baru',
                    helperText: 'Kosongkan jika tidak ingin mengubah password',
                    helperMaxLines: 2,
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  validator: (val) {
                    if (val != null && val.isNotEmpty && val.length < 8) {
                      return 'Password minimal 8 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 28),

                // Tombol Simpan
                ElevatedButton(
                  onPressed: _isLoading ? null : _handleSave,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: _isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save_outlined),
                            SizedBox(width: 8),
                            Text(
                              'Simpan Perubahan',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                ),
                const SizedBox(height: 12),

                // Tombol Batal
                OutlinedButton(
                  onPressed: _isLoading ? null : () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: BorderSide(color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Batal',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
