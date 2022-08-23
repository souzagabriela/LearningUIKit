//
//  IntroViewController.swift
//  Projeto Base 01
//
//  Created by Gabriela Souza Batista on 22/08/22.
//

import UIKit

// final class: exclusiva
final class IntroViewController: UIViewController {
    
    private var customView: IntroView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()
    }
    
    private func buildView() {
        // chamar view variavel local e receber a construçao da tela nova
        view = IntroView()
        customView = view as? IntroView
    }
    
}
