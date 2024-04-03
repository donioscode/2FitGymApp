//
//  ViewController.swift
//  2FIT
//
//  Created by doniyor normuxammedov on 14/02/24.
//

import UIKit

var data = [ExerciseContentData(sectionType: "kiii", images:["Image1","Image2"]),
            ExerciseContentData(sectionType: "New Workouts", images:["Image2","Image3","Image4"])]

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
   override func viewDidLoad() {
        super.viewDidLoad()
       tableView.sectionHeaderTopPadding = 0
      
  }
}


extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    // MARK: - Methods
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        data[section].sectionType
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .clear
        let header = view as! UITableViewHeaderFooterView
            header.textLabel?.textColor = UIColor.white
//        header.textLabel.font = UIFont.boldSystemFontOfSize(18)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell",for: indexPath) as! TableViewCell
        cell.collectionView.tag = indexPath.section
        return cell
    }
    
    
}


