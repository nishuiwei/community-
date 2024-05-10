import 'package:flutter/material.dart';
import 'routes.dart'; // 导入路由配置文件

// 定义一个自定义的路由观察者类，继承自RouteObserver类
class RouteObservers<R extends Route<dynamic>> extends RouteObserver<R> {
  // 当路由被推入时调用
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    var name = route.settings.name ?? '';
    // 将路由名称添加到历史记录中
    if (name.isNotEmpty) AppPages.history.add(name);
    print('didPush');
    print(AppPages.history); // 打印当前的路由历史记录
  }

  // 当路由被弹出时调用
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    // 从历史记录中移除当前路由名称
    AppPages.history.remove(route.settings.name);
    print('didPop');
    print(AppPages.history); // 打印当前的路由历史记录
  }

  // 当路由被替换时调用
  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      var index = AppPages.history.indexWhere((element) {
        return element == oldRoute?.settings.name;
      });
      var name = newRoute.settings.name ?? '';
      if (name.isNotEmpty) {
        if (index > 0) {
          AppPages.history[index] = name;
        } else {
          AppPages.history.add(name);
        }
      }
    }
    print('didReplace');
    print(AppPages.history); // 打印当前的路由历史记录
  }

  // 当路由被移除时调用
  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    // 从历史记录中移除当前路由名称
    AppPages.history.remove(route.settings.name);
    print('didRemove');
    print(AppPages.history); // 打印当前的路由历史记录
  }

  // 当用户开始手势操作时调用

  // 当用户停止手势操作时调用
}
