//
//  PersonalViewController.swift
//  2FIT
//
//  Created by doniyor normuxammedov on 01/04/24.
//

import UIKit

class PersonalViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var stackview: UIStackView!
    @IBOutlet weak var stackview3: UIStackView!
    @IBOutlet weak var stackview2: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height/2
        stackview.layer.cornerRadius = 12
        stackview2.layer.cornerRadius = 12
        stackview3.layer.cornerRadius = 12
        
    }
    


}
