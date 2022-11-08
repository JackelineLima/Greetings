//
//  GreetingsView.swift
//  greetingsApp
//
//  Created by Jackeline Pires De Lima on 08/11/22.
//

import UIKit

class GreetingsView: UIView {
    
    private lazy var greetingsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupGreetings()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGreetings() {
        let hour = Calendar.current.component(.hour, from: Date())
        
        switch hour {
        case 0..<6:
            greetingsLabel.text = "Ainda está acordado?"
            greetingsLabel.textColor = .white
            backgroundColor = .darkGray
        case 6..<12:
            greetingsLabel.text = "Bom Dia"
            greetingsLabel.textColor = .black
            backgroundColor = .yellow
        case 12..<18:
            greetingsLabel.text = "Boa Tarde"
            greetingsLabel.textColor = .black
            backgroundColor = .green
        case 18..<24:
            greetingsLabel.text = "Boa Noite"
            greetingsLabel.textColor = .white
            backgroundColor = .black
        default:
            break
        }
    }
    
    private func setupView() {
        backgroundColor = .white
        addSubview(greetingsLabel)
        
        NSLayoutConstraint.activate([
            greetingsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            greetingsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
