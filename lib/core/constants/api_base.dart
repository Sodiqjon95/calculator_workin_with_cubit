class ApiBase{
  ApiBase._init();

  static final ApiBase instance = ApiBase._init();

  String apiUrl = 'https://simplebeckend.herokuapp.com';
  String products = "http://localhost:1337/api/products";
}