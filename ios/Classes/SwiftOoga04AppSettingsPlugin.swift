import Flutter
import UIKit

public class SwiftOoga04AppSettingsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ooga04/app_settings", binaryMessenger: registrar.messenger())
    let instance = SwiftOoga04AppSettingsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "notification" {
      if let url = URL(string: UIApplication.openSettingsURLString) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
      }
      result("open app setting")
    }

  }
}
