@echo off
call fvm flutter clean
call fvm flutter pub get
call fvm flutter packages pub run build_runner build --delete-conflicting-outputs