//
//  AppDelegate.swift
//  homeWork1(5)
//
//  Created by User on 12/12/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // Объявление окна приложения
    var window: UIWindow?

    // Вызывается после того, как приложение завершило свой запуск.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("AppDelegate: Application did finish launching")

        // Создание и настройка окна приложения
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white

        // Создание и настройка основного контроллера (MainViewController)
        let mainViewController = MainViewController()

        // Создание UINavigationController с MainViewController в качестве корневого контроллера
        let navigationController = UINavigationController(rootViewController: mainViewController)

        // Установка UINavigationController в качестве корневого контроллера окна
        window?.rootViewController = navigationController

        // Сделать окно видимым
        window?.makeKeyAndVisible()

        return true
    }
}





    // Другие методы жизненного цикла AppDelegate
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }




