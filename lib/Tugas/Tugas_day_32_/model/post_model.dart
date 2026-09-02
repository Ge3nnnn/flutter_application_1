// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'post_model.g.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

@JsonSerializable()
class Welcome {
    @JsonKey(name: "products")
    final List<Product> products;
    @JsonKey(name: "total")
    final int total;
    @JsonKey(name: "skip")
    final int skip;
    @JsonKey(name: "limit")
    final int limit;

    Welcome({
        required this.products,
        required this.total,
        required this.skip,
        required this.limit,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => _$WelcomeFromJson(json);

    Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}

@JsonSerializable()
class Product {
    @JsonKey(name: "id")
    final int id;
    @JsonKey(name: "title")
    final String title;
    @JsonKey(name: "description")
    final String description;
    @JsonKey(name: "category")
    final String category;
    @JsonKey(name: "price")
    final double price;
    @JsonKey(name: "discountPercentage")
    final double discountPercentage;
    @JsonKey(name: "rating")
    final double rating;
    @JsonKey(name: "stock")
    final int stock;
    @JsonKey(name: "tags")
    final List<String> tags;
    @JsonKey(name: "brand")
    final String? brand;
    @JsonKey(name: "sku")
    final String sku;
    @JsonKey(name: "weight")
    final int weight;
    @JsonKey(name: "dimensions")
    final Dimensions dimensions;
    @JsonKey(name: "warrantyInformation")
    final WarrantyInformation warrantyInformation;
    @JsonKey(name: "shippingInformation")
    final ShippingInformation shippingInformation;
    @JsonKey(name: "availabilityStatus")
    final AvailabilityStatus availabilityStatus;
    @JsonKey(name: "reviews")
    final List<Review> reviews;
    @JsonKey(name: "returnPolicy")
    final ReturnPolicy returnPolicy;
    @JsonKey(name: "minimumOrderQuantity")
    final int minimumOrderQuantity;
    @JsonKey(name: "meta")
    final Meta meta;
    @JsonKey(name: "images")
    final List<String> images;
    @JsonKey(name: "thumbnail")
    final String thumbnail;

    Product({
        required this.id,
        required this.title,
        required this.description,
        required this.category,
        required this.price,
        required this.discountPercentage,
        required this.rating,
        required this.stock,
        required this.tags,
        this.brand,
        required this.sku,
        required this.weight,
        required this.dimensions,
        required this.warrantyInformation,
        required this.shippingInformation,
        required this.availabilityStatus,
        required this.reviews,
        required this.returnPolicy,
        required this.minimumOrderQuantity,
        required this.meta,
        required this.images,
        required this.thumbnail,
    });

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

    Map<String, dynamic> toJson() => _$ProductToJson(this);
}

enum AvailabilityStatus {
    @JsonValue("In Stock")
    IN_STOCK,
    @JsonValue("Low Stock")
    LOW_STOCK,
    @JsonValue("Out of Stock")
    OUT_OF_STOCK
}

final availabilityStatusValues = EnumValues({
    "In Stock": AvailabilityStatus.IN_STOCK,
    "Low Stock": AvailabilityStatus.LOW_STOCK,
    "Out of Stock": AvailabilityStatus.OUT_OF_STOCK
});

@JsonSerializable()
class Dimensions {
    @JsonKey(name: "width")
    final double width;
    @JsonKey(name: "height")
    final double height;
    @JsonKey(name: "depth")
    final double depth;

    Dimensions({
        required this.width,
        required this.height,
        required this.depth,
    });

    factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);

    Map<String, dynamic> toJson() => _$DimensionsToJson(this);
}

@JsonSerializable()
class Meta {
    @JsonKey(name: "createdAt")
    final DateTime createdAt;
    @JsonKey(name: "updatedAt")
    final DateTime updatedAt;
    @JsonKey(name: "barcode")
    final String barcode;
    @JsonKey(name: "qrCode")
    final String qrCode;

