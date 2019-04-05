//
//  ViewController.swift
//  MyProfile-Exmaple
//
//  Created by Admin on 03/09/2018.
//  Copyright © 2018 SalehAlDhobaie. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

	@IBOutlet weak var avatar: UIImageView!
	@IBOutlet weak var usernameLabel: UILabel!

	var username: String?

    override func viewDidLoad() {
        super.viewDidLoad()

		usernameLabel.text = username

		let tap = UITapGestureRecognizer(target: self, action: #selector(imageDidTapped))
		avatar.isUserInteractionEnabled = true
		avatar.addGestureRecognizer(tap)
        
        /// Your Code here
        
        /*
         * Extra : you could make your image as rounded ImageView.
         *
         */
        
        /// Your Code here
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    /*
     * TODO: Create a function that receives an action and shows an alert to ask the user if they want to change the profile picture or to cancel the alert. Make sure to call another function to build and present `ImagePickerView`when the user taps on change.
     *
     */
    @objc func imageDidTapped(_ sender: UIImageView) {
        

        
    }
    
    func showImagePicker(_ sender: UIImageView) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }

    // TODO: please write share function will be call when user tap on Share option by calling `UIActivityViewController` class and attach any message with `userImageProfile`
    func shareFunction(_ sender: UIImageView) {

    }
}



/*
 * TODO : Here please add and implement `UIImagePickerControllerDelegate` function in order to update userImageView.
 *
 */

