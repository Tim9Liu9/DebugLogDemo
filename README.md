DebugLogDemo
============



NSLog相关debug信息，如果在DEBUG状态下就log，非就不执行。拦截UIVIewConroller的viewDidLoad方法，log出是哪个UIViewConroller的viewDidLoad方法，方便调试。
* 可以显示是哪个类，哪个方法，第几行log的。
* UIViewController+Debug.m 里面，可以自己设置要拦截哪个方法，本人目前拦截的是：UIViewConroller的viewDidLoad方法。

---
## License

DebugLog is available under the MIT license. See the LICENSE file for more info.

