import 'dart:convert';

Temperatures temperaturesFromJson(String str) => Temperatures.fromJson(json.decode(str));

String temperaturesToJson(Temperatures data) => json.encode(data.toJson());

class Temperatures {
  Status status;
  String pageType;
  PlpResults plpResults;
  String nullSearch;
  String correctedQuery;

  Temperatures({
    required this.status,
    required this.pageType,
    required this.plpResults,
    required this.nullSearch,
    required this.correctedQuery,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    status: Status.fromJson(json["status"]),
    pageType: json["pageType"],
    plpResults: PlpResults.fromJson(json["plpResults"]),
    nullSearch: json["nullSearch"],
    correctedQuery: json["correctedQuery"],
  );

  Map<String, dynamic> toJson() => {
    "status": status.toJson(),
    "pageType": pageType,
    "plpResults": plpResults.toJson(),
    "nullSearch": nullSearch,
    "correctedQuery": correctedQuery,
  };
}

class PlpResults {
  String label;
  PlpState plpState;
  List<SortOption> sortOptions;
  List<RefinementGroup> refinementGroups;
  List<Record> records;
  Navigation navigation;
  CustomUrlParam customUrlParam;
  MetaData metaData;

  PlpResults({
    required this.label,
    required this.plpState,
    required this.sortOptions,
    required this.refinementGroups,
    required this.records,
    required this.navigation,
    required this.customUrlParam,
    required this.metaData,
  });

  factory PlpResults.fromJson(Map<String, dynamic> json) => PlpResults(
    label: json["label"],
    plpState: PlpState.fromJson(json["plpState"]),
    sortOptions: List<SortOption>.from(json["sortOptions"].map((x) => SortOption.fromJson(x))),
    refinementGroups: List<RefinementGroup>.from(json["refinementGroups"].map((x) => RefinementGroup.fromJson(x))),
    records: List<Record>.from(json["records"].map((x) => Record.fromJson(x))),
    navigation: Navigation.fromJson(json["navigation"]),
    customUrlParam: CustomUrlParam.fromJson(json["customUrlParam"]),
    metaData: MetaData.fromJson(json["metaData"]),
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "plpState": plpState.toJson(),
    "sortOptions": List<dynamic>.from(sortOptions.map((x) => x.toJson())),
    "refinementGroups": List<dynamic>.from(refinementGroups.map((x) => x.toJson())),
    "records": List<dynamic>.from(records.map((x) => x.toJson())),
    "navigation": navigation.toJson(),
    "customUrlParam": customUrlParam.toJson(),
    "metaData": metaData.toJson(),
  };
}

class CustomUrlParam {
  String key;
  String value;

  CustomUrlParam({
    required this.key,
    required this.value,
  });

  factory CustomUrlParam.fromJson(Map<String, dynamic> json) => CustomUrlParam(
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
  };
}

class MetaData {
  String searchAttributionToken;
  bool cached;
  int totalTime;

  MetaData({
    required this.searchAttributionToken,
    required this.cached,
    required this.totalTime,
  });

  factory MetaData.fromJson(Map<String, dynamic> json) => MetaData(
    searchAttributionToken: json["searchAttributionToken"],
    cached: json["cached"],
    totalTime: json["totalTime"],
  );

  Map<String, dynamic> toJson() => {
    "searchAttributionToken": searchAttributionToken,
    "cached": cached,
    "totalTime": totalTime,
  };
}

class Navigation {
  List<Ancester> ancester;
  List<Ancester> current;
  List<dynamic> childs;

  Navigation({
    required this.ancester,
    required this.current,
    required this.childs,
  });

