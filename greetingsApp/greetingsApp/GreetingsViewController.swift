//
//  ViewController.swift
//  greetingsApp
//
//  Created by Jackeline Pires De Lima on 08/11/22.
//

import UIKit

class GreetingsViewController: UIViewController {
    
    private let greetingsView = GreetingsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        view = greetingsView
    }
}
