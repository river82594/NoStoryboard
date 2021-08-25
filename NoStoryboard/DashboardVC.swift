//
//  DashboardVC.swift
//  NoStoryboard
//
//  Created by River Camacho on 8/22/21.
//

import UIKit

class DashboardVC: UIViewController {
    
        let items = ["Acceptable", "Unacceptable", "N/A"]
        
        lazy var segmentedControl1: UISegmentedControl = {
            let control = UISegmentedControl(items: items)
            control.addTarget(self, action: #selector(handleSegmentedControlValueChanged(_:)), for: .valueChanged)
            return control
            
        }()
    
        
        @objc func handleSegmentedControlValueChanged(_ sender: UISegmentedControl) {
            switch sender.selectedSegmentIndex {
            case 0:
                segmentedControl1.selectedSegmentTintColor = UIColor(red: 0, green: 0.5882, blue: 0, alpha: 1)
                segmentedControl1.setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
                
            case 1:
                segmentedControl1.selectedSegmentTintColor = UIColor(red: 0.7373, green: 0, blue: 0.0118, alpha: 1)
               
                segmentedControl1.setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
               
            case 2:
                segmentedControl1.selectedSegmentTintColor = .systemGray
               
            default:
                segmentedControl1.selectedSegmentTintColor = .systemGray
            
            }
            
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            setupViews()
            
        }

        
        func setupViews() {
            view.backgroundColor = .white
            
            view.addSubview(segmentedControl1)
            
            
            
            segmentedControl1.translatesAutoresizingMaskIntoConstraints = false


            let constraints = [
                segmentedControl1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                segmentedControl1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                segmentedControl1.widthAnchor.constraint(equalToConstant: 325),
                segmentedControl1.heightAnchor.constraint(equalToConstant: 30)
            ]

            NSLayoutConstraint.activate(constraints)
        }

    }

