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
        setupGreetings()
    }
    
    override func loadView() {
        super.loadView()
        view = greetingsView
    }
    
    private func setupGreetings() {
        let hour = Calendar.current.component(.hour, from: Date())
        
        switch hour {
        case 0..<6:
            greetingsView.setup(greetings: "Ainda está acordado?", backgroundColor: .darkGray, textColor: .white)
        case 6..<12:
            greetingsView.setup(greetings: "Bom Dia", backgroundColor: .yellow)
        case 12..<18:
            greetingsView.setup(greetings: "Boa Tarde", backgroundColor: .green)
        case 18..<24:
            greetingsView.setup(greetings: "Boa Noite", backgroundColor: .black, textColor: .white)
        default:
            break
        }
    }
}
