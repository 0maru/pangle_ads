import Flutter
import UIKit

public class SwiftPangleAdsPlugin: NSObject, FlutterPlugin {
  private let methodChannel: FlutterMethodChannel
  
  // init
  init(_ methodChannel: FlutterMethodChannel) {
    self.methodChannel = methodChannel
  }
  
  // register
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "0maru/pangle_ads", binaryMessenger: registrar.messenger())
    let instance = SwiftPangleAdsPlugin(channel)
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
  
  // method handler
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let args = call.arguments as? [String: Any?] ?? [:]
    let instance = FLTPangleAdController.shared
    
    switch call.method {
    case "init":
      instance.initialize(args)
      result(nil)
    case "loadRewardAd":
      instance.loadRewardAd()
    case "showRewardAd":
      instance.showRewardAd()
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}


