//
//  PersonalTableViewController.swift
//  2FIT
//
//  Created by doniyor normuxammedov on 01/04/24.
//

import UIKit

class PersonalTableViewController: UITableViewController {

  
    
    @IBOutlet weak var stackview1: UIStackView!
    @IBOutlet weak var stackview2: UIStackView!
    @IBOutlet weak var stackview3: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackview1.layer.cornerRadius = 12
        stackview2.layer.cornerRadius = 12
        stackview3.layer.cornerRadius = 12
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height/2
       
    }

}
