//
//  ViewController.swift
//  FMSSHomework1
//
//  Created by Tolga on 6.09.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var petAgeLabel: UILabel!
    @IBOutlet weak var petNameLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    
   
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plusButton.layer.masksToBounds = true
        plusButton.layer.cornerRadius = 20
        
    }
    
    //MARK: - Helper Functions
    
    /*
    Function that opens the new pet adding page when the plus button on the screen is tapped.
     */
    @IBAction func didPlusButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddPetViewController") as! AddPetViewController
        vc.completionHandler = { name, age in
            self.petNameLabel.text = name
            self.petAgeLabel.text = age
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}

