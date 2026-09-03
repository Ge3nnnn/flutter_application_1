import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tugas_day_33/service/api_service.dart';
import 'package:flutter_application_1/Tugas_day_33/service/dio_client.dart';
import 'package:flutter_application_1/Tugas_day_33/service/token_storage.dart';
import 'package:flutter_application_1/Tugas_day_33/view/profile_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool _isLoading = false;

  String _selectedGender = 'L';
  int _selectedBatchId = 1;
  int _selectedTrainingId = 16; // Default to Mobile Programming

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
            _selectedBatchId = _batchList.first['id'] as int;
            _selectedTrainingId = _trainingList.first['id'] as int;
          });
        }
      }
    } catch (_) {
      // Fallback already provided in initial state
    }
  }

  String _extractErrorMessage(dynamic error) {
    if (error is DioException) {
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

  Future<void> _handleRegister() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final response = await _apiService.register({
        'name': _nameController.text.trim(),
        'email': _emailController.text.trim(),
        'password': _passwordController.text,
        'batch_id': _selectedBatchId,
        'training_id': _selectedTrainingId,
        'jenis_kelamin': _selectedGender,
      });

      final token = response.data?.token;
      if (token != null && token.isNotEmpty) {
        await TokenStorage.saveToken(token);
      }

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(response.message ?? 'Registrasi berhasil!'),
          backgroundColor: Colors.green,
        ),
      );

      // Navigate to ProfileView directly
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const ProfileView()),
        (route) => false,
      );
    } catch (e) {
      if (!mounted) return;
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
      appBar: AppBar(
        title: const Text('Daftar Akun Baru'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Buat Akun Anda',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Lengkapi formulir pendaftaran di bawah ini',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                const SizedBox(height: 24),

                // Nama Lengkap
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    prefixIcon: const Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.grey[50],
                  ),
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return 'Nama lengkap wajib diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Email
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'nama@example.com',
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.grey[50],
                  ),
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return 'Email wajib diisi';
                    }
                    if (!val.contains('@')) {
                      return 'Format email tidak valid';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Password
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    helperText: 'Minimal 8 karakter (huruf besar, kecil, angka/simbol)',
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
                    fillColor: Colors.grey[50],
                  ),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Password wajib diisi';
                    }
                    if (val.length < 8) {
                      return 'Password minimal 8 karakter';
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
                    fillColor: Colors.grey[50],
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

                // Batch
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
                    fillColor: Colors.grey[50],
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

                // Jurusan / Training
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
                    fillColor: Colors.grey[50],
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
                const SizedBox(height: 28),

                // Submit Button
                ElevatedButton(
                  onPressed: _isLoading ? null : _handleRegister,
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
                      : const Text(
                          'Daftar Akun',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
                const SizedBox(height: 16),

                // Back to Login Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudah punya akun? ',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
