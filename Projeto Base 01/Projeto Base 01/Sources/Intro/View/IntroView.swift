//
//  IntroView.swift
//  Projeto Base 01
//
//  Created by Gabriela Souza Batista on 22/08/22.
//

import UIKit

class IntroView: UIView {
    
    private lazy var helloLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Start learning"
        label.font = UIFont.systemFont(ofSize: 32)
        label.textColor = UIColor.blue
        
        //desabilitando o auto-resizing para que eu gerencie as constraints
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        
        let label = UILabel()
        label.text = "trying somethin, xiu"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubView()
        constrainNameLabel()
        constrainHelloLabel()
    }
    
    // requer init do storyboard, mas como nao vai ser usado storyboard: fatal error
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //setar constraints
    private func addSubView() {
        addSubview(helloLabel)
        addSubview(nameLabel)
    }
    
    // auto-layout
    private func constrainHelloLabel() {
        // criando variável que determina posiçao da label no centro de X e Y (meio da tela)
        let constraint = [
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        // todos os parametros dentro do array ficam ativados
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    private func constrainNameLabel() {
        let constraint = [
            
            //top and bottom = y / leading or trailing = x
            nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 30),
            nameLabel.centerXAnchor.constraint(equalTo: helloLabel.centerXAnchor)
        ]
        
        constraint.forEach { item in
            item.isActive = true
        }
    }
}
