package com.learn_with_mee

import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.embedding.engine.FlutterEngine
import android.content.Context
import android.content.res.Configuration
import android.os.Build
import android.os.Environment
import io.flutter.plugin.common.MethodCall

class MainActivity : FlutterActivity() {
    companion object {
        private const val METHOD_GET_FLAVOR = "GET_FLAVOR"
        private const val CHANNEL = "com.learn_with_mee/native_channel"
    }

    private lateinit var channel: MethodChannel

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
        channel.setMethodCallHandler { methodCall: MethodCall, result: MethodChannel.Result ->
            if (methodCall.method == METHOD_GET_FLAVOR) {
                result.success(BuildConfig.FLAVOR)
            } else {
                result.notImplemented()
            }
        }
    }
}
