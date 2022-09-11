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
        handleSaveButtonClicked(name: petNameLabel.text, age: petAgeLabel.text)
    }
    
    private func handleSaveButtonClicked(name: String?, age: String?) {
        guard let name = name, !name.isEmpty else {
            showAlert(withMessage: "Please enter your pet name.")
            return
        }
        guard let age = age, !age.isEmpty else {
            showAlert(withMessage: "Please enter your pet age.")
            return
        }
        
        completionHandler?(name, age)
        dismiss(animated: true, completion: nil)
    }
    
    private func showAlert(withMessage message: String?) {
        guard let message = message else {return}
        let alert = UIAlertController(title: "Warning", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
    }
    
}
