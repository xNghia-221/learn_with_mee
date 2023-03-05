SHELL=/bin/bash

.PHONY: $(shell egrep -oh ^[a-zA-Z0-9][a-zA-Z0-9_-]+: $(MAKEFILE_LIST) | sed 's/://')

BUILD_TYPE:=apk
build:
	flutter clean
	flutter pub get
	flutter build $(BUILD_TYPE)

freezed:
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter packages pub run build_runner build


br: freezed

fluttergen:
	fluttergen -c pubspec.yaml

.PHONY: build-android-debug-dev
build-android-debug-dev:
	flutter build apk --debug --flavor development --dart-define=FLAVOR=development --target lib/main.dart

.PHONY: build-android-release-dev
build-android-release-dev:
	flutter build apk --release --flavor development --dart-define=FLAVOR=development --target lib/main.dart

.PHONY: build-android-debug-prod
build-android-debug-prod:
	flutter build apk --debug --flavor production --dart-define=FLAVOR=production --target lib/main.dart

.PHONY: build-android-release-prod
build-android-release-prod:
	flutter build apk --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart

.PHONY: build-android-bundle
build-android-bundle:
	flutter clean
	flutter pub get
	flutter build apk --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart
	flutter build appbundle --flavor production --dart-define=FLAVOR=production --target lib/main.dart

.PHONY: build-ipa
build-ipa:
	flutter clean
	flutter pub get
	flutter build ios --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart
	flutter build ipa --release --export-options-plist=ios/ExportOptions.plist --flavor Production --dart-define=FLAVOR=production --target lib/main.dart

.PHONY: distribute-android-dev
distribute-android-dev:
	flutter clean
	flutter pub get
	flutter build apk --release --flavor development --dart-define=FLAVOR=development --target lib/main.dart
	cd android && fastlane android android_development

.PHONY: distribute-android-prod
distribute-android-prod:
	flutter clean
	flutter pub get
	flutter build apk --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart
	cd android && fastlane android android_production

.PHONY: distribute-ios-testflight-dev
distribute-ios-testflight-dev:
	flutter clean
	flutter pub get
	flutter build ios --release --flavor development --dart-define=FLAVOR=development --target lib/main.dart
	cd ios && fastlane ios ios_testflight_development

.PHONY: distribute-ios-testflight-prod
distribute-ios-testflight-prod:
	flutter clean
	flutter pub get
	flutter build ios --release --flavor production --dart-define=FLAVOR=production --target lib/main.dart
	cd ios && fastlane ios ios_testflight_production