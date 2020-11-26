import BUAdSDK

class FLTPangleAdController: NSObject {
  static let shared = FLTPangleAdController()
  
  public func initialize(_  args: [String: Any?]) {
    let appId: String = args["appId"] as! String
    let coppa: UInt = args["coppa"] as! UInt
    let isPaidApp: Bool = args["isPaidApp"] as! Bool
    
    BUAdSDKManager.setAppID(appId)
    BUAdSDKManager.setCoppa(coppa)
    BUAdSDKManager.setIsPaidApp(isPaidApp)
  }
  
  public func loadRewardAd() {
    // 動画リワード読み込み
  }
  
  public func showRewardAd() {
    // 動画リワード再生
  }
}
