class ResponseModel {
  bool error;
  String msg;
  String token;
  int userId;
  int profile;

  ResponseModel({this.error, this.msg, this.token, this.userId, this.profile});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    msg = json['msg'];
    token = json['token'];
    userId = json['userId'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    data['token'] = this.token;
    data['userId'] = this.userId;
    data['profile'] = this.profile;
    return data;
  }
}