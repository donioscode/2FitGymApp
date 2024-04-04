//
//  GenderSelectionViewController.swift
//  2FIT
//
//  Created by doniyor normuxammedov on 04/04/24.
//

import UIKit

class GenderSelectionViewController: UIViewController {

    @IBOutlet weak var genderManIcon: UIImageView!
    @IBOutlet weak var genderGirlIcon: UIImageView!
    
    @IBOutlet weak var womanView: UIView!
    
    @IBOutlet weak var manView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        genderManIcon.image = UIImage(named: "man")
        genderGirlIcon.image = UIImage(named: "woman")
        womanView.layer.borderWidth = 2
        womanView.layer.borderColor = UIColor.white.cgColor
        womanView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func continueButtonTapped(_ sender: Any) {
        
        let selectedGender = "man"
           selectGender(selectedGender)

    }
    func selectGender(_ gender: String) {
        switch gender {
        case "man":
            setGenderIcon(to: gender)
        case "woman":
            setGenderIcon(to: gender)
        default:
            print("Invalid gender: \(gender)")
        }
    }
    
    
    func setGenderIcon(to gender: String) {
          switch gender {
          case "man":
              genderManIcon.image = UIImage(named: "man")
          case "woman":
              genderGirlIcon.image = UIImage(named: "woman")
          default:
              print("Invalid gender: \(gender)")
          }
      }


}
