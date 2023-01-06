class PaginationModel {
  int? count;
  int? total;
  int? perPage;
  int? currentPage;
  int? totalPages;

  PaginationModel(
      {this.count,
      this.total,
      this.perPage,
      this.currentPage,
      this.totalPages});

  factory PaginationModel.fromMap(Map<String, dynamic> map) {
    return map != null
        ? PaginationModel(
            count: map['count'] as int,
            total: map['total'] as int,
            perPage: map['perPage'] as int,
            currentPage: map['currentPage'] as int,
            totalPages: map['totalPages'] as int,
          )
        : PaginationModel();
  }

  Map<String, dynamic> toMap() => {
        'count': count,
        'total': total,
        'perPage': perPage,
        'currentPage': currentPage,
        'totalPages': totalPages,
      };
}
