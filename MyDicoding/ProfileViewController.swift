//
//  ViewController.swift
//  MyDicoding
//
//  Created by Muhammad Vikri on 28/08/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var followedButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCircleImageView()
        
        // Mengubah teks welcome
        job.text = "iOS Developer"
        
        // Mengambil teks welcome
        print(job.text ?? "Tidak mendapatkan teks")
        
        // Mengubah teks button
        followedButton.setTitle("Follow", for: .normal)
        
        // Mengambil teks button
        print(followedButton.titleLabel?.text ?? "Tidak mendapatkan teks")
        
    
  
    }
    
    private var isFollow = false
   
    @IBAction func setFollowed(_ sender: UIButton) {
        isFollow = !isFollow
        followedButton.setTitle( isFollow ? "Following" : "Follow" , for: .normal)
    }
    
    private func setupCircleImageView() {
        // Menentukan lebar dari border/garis batas.
        profilePicture.layer.borderWidth = 1
        
        // Menentukan apakah perlu melakukan masking atau tidak.
        profilePicture.layer.masksToBounds = false
        
        // Menentukan warna border.
        profilePicture.layer.backgroundColor = UIColor.black.cgColor
        
        // Menentukan apakah sudutnya akan membulat (rounded) atau tidak.
        profilePicture.layer.cornerRadius = profilePicture.frame.height / 2
        
        // Menentukan apakah subview terbatas pada batas tampilan atau tidak.
        profilePicture.clipsToBounds = true
    }
    

}

