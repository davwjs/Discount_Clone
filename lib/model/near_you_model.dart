class NearYouModel {
  String name;
  String percentage;
  String image;
  String location;
  String distance;
  String hour;
  var discountImage;
  var discountTitle;
  var discountDetail;
  String qrCode;

  NearYouModel({
    this.name,
    this.image,
    this.location,
    this.percentage,
    this.distance,
    this.hour,
    this.discountImage,
    this.discountDetail,
    this.discountTitle,
    this.qrCode,
  });
}
