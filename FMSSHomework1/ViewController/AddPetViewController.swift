//
//  AddPetViewController.swift
//  FMSSHomework1
//
//  Created by Tolga on 10.09.2022.
//

import UIKit

class AddPetViewController: UIViewController {

    @IBOutlet weak var petNameLabel: UITextField!
    @IBOutlet weak var petAgeLabel: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    public var completionHandler: ((String?, String?) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didSaveButtonTapped(_ sender: Any) {
      
        
        completionHandler?(petNameLabel.text, petAgeLabel.text)
        
        dismiss(animated: true, completion: nil)
    }
    
}
