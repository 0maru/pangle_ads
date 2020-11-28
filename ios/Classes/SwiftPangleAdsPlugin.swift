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
    let controller = FLTPangleAdController.shared
    let args = call.arguments as? [String: Any?] ?? [:]

    switch call.method {
      case "init":
        controller.initialize(args)
        result(nil)
      case "loadRewardAd":
        controller.loadRewardAd(args, result: result)
        result(nil)
      case "showRewardAd":
        controller.showRewardAd(args, result: result)
        result(nil)
      default:
        result(FlutterMethodNotImplemented)
    }
  }
}
