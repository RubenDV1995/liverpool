class Product {
  Status? status;
  String? pageType;
  PlpResults? plpResults;
  String? nullSearch;

  Product({
    this.status,
    this.pageType,
    this.plpResults,
    this.nullSearch,
  });

  Product.fromJson(Map<String, dynamic> json) {
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    pageType = json['pageType'];
    plpResults = json['plpResults'] != null
        ? PlpResults.fromJson(json['plpResults'])
        : null;
    nullSearch = json['nullSearch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status!.toJson();
    }
    data['pageType'] = pageType;
    if (plpResults != null) {
      data['plpResults'] = plpResults!.toJson();
    }
    data['nullSearch'] = nullSearch;
    return data;
  }
}

class Status {
  String? status;
  int? statusCode;

  Status({this.status, this.statusCode});

  Status.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['statusCode'] = statusCode;
    return data;
  }
}

class PlpResults {
  String? label;
  PlpState? plpState;
  Navigation? navigation;

  PlpResults({
    this.label,
    this.plpState,
    this.navigation,
  });

  PlpResults.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    plpState =
        json['plpState'] != null ? PlpState.fromJson(json['plpState']) : null;
    navigation = json['navigation'] != null
        ? Navigation.fromJson(json['navigation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    if (plpState != null) {
      data['plpState'] = plpState!.toJson();
    }

    if (navigation != null) {
      data['navigation'] = navigation!.toJson();
    }

    return data;
  }
}

class PlpState {
  String? categoryId;
  String? currentSortOption;
  String? currentFilters;
  int? firstRecNum;
  int? lastRecNum;
  int? recsPerPage;
  int? totalNumRecs;
  String? originalSearchTerm;
  String? area;
  String? id;

  PlpState(
      {this.categoryId,
      this.currentSortOption,
      this.currentFilters,
      this.firstRecNum,
      this.lastRecNum,
      this.recsPerPage,
      this.totalNumRecs,
      this.originalSearchTerm,
      this.area,
      this.id});

  PlpState.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    currentSortOption = json['currentSortOption'];
    currentFilters = json['currentFilters'];
    firstRecNum = json['firstRecNum'];
    lastRecNum = json['lastRecNum'];
    recsPerPage = json['recsPerPage'];
    totalNumRecs = json['totalNumRecs'];
    originalSearchTerm = json['originalSearchTerm'];
    area = json['area'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryId'] = categoryId;
    data['currentSortOption'] = currentSortOption;
    data['currentFilters'] = currentFilters;
    data['firstRecNum'] = firstRecNum;
    data['lastRecNum'] = lastRecNum;
    data['recsPerPage'] = recsPerPage;
    data['totalNumRecs'] = totalNumRecs;
    data['originalSearchTerm'] = originalSearchTerm;
    data['area'] = area;
    data['id'] = id;
    return data;
  }
}

class Navigation {
  List<Current>? current;

  Navigation({
    this.current,
  });

  Navigation.fromJson(Map<String, dynamic> json) {
    if (json['current'] != null) {
      current = <Current>[];
      json['current'].forEach((v) {
        current!.add(Current.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (current != null) {
      data['current'] = current!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Current {
  String? label;
  String? categoryId;

  Current({this.label, this.categoryId});

  Current.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    categoryId = json['categoryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['categoryId'] = categoryId;
    return data;
  }
}
