//
//  replicateVC.swift
//  NoStoryboard
//
//  Created by River Camacho on 8/22/21.
//

import UIKit

class replicateVC: UIViewController {
    
//    Establish TableView ViewController
    let tableView = UITableView()
//    Establish an empty array that the data can go in
    var data: [tableLabel] = []
//    Establish variable for Title Label
    var TitleLabel = UILabel()
    
    var sectionData = UITextField()
    
    
    struct Cells {
        static let stringCell = "StringCell"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Cooler Facility Risk Assessment"
        data = fetchData()
        configureTableView()
        navigationController?.navigationBar.prefersLargeTitles = true
        

    }
    
    func configureTableView() {
        tableView.isScrollEnabled = false
        tableView.allowsSelection = true
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 70
//        Register Cells
        tableView.register(StringCell.self, forCellReuseIdentifier: "StringCell")
//        Set Constraints
        tableView.pin(to: view)
        
        
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    
}

//TableView

extension replicateVC: UITableViewDelegate, UITableViewDataSource {
    
//    How many sections?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
//    How many cells?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
        
    }
//    What cells am I showing?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        Remove separator lines from tableview
        tableView.separatorStyle = .none
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.stringCell) as! StringCell
        
        let string = data[indexPath.row]
        cell.set(string: string)
        
        cell.backgroundColor = UIColor.systemGray4
        
        if (indexPath.row == 0) {
            cell.backgroundColor = UIColor(red: 0.6392, green: 0.6392, blue: 0.6392, alpha: 1)
            cell.stringTitleLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
        if (indexPath.row % 2 == 1) { cell.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        }
        return cell
    }




//    Did user tap cell?
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        print("cell tapped")
    }
}


// List of Data
extension replicateVC {
func fetchData() -> [tableLabel] {
    let string1 = tableLabel(title: "Areas of observation - please note concern(s) if any, as well as corrective actions(s)", comment: UIImage(), control: UISegmentedControl())
    let string2 = tableLabel(title: "Surrounding Areas / Adjacent Activities", comment: UIImage(named: "comment")!, control: UISegmentedControl() )
    let string3 = tableLabel(title: "Building Grounds", comment: UIImage(named: "comment")!, control: UISegmentedControl())
    let string4 = tableLabel(title: "Building Structure", comment: UIImage(named: "comment")!, control: UISegmentedControl())
    let string5 = tableLabel(title: "Water System", comment: UIImage(named: "comment")!, control: UISegmentedControl())
    let string6 = tableLabel(title: "Other", comment: UIImage(named: "comment")!, control: UISegmentedControl())

    return [string1, string2, string3, string4, string5, string6]

 }
}






//        TextField
//        let txtField = UITextField(frame: CGRect(x: 10.0, y: 200.0, width: UIScreen.main.bounds.size.width - 20.0, height: 50.0))
//        txtField.backgroundColor = .white
//        txtField.layer.borderWidth = 1.5
//        txtField.layer.cornerRadius = 9
//
//        view.addSubview(txtField)
