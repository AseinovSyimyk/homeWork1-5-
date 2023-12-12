//
//  SecondViewController.swift
//  homeWork1(5)
//
//  Created by User on 12/12/23.
//

import UIKit

class SecondViewController: UIViewController {

    // Вызывается, когда загружается иерархия представлений, но представление еще не отобразилось на экране.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondViewController: View did load")

        // Настройка заголовка представления и цвета фона.
        title = "Second Screen"
        view.backgroundColor = .lightGray

        // Создание кнопки для перехода к третьему экрану.
        let goToThirdScreenButton = UIButton(type: .system)
        goToThirdScreenButton.setTitle("Go to Third Screen", for: .normal)
        // Добавление обработчика нажатия на кнопку.
        goToThirdScreenButton.addTarget(self, action: #selector(goToThirdScreen), for: .touchUpInside)

        // Добавление кнопки к представлению и настройка констрейнтов.
        view.addSubview(goToThirdScreenButton)
        goToThirdScreenButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            goToThirdScreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToThirdScreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    // Метод, вызываемый при нажатии кнопки "Go to Third Screen".
    @objc func goToThirdScreen() {
        // Создание экземпляра ThirdViewController.
        let thirdViewController = ThirdViewController()
        // Переход к третьему экрану с использованием navigationController.
        navigationController?.pushViewController(thirdViewController, animated: true)
    }
}
