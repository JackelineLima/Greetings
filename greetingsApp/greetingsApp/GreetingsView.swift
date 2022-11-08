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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(greetingsLabel)
        
        NSLayoutConstraint.activate([
            greetingsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            greetingsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    func setup(greetings: String, backgroundColor: UIColor, textColor: UIColor = .black) {
        greetingsLabel.text = greetings
        greetingsLabel.textColor = textColor
        self.backgroundColor = backgroundColor
    }
}
