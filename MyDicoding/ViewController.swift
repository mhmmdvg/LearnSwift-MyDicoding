//
//  ViewController.swift
//  MyDicoding
//
//  Created by Muhammad Vikri on 28/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var newButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Mengubah teks welcome
        job.text = "iOS Developer"
        
        // Mengambil teks welcome
        print(job.text ?? "Tidak mendapatkan teks")
        
        // MARK: Mengubah teks newButton
        newButton.setTitle("Follow", for: .normal)
        
        // MARK: Mengambil teks newButton
        print(newButton.titleLabel?.text ?? "Tidak mendapatkan teks")
    }
    
    // MARK: Variabel sementara untuk menampung total Follow
    var totalFollow = 0;
    
    // MARK: Ketika user menekan tombol Follow maka menjalankan function ini
    @IBAction func follow(_ sender: UIButton) {
        
        // MARK: Setiap kali klik maka akan bertambah 1 Follow-nya
        totalFollow += 1
        newButton.setTitle("Follow \(totalFollow)", for: .normal)
    }
    

}

