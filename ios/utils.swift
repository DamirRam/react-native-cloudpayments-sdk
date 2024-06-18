import Foundation
import Cloudpayments;

struct METHOD_DATA {
  var merchantId: String
  var supportedNetworks: Array<String>
  var countryCode: String
  var currencyCode: String

  init(methodData: Dictionary<String, Any>) {
    self.countryCode = methodData["countryCode"] as! String;
    self.currencyCode = methodData["currencyCode"] as! String;
    self.merchantId = methodData["merchantId"] as! String;
    self.supportedNetworks = methodData["supportedNetworks"] as! Array<String>;
  }
}

struct PARAMETRES_3DS {
  var transactionId: String
  var paReq: String
  var acsUrl: String
  init(parametres3DS: Dictionary<String, String>) {
    self.acsUrl = parametres3DS["acsUrl"]!;
    self.paReq = parametres3DS["paReq"]!;
    self.transactionId = parametres3DS["transactionId"]!;
  }
}
