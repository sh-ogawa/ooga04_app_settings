package ooga.sh4.jp.ooga04_app_settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** Ooga04AppSettingsPlugin */
public class Ooga04AppSettingsPlugin implements MethodCallHandler {

  private static Context context;

  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "ooga04/app_settings");
    channel.setMethodCallHandler(new Ooga04AppSettingsPlugin());

    context = registrar.context();
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("notification")) {
      Intent intent = new Intent(Settings.ACTION_APP_NOTIFICATION_SETTINGS);
      intent.putExtra(Settings.EXTRA_APP_PACKAGE, context.getPackageName());

      context.startActivity(intent);

      result.success("Android " + android.os.Build.VERSION.RELEASE);
    } else {
      result.notImplemented();
    }
  }
}
