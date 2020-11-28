//
//  FLTPangleAdController.swift
//  pangle_ads
//
//  Created by 0maru on 2020/11/27.
//

import Foundation
import BUAdSDK

class FLTPangleAdController: NSObject {
  static let shared = FLTPangleAdController()
  let model = BURewardedVideoModel()
  
  public func initialize(_  args: [String: Any?]) {
  }
  
  public func loadRewardAd(_ args: [String: Any?], result: @escaping FlutterResult) {
    // 動画リワード読み込み
    
  }
  
  public func showRewardAd(_ args: [String: Any?], result: @escaping FlutterResult) {
    // 動画リワード再生
  }
  
  

}