    Meta({
        required this.createdAt,
        required this.updatedAt,
        required this.barcode,
        required this.qrCode,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

    Map<String, dynamic> toJson() => _$MetaToJson(this);
}

enum ReturnPolicy {
    @JsonValue("No return policy")
    NO_RETURN_POLICY,
    @JsonValue("30 days return policy")
    THE_30_DAYS_RETURN_POLICY,
    @JsonValue("60 days return policy")
    THE_60_DAYS_RETURN_POLICY,
    @JsonValue("7 days return policy")
    THE_7_DAYS_RETURN_POLICY,
    @JsonValue("90 days return policy")
    THE_90_DAYS_RETURN_POLICY
}

final returnPolicyValues = EnumValues({
    "No return policy": ReturnPolicy.NO_RETURN_POLICY,
    "30 days return policy": ReturnPolicy.THE_30_DAYS_RETURN_POLICY,
    "60 days return policy": ReturnPolicy.THE_60_DAYS_RETURN_POLICY,
    "7 days return policy": ReturnPolicy.THE_7_DAYS_RETURN_POLICY,
    "90 days return policy": ReturnPolicy.THE_90_DAYS_RETURN_POLICY
});

@JsonSerializable()
class Review {
    @JsonKey(name: "rating")
    final int rating;
    @JsonKey(name: "comment")
    final Comment comment;
    @JsonKey(name: "date")
    final DateTime date;
    @JsonKey(name: "reviewerName")
    final String reviewerName;
    @JsonKey(name: "reviewerEmail")
    final String reviewerEmail;

    Review({
        required this.rating,
        required this.comment,
        required this.date,
        required this.reviewerName,
        required this.reviewerEmail,
    });

    factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

    Map<String, dynamic> toJson() => _$ReviewToJson(this);
}

enum Comment {
    @JsonValue("Awesome product!")
    AWESOME_PRODUCT,
    @JsonValue("Disappointing product!")
    DISAPPOINTING_PRODUCT,
    @JsonValue("Excellent quality!")
    EXCELLENT_QUALITY,
    @JsonValue("Fast shipping!")
    FAST_SHIPPING,
    @JsonValue("Great product!")
    GREAT_PRODUCT,
    @JsonValue("Great value for money!")
    GREAT_VALUE_FOR_MONEY,
    @JsonValue("Highly impressed!")
    HIGHLY_IMPRESSED,
    @JsonValue("Highly recommended!")
    HIGHLY_RECOMMENDED,
    @JsonValue("Not as described!")
    NOT_AS_DESCRIBED,
    @JsonValue("Not worth the price!")
    NOT_WORTH_THE_PRICE,
    @JsonValue("Poor quality!")
    POOR_QUALITY,
    @JsonValue("Very disappointed!")
    VERY_DISAPPOINTED,
    @JsonValue("Very dissatisfied!")
    VERY_DISSATISFIED,
    @JsonValue("Very happy with my purchase!")
    VERY_HAPPY_WITH_MY_PURCHASE,
    @JsonValue("Very pleased!")
    VERY_PLEASED,
    @JsonValue("Very satisfied!")
    VERY_SATISFIED,
    @JsonValue("Very unhappy with my purchase!")
    VERY_UNHAPPY_WITH_MY_PURCHASE,
    @JsonValue("Waste of money!")
    WASTE_OF_MONEY,
    @JsonValue("Would buy again!")
    WOULD_BUY_AGAIN,
    @JsonValue("Would not buy again!")
    WOULD_NOT_BUY_AGAIN,
    @JsonValue("Would not recommend!")
    WOULD_NOT_RECOMMEND
}

final commentValues = EnumValues({
    "Awesome product!": Comment.AWESOME_PRODUCT,
    "Disappointing product!": Comment.DISAPPOINTING_PRODUCT,
    "Excellent quality!": Comment.EXCELLENT_QUALITY,
    "Fast shipping!": Comment.FAST_SHIPPING,
    "Great product!": Comment.GREAT_PRODUCT,
    "Great value for money!": Comment.GREAT_VALUE_FOR_MONEY,
    "Highly impressed!": Comment.HIGHLY_IMPRESSED,
    "Highly recommended!": Comment.HIGHLY_RECOMMENDED,
    "Not as described!": Comment.NOT_AS_DESCRIBED,
    "Not worth the price!": Comment.NOT_WORTH_THE_PRICE,
    "Poor quality!": Comment.POOR_QUALITY,
    "Very disappointed!": Comment.VERY_DISAPPOINTED,
    "Very dissatisfied!": Comment.VERY_DISSATISFIED,
    "Very happy with my purchase!": Comment.VERY_HAPPY_WITH_MY_PURCHASE,
    "Very pleased!": Comment.VERY_PLEASED,
    "Very satisfied!": Comment.VERY_SATISFIED,
    "Very unhappy with my purchase!": Comment.VERY_UNHAPPY_WITH_MY_PURCHASE,
    "Waste of money!": Comment.WASTE_OF_MONEY,
    "Would buy again!": Comment.WOULD_BUY_AGAIN,
    "Would not buy again!": Comment.WOULD_NOT_BUY_AGAIN,
    "Would not recommend!": Comment.WOULD_NOT_RECOMMEND
});

enum ShippingInformation {
    @JsonValue("Ships in 1-2 business days")
    SHIPS_IN_12_BUSINESS_DAYS,
    @JsonValue("Ships in 1 month")
    SHIPS_IN_1_MONTH,
    @JsonValue("Ships in 1 week")
    SHIPS_IN_1_WEEK,
    @JsonValue("Ships in 2 weeks")
    SHIPS_IN_2_WEEKS,
    @JsonValue("Ships in 3-5 business days")
    SHIPS_IN_35_BUSINESS_DAYS,
    @JsonValue("Ships overnight")
    SHIPS_OVERNIGHT
}

final shippingInformationValues = EnumValues({
    "Ships in 1-2 business days": ShippingInformation.SHIPS_IN_12_BUSINESS_DAYS,
    "Ships in 1 month": ShippingInformation.SHIPS_IN_1_MONTH,
    "Ships in 1 week": ShippingInformation.SHIPS_IN_1_WEEK,
    "Ships in 2 weeks": ShippingInformation.SHIPS_IN_2_WEEKS,
    "Ships in 3-5 business days": ShippingInformation.SHIPS_IN_35_BUSINESS_DAYS,
    "Ships overnight": ShippingInformation.SHIPS_OVERNIGHT
});

enum WarrantyInformation {
    @JsonValue("Lifetime warranty")
    LIFETIME_WARRANTY,
    @JsonValue("No warranty")
    NO_WARRANTY,
    @JsonValue("1 month warranty")
    THE_1_MONTH_WARRANTY,
    @JsonValue("1 week warranty")
    THE_1_WEEK_WARRANTY,
    @JsonValue("1 year warranty")
    THE_1_YEAR_WARRANTY,
    @JsonValue("2 year warranty")
    THE_2_YEAR_WARRANTY,
    @JsonValue("3 months warranty")
    THE_3_MONTHS_WARRANTY,
    @JsonValue("3 year warranty")
    THE_3_YEAR_WARRANTY,
    @JsonValue("5 year warranty")
    THE_5_YEAR_WARRANTY,
    @JsonValue("6 months warranty")
    THE_6_MONTHS_WARRANTY
}

final warrantyInformationValues = EnumValues({
    "Lifetime warranty": WarrantyInformation.LIFETIME_WARRANTY,
    "No warranty": WarrantyInformation.NO_WARRANTY,
    "1 month warranty": WarrantyInformation.THE_1_MONTH_WARRANTY,
    "1 week warranty": WarrantyInformation.THE_1_WEEK_WARRANTY,
    "1 year warranty": WarrantyInformation.THE_1_YEAR_WARRANTY,
    "2 year warranty": WarrantyInformation.THE_2_YEAR_WARRANTY,
    "3 months warranty": WarrantyInformation.THE_3_MONTHS_WARRANTY,
    "3 year warranty": WarrantyInformation.THE_3_YEAR_WARRANTY,
    "5 year warranty": WarrantyInformation.THE_5_YEAR_WARRANTY,
    "6 months warranty": WarrantyInformation.THE_6_MONTHS_WARRANTY
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
