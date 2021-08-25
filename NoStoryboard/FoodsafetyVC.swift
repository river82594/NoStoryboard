//
//  FoodsafetyVC.swift
//  NoStoryboard
//
//  Created by River Camacho on 8/22/21.
//

import UIKit

class FoodsafetyVC: UIViewController {


    
    lazy var buttonOne: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemBlue
        button.setTitle("Cooler Facility Risk Assessment", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowRadius = 20
        button.layer.borderWidth = 2
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.masksToBounds = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(buttonInAction), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        setUpConstraints()
    
        
    }
    
    func setUpConstraints() {
        view.addSubview(buttonOne)
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            buttonOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonOne.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonOne.widthAnchor.constraint(equalToConstant: 350),
            buttonOne.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
        
    }
    

    @objc func buttonInAction() {
    
        navigationController?.pushViewController(replicateVC(), animated: true)
        
    }


}
