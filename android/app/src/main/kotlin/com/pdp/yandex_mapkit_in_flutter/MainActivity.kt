package com.pdp.yandex_mapkit_in_flutter

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;
import com.yandex.mapkit.MapKitFactory;

public class MainActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        MapKitFactory.setApiKey("f5ef39f2-e42c-483c-ae64-5e77e79dd2d5"); // Your generated API key
        super.configureFlutterEngine(flutterEngine);
    }
}
