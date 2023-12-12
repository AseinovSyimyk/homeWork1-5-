//
//  MainViewController.swift
//  homeWork1(5)
//
//  Created by User on 12/12/23.
//

import UIKit

class MainViewController: UIViewController {

    // Вызывается, когда загружается иерархия представлений, но представление еще не отобразилось на экране.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MainViewController: View did load")

        // Настройка заголовка представления и цвета фона.
        title = "Main Screen"
        view.backgroundColor = .lightGray

        // Создание кнопки для перехода ко второму экрану.
        let goToSecondScreenButton = UIButton(type: .system)
        goToSecondScreenButton.setTitle("Go to Second Screen", for: .normal)
        // Добавление обработчика нажатия на кнопку.
        goToSecondScreenButton.addTarget(self, action: #selector(goToSecondScreen), for: .touchUpInside)

        // Добавление кнопки к представлению и настройка констрейнтов.
        view.addSubview(goToSecondScreenButton)
        goToSecondScreenButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            goToSecondScreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToSecondScreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    // Метод, вызываемый при нажатии кнопки "Go to Second Screen".
    @objc func goToSecondScreen() {
        // Создание экземпляра SecondViewController.
        let secondViewController = SecondViewController()
        // Переход ко второму экрану с использованием navigationController.
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
