//
//  WorkoutListViewController.swift
//  2FIT
//
//  Created by doniyor normuxammedov on 08/04/24.
//

import UIKit

class WorkoutListViewController: UIViewController {

    @IBOutlet weak var segmentUI: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    var datalist = [ExerciseContentData(sectionType: "", images:[ "Image1 Image2","Image3","Image4"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.reloadData()
//        tableView.sectionHeaderTopPadding = 0
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
}


extension WorkoutListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",for: indexPath) as! TableViewCell
        cell.collectionView.tag = indexPath.section
        return cell
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
    
    
}
