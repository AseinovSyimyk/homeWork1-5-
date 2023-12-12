//
//  ViewController.swift
//  homeWork1(5)
//
//  Created by User on 12/12/23.
//

import UIKit

class ViewController: UIViewController {

    // Вызывается, когда загружается иерархия представлений, но представление еще не отобразилось на экране.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController: View did load")
    }

    // Вызывается перед тем, как представление станет видимым на экране.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController: View will appear")
    }

    // Вызывается после того, как представление появилось на экране.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController: View did appear")
    }

    // Вызывается перед тем, как представление исчезнет с экрана.
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController: View will disappear")
    }

    // Вызывается после того, как представление исчезло с экрана.
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController: View did disappear")
    }
    
}
