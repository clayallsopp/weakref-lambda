weakref-lambda
==============

Crash on rubymotion using WeakRefs

## Repro Steps

1. `rake`
2. `AppDelegate.instance` or `UIApplication.sharedApplication.delegate` -> crash
3. Swap comment blocks in [app_delegate.rb](app/app_delegate.rb) to make it work
