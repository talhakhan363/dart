void main() {
  BaseApiService apiService = ApiService(
    "12345",
  ); // creating object of subclass.
  Map<String, String> data = {
    // data to be sent to API.
    "email": "albert123@gmail.com",
    "password": "albert@123",
  };
  apiService.postApi(data);
  apiService.getApi(data);
}

// abstract class cannnot be initialized.
// we can't create object of abstract class.
// constructor here are used by subclasses via the super() call.
// abstract class can have abstract methods (without body) and concrete methods (with body).
// abstract methods must be implemented by the subclass and concrete methods can be used as it is or overridden.
// abstract class is used to define a common interface for a group of related classes.
/* the difference between abstract class and interface is that abstract class can have both abstract 
   and concrete methods, whereas interface can only have abstract methods. */

abstract class BaseApiService {
  String apiUrl; // property of abstract class.

  // abstract class can have constructor.
  BaseApiService(this.apiUrl) {
    print("BaseApiService Constructor");
  }

  void postApi(var postData); // abstract method without body.
  void getApi(var getData) {
    // concrete method with body.
    print("Fetching data from API");
    print(getData);
  }
}

// subclass extending abstract class.
class ApiService extends BaseApiService {
  String? login;
  ApiService(this.login) : super("https://example.com/api") {
    print("ApiService Constructor");
    print("API URL: $apiUrl"); // accessing property of abstract class.
    print("Login: $login"); // accessing property of subclass.
  }

  @override
  void postApi(var postData) {
    print("Posting data to API");
  }

  @override
  getApi(var getData) {
    // overriding concrete method.
    print("Getting data from API in ApiService");
    print(getData["email"]);
    print(getData["password"]);
  }
}
