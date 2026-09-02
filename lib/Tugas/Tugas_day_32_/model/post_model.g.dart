// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Welcome _$WelcomeFromJson(Map<String, dynamic> json) => Welcome(
  products: (json['products'] as List<dynamic>)
      .map((e) => Product.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  skip: (json['skip'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$WelcomeToJson(Welcome instance) => <String, dynamic>{
  'products': instance.products,
  'total': instance.total,
  'skip': instance.skip,
  'limit': instance.limit,
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  category: json['category'] as String,
  price: (json['price'] as num).toDouble(),
  discountPercentage: (json['discountPercentage'] as num).toDouble(),
  rating: (json['rating'] as num).toDouble(),
  stock: (json['stock'] as num).toInt(),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  brand: json['brand'] as String?,
  sku: json['sku'] as String,
  weight: (json['weight'] as num).toInt(),
  dimensions: Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
  warrantyInformation: $enumDecode(
    _$WarrantyInformationEnumMap,
    json['warrantyInformation'],
  ),
  shippingInformation: $enumDecode(
    _$ShippingInformationEnumMap,
    json['shippingInformation'],
  ),
  availabilityStatus: $enumDecode(
    _$AvailabilityStatusEnumMap,
    json['availabilityStatus'],
  ),
  reviews: (json['reviews'] as List<dynamic>)
      .map((e) => Review.fromJson(e as Map<String, dynamic>))
      .toList(),
  returnPolicy: $enumDecode(_$ReturnPolicyEnumMap, json['returnPolicy']),
  minimumOrderQuantity: (json['minimumOrderQuantity'] as num).toInt(),
  meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  thumbnail: json['thumbnail'] as String,
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'category': instance.category,
  'price': instance.price,
  'discountPercentage': instance.discountPercentage,
  'rating': instance.rating,
  'stock': instance.stock,
  'tags': instance.tags,
  'brand': instance.brand,
  'sku': instance.sku,
  'weight': instance.weight,
  'dimensions': instance.dimensions,
  'warrantyInformation':
      _$WarrantyInformationEnumMap[instance.warrantyInformation]!,
  'shippingInformation':
      _$ShippingInformationEnumMap[instance.shippingInformation]!,
  'availabilityStatus':
      _$AvailabilityStatusEnumMap[instance.availabilityStatus]!,
  'reviews': instance.reviews,
  'returnPolicy': _$ReturnPolicyEnumMap[instance.returnPolicy]!,
  'minimumOrderQuantity': instance.minimumOrderQuantity,
  'meta': instance.meta,
  'images': instance.images,
  'thumbnail': instance.thumbnail,
};

const _$WarrantyInformationEnumMap = {
  WarrantyInformation.LIFETIME_WARRANTY: 'Lifetime warranty',
  WarrantyInformation.NO_WARRANTY: 'No warranty',
  WarrantyInformation.THE_1_MONTH_WARRANTY: '1 month warranty',
  WarrantyInformation.THE_1_WEEK_WARRANTY: '1 week warranty',
  WarrantyInformation.THE_1_YEAR_WARRANTY: '1 year warranty',
  WarrantyInformation.THE_2_YEAR_WARRANTY: '2 year warranty',
  WarrantyInformation.THE_3_MONTHS_WARRANTY: '3 months warranty',
  WarrantyInformation.THE_3_YEAR_WARRANTY: '3 year warranty',
  WarrantyInformation.THE_5_YEAR_WARRANTY: '5 year warranty',
  WarrantyInformation.THE_6_MONTHS_WARRANTY: '6 months warranty',
};

const _$ShippingInformationEnumMap = {
  ShippingInformation.SHIPS_IN_12_BUSINESS_DAYS: 'Ships in 1-2 business days',
  ShippingInformation.SHIPS_IN_1_MONTH: 'Ships in 1 month',
  ShippingInformation.SHIPS_IN_1_WEEK: 'Ships in 1 week',
  ShippingInformation.SHIPS_IN_2_WEEKS: 'Ships in 2 weeks',
  ShippingInformation.SHIPS_IN_35_BUSINESS_DAYS: 'Ships in 3-5 business days',
  ShippingInformation.SHIPS_OVERNIGHT: 'Ships overnight',
};

const _$AvailabilityStatusEnumMap = {
  AvailabilityStatus.IN_STOCK: 'In Stock',
  AvailabilityStatus.LOW_STOCK: 'Low Stock',
  AvailabilityStatus.OUT_OF_STOCK: 'Out of Stock',
};

const _$ReturnPolicyEnumMap = {
  ReturnPolicy.NO_RETURN_POLICY: 'No return policy',
  ReturnPolicy.THE_30_DAYS_RETURN_POLICY: '30 days return policy',
  ReturnPolicy.THE_60_DAYS_RETURN_POLICY: '60 days return policy',
  ReturnPolicy.THE_7_DAYS_RETURN_POLICY: '7 days return policy',
  ReturnPolicy.THE_90_DAYS_RETURN_POLICY: '90 days return policy',
};

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) => Dimensions(
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  depth: (json['depth'] as num).toDouble(),
);

Map<String, dynamic> _$DimensionsToJson(Dimensions instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  barcode: json['barcode'] as String,
  qrCode: json['qrCode'] as String,
);

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'barcode': instance.barcode,
  'qrCode': instance.qrCode,
};

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
  rating: (json['rating'] as num).toInt(),
  comment: $enumDecode(_$CommentEnumMap, json['comment']),
  date: DateTime.parse(json['date'] as String),
  reviewerName: json['reviewerName'] as String,
  reviewerEmail: json['reviewerEmail'] as String,
);

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
  'rating': instance.rating,
  'comment': _$CommentEnumMap[instance.comment]!,
  'date': instance.date.toIso8601String(),
  'reviewerName': instance.reviewerName,
  'reviewerEmail': instance.reviewerEmail,
};

const _$CommentEnumMap = {
  Comment.AWESOME_PRODUCT: 'Awesome product!',
  Comment.DISAPPOINTING_PRODUCT: 'Disappointing product!',
  Comment.EXCELLENT_QUALITY: 'Excellent quality!',
  Comment.FAST_SHIPPING: 'Fast shipping!',
  Comment.GREAT_PRODUCT: 'Great product!',
  Comment.GREAT_VALUE_FOR_MONEY: 'Great value for money!',
  Comment.HIGHLY_IMPRESSED: 'Highly impressed!',
  Comment.HIGHLY_RECOMMENDED: 'Highly recommended!',
  Comment.NOT_AS_DESCRIBED: 'Not as described!',
  Comment.NOT_WORTH_THE_PRICE: 'Not worth the price!',
  Comment.POOR_QUALITY: 'Poor quality!',
  Comment.VERY_DISAPPOINTED: 'Very disappointed!',
  Comment.VERY_DISSATISFIED: 'Very dissatisfied!',
  Comment.VERY_HAPPY_WITH_MY_PURCHASE: 'Very happy with my purchase!',
  Comment.VERY_PLEASED: 'Very pleased!',
  Comment.VERY_SATISFIED: 'Very satisfied!',
  Comment.VERY_UNHAPPY_WITH_MY_PURCHASE: 'Very unhappy with my purchase!',
  Comment.WASTE_OF_MONEY: 'Waste of money!',
  Comment.WOULD_BUY_AGAIN: 'Would buy again!',
  Comment.WOULD_NOT_BUY_AGAIN: 'Would not buy again!',
  Comment.WOULD_NOT_RECOMMEND: 'Would not recommend!',
};