  factory Navigation.fromJson(Map<String, dynamic> json) => Navigation(
    ancester: List<Ancester>.from(json["ancester"].map((x) => Ancester.fromJson(x))),
    current: List<Ancester>.from(json["current"].map((x) => Ancester.fromJson(x))),
    childs: List<dynamic>.from(json["childs"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "ancester": List<dynamic>.from(ancester.map((x) => x.toJson())),
    "current": List<dynamic>.from(current.map((x) => x.toJson())),
    "childs": List<dynamic>.from(childs.map((x) => x)),
  };
}

class Ancester {
  String label;
  String categoryId;

  Ancester({
    required this.label,
    required this.categoryId,
  });

  factory Ancester.fromJson(Map<String, dynamic> json) => Ancester(
    label: json["label"],
    categoryId: json["categoryId"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "categoryId": categoryId,
  };
}

class PlpState {
  String categoryId;
  String currentSortOption;
  String currentFilters;
  int firstRecNum;
  int lastRecNum;
  int recsPerPage;
  int totalNumRecs;
  String plpSellerName;
  String area;
  String id;

  PlpState({
    required this.categoryId,
    required this.currentSortOption,
    required this.currentFilters,
    required this.firstRecNum,
    required this.lastRecNum,
    required this.recsPerPage,
    required this.totalNumRecs,
    required this.plpSellerName,
    required this.area,
    required this.id,
  });

  factory PlpState.fromJson(Map<String, dynamic> json) => PlpState(
    categoryId: json["categoryId"],
    currentSortOption: json["currentSortOption"],
    currentFilters: json["currentFilters"],
    firstRecNum: json["firstRecNum"],
    lastRecNum: json["lastRecNum"],
    recsPerPage: json["recsPerPage"],
    totalNumRecs: json["totalNumRecs"],
    plpSellerName: json["plpSellerName"],
    area: json["area"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "categoryId": categoryId,
    "currentSortOption": currentSortOption,
    "currentFilters": currentFilters,
    "firstRecNum": firstRecNum,
    "lastRecNum": lastRecNum,
    "recsPerPage": recsPerPage,
    "totalNumRecs": totalNumRecs,
    "plpSellerName": plpSellerName,
    "area": area,
    "id": id,
  };
}

class Record {
  String productId;
  //String skuRepositoryId;
  String productDisplayName;
  //ProductType productType;
  //int? productRatingCount;
  //int? productAvgRating;
  //PromotionalGiftMessage promotionalGiftMessage;
  double listPrice;
  double minimumListPrice;
  double maximumListPrice;
  double promoPrice;
  double minimumPromoPrice;
  double maximumPromoPrice;
  //bool isHybrid;
  //bool isMarketPlace;
  //bool isImportationProduct;
  String brand;
  //Seller seller;
  String category;
  DwPromotionInfo dwPromotionInfo;
  //List<String> categoryBreadCrumbs;
  String? smImage;
  //String? lgImage;
  String? xlImage;
  //GroupType groupType;
  //List<PlpFlag> plpFlags;
  List<VariantsColor> variantsColor;

  Record({
    required this.productId,
    //required this.skuRepositoryId,
    required this.productDisplayName,
    //required this.productType,
    //this.productRatingCount,
    //this.productAvgRating,
    //required this.promotionalGiftMessage,
    required this.listPrice,
    required this.minimumListPrice,
    required this.maximumListPrice,
    required this.promoPrice,
    required this.minimumPromoPrice,
    required this.maximumPromoPrice,
    //required this.isHybrid,
    //required this.isMarketPlace,
    //required this.isImportationProduct,
    required this.brand,
    //required this.seller,
    required this.category,
    required this.dwPromotionInfo,
    //required this.categoryBreadCrumbs,
    this.smImage,
    //this.lgImage,
    this.xlImage,
    //required this.groupType,
    //required this.plpFlags,
    required this.variantsColor,
  });

  factory Record.fromJson(Map<String, dynamic> json) => Record(
    productId: json["productId"],
    //skuRepositoryId: json["skuRepositoryId"],
    productDisplayName: json["productDisplayName"],
    //productType: productTypeValues.map[json["productType"]]!,
    //productRatingCount: json["productRatingCount"],
    //productAvgRating: json["productAvgRating"],
    //promotionalGiftMessage: promotionalGiftMessageValues.map[json["promotionalGiftMessage"]]!,
    listPrice: json["listPrice"],
    minimumListPrice: json["minimumListPrice"],
    maximumListPrice: json["maximumListPrice"],
    promoPrice: json["promoPrice"]?.toDouble(),
    minimumPromoPrice: json["minimumPromoPrice"]?.toDouble(),
    maximumPromoPrice: json["maximumPromoPrice"]?.toDouble(),
    //isHybrid: json["isHybrid"],
    //isMarketPlace: json["isMarketPlace"],
    //isImportationProduct: json["isImportationProduct"],
    brand: json["brand"],
    //seller: sellerValues.map[json["seller"]]!,
    category: json["category"],
    dwPromotionInfo: DwPromotionInfo.fromJson(json["dwPromotionInfo"]),
    //categoryBreadCrumbs: List<String>.from(json["categoryBreadCrumbs"].map((x) => x)),
    smImage: json["smImage"],
    //lgImage: json["lgImage"],
    xlImage: json["xlImage"],
    //groupType: groupTypeValues.map[json["groupType"]]!,
    //plpFlags: List<PlpFlag>.from(json["plpFlags"].map((x) => PlpFlag.fromJson(x))),
    variantsColor: List<VariantsColor>.from(json["variantsColor"].map((x) => VariantsColor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "productId": productId,
    //"skuRepositoryId": skuRepositoryId,
    "productDisplayName": productDisplayName,
    //"productType": productTypeValues.reverse[productType],
    //"productRatingCount": productRatingCount,
    //"productAvgRating": productAvgRating,
    //"promotionalGiftMessage": promotionalGiftMessageValues.reverse[promotionalGiftMessage],
    "listPrice": listPrice,
    "minimumListPrice": minimumListPrice,
    "maximumListPrice": maximumListPrice,
    "promoPrice": promoPrice,
    "minimumPromoPrice": minimumPromoPrice,
    "maximumPromoPrice": maximumPromoPrice,
    //"isHybrid": isHybrid,
    //"isMarketPlace": isMarketPlace,
    //"isImportationProduct": isImportationProduct,
    "brand": brand,
    //"seller": sellerValues.reverse[seller],
    "category": category,
    "dwPromotionInfo": dwPromotionInfo.toJson(),
    //"categoryBreadCrumbs": List<dynamic>.from(categoryBreadCrumbs.map((x) => x)),
    "smImage": smImage,
    //"lgImage": lgImage,
    "xlImage": xlImage,
    //"groupType": groupTypeValues.reverse[groupType],
    //"plpFlags": List<dynamic>.from(plpFlags.map((x) => x.toJson())),
    "variantsColor": List<dynamic>.from(variantsColor.map((x) => x.toJson())),
  };
}

class DwPromotionInfo {
  String dwToolTipInfo;
  DWPromoDescription dWPromoDescription;

  DwPromotionInfo({
    required this.dwToolTipInfo,
    required this.dWPromoDescription,
  });

  factory DwPromotionInfo.fromJson(Map<String, dynamic> json) => DwPromotionInfo(
    dwToolTipInfo: json["dwToolTipInfo"],
    dWPromoDescription: dwPromoDescriptionValues.map[json["dWPromoDescription"]]!,
  );

  Map<String, dynamic> toJson() => {
    "dwToolTipInfo": dwToolTipInfo,
    "dWPromoDescription": dwPromoDescriptionValues.reverse[dWPromoDescription],
  };
}

enum DWPromoDescription {
  EMPTY,
  Y_O_RECIBE_STRONG_20_STRONG_EN_MONEDERO,
  Y_O_RECIBE_STRONG_25_STRONG_EN_MONEDERO,
  Y_O_RECIBE_STRONG_30_STRONG_EN_MONEDERO,
  Y_O_RECIBE_STRONG_45_STRONG_EN_MONEDERO
}

final dwPromoDescriptionValues = EnumValues({
  "": DWPromoDescription.EMPTY,
  "Y/o recibe <strong>20</strong>% en monedero": DWPromoDescription.Y_O_RECIBE_STRONG_20_STRONG_EN_MONEDERO,
  "Y/o recibe <strong>25</strong>% en monedero": DWPromoDescription.Y_O_RECIBE_STRONG_25_STRONG_EN_MONEDERO,
  "Y/o recibe <strong>30</strong>% en monedero": DWPromoDescription.Y_O_RECIBE_STRONG_30_STRONG_EN_MONEDERO,
  "Y/o recibe <strong>45</strong>% en monedero": DWPromoDescription.Y_O_RECIBE_STRONG_45_STRONG_EN_MONEDERO
});

enum GroupType {
  NOT_SPECIFIED
}

final groupTypeValues = EnumValues({
  "Not Specified": GroupType.NOT_SPECIFIED
});

class PlpFlag {
  String flagId;
  String flagMessage;

  PlpFlag({
    required this.flagId,
    required this.flagMessage,
  });

  factory PlpFlag.fromJson(Map<String, dynamic> json) => PlpFlag(
    flagId: json["flagId"],
    flagMessage: json["flagMessage"],
  );

  Map<String, dynamic> toJson() => {
    "flagId": flagId,
    "flagMessage": flagMessage,
  };
}

enum ProductType {
  BIG_TICKET,
  SOFT_LINE
}

final productTypeValues = EnumValues({
  "Big Ticket": ProductType.BIG_TICKET,
  "Soft Line": ProductType.SOFT_LINE
});

enum PromotionalGiftMessage {
  NA
}

final promotionalGiftMessageValues = EnumValues({
  "NA": PromotionalGiftMessage.NA
});

enum Seller {
  LIVERPOOL
}

final sellerValues = EnumValues({
  "liverpool": Seller.LIVERPOOL
});

class VariantsColor {
  String colorName;
  String colorHex;
  String colorImageUrl;
  String colorMainUrl;
  String skuId;

  VariantsColor({
    required this.colorName,
    required this.colorHex,
    required this.colorImageUrl,
    required this.colorMainUrl,
    required this.skuId,
  });

  factory VariantsColor.fromJson(Map<String, dynamic> json) => VariantsColor(
    colorName: json["colorName"],
    colorHex: json["colorHex"],
    colorImageUrl: json["colorImageURL"],
    colorMainUrl: json["colorMainURL"],
    skuId: json["skuId"],
  );

  Map<String, dynamic> toJson() => {
    "colorName": colorName,
    "colorHex": colorHex,
    "colorImageURL": colorImageUrl,
    "colorMainURL": colorMainUrl,
    "skuId": skuId,
  };
}

class RefinementGroup {
  String name;
  List<Refinement> refinement;
  bool multiSelect;
  String dimensionName;
  bool moreRefinements;

  RefinementGroup({
    required this.name,
    required this.refinement,
    required this.multiSelect,
    required this.dimensionName,
    required this.moreRefinements,
  });

  factory RefinementGroup.fromJson(Map<String, dynamic> json) => RefinementGroup(
    name: json["name"],
    refinement: List<Refinement>.from(json["refinement"].map((x) => Refinement.fromJson(x))),
    multiSelect: json["multiSelect"],
    dimensionName: json["dimensionName"],
    moreRefinements: json["moreRefinements"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "refinement": List<dynamic>.from(refinement.map((x) => x.toJson())),
    "multiSelect": multiSelect,
    "dimensionName": dimensionName,
    "moreRefinements": moreRefinements,
  };
}

class Refinement {
  int count;
  String label;
  String refinementId;
  bool selected;
  Type type;
  //SearchName? searchName;
  //String? high;
  String? low;
  String? colorHex;

  Refinement({
    required this.count,
    required this.label,
    required this.refinementId,
    required this.selected,
    required this.type,
    //this.searchName,
    //this.high,
    this.low,
    this.colorHex,
  });

  factory Refinement.fromJson(Map<String, dynamic> json) => Refinement(
    count: json["count"],
    label: json["label"],
    refinementId: json["refinementId"],
    selected: json["selected"],
    type: typeValues.map[json["type"]]!,
    //searchName: searchNameValues.map[json["searchName"]]!,
    //high: json["high"],
    low: json["low"],
    colorHex: json["colorHex"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "label": label,
    "refinementId": refinementId,
    "selected": selected,
    "type": typeValues.reverse[type],
    //"searchName": searchNameValues.reverse[searchName],
    //"high": high,
    "low": low,
    "colorHex": colorHex,
  };
}

enum SearchName {
  CATEGORIES_1
}

final searchNameValues = EnumValues({
  "categories.1": SearchName.CATEGORIES_1
});

enum Type {
  RANGE,
  VALUE
}

final typeValues = EnumValues({
  "Range": Type.RANGE,
  "Value": Type.VALUE
});

class SortOption {
  String sortBy;
  String label;

  SortOption({
    required this.sortBy,
    required this.label,
  });

  factory SortOption.fromJson(Map<String, dynamic> json) => SortOption(
    sortBy: json["sortBy"],
    label: json["label"],
  );

  Map<String, dynamic> toJson() => {
    "sortBy": sortBy,
    "label": label,
  };
}

class Status {
  String status;
  int statusCode;

  Status({
    required this.status,
    required this.statusCode,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    status: json["status"],
    statusCode: json["statusCode"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "statusCode": statusCode,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
