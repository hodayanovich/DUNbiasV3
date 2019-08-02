//
//  GenderViewController.swift
//  UNbias
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class GenderViewController: UIViewController {

    @IBAction func articleGender(_ sender: Any) {
        showSafariVC(for: "https://theconversation.com/us/topics/gender-bias-3490")
    }
    
    
    @IBAction func videoGender(_ sender: Any) {
        showVideoVC(for: "https://www.youtube.com/watch?v=GEqRhNSiseI")
    }
    
    
    @IBAction func resourceGender(_ sender: Any) {
        showResourceVC(for: "https://medium.com/athena-talks/how-to-be-a-great-male-ally-in-the-feminist-movement-843f5ef2b550")
    }
    
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            //alert
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    func showVideoVC(for url: String) {
        guard let url = URL(string: url) else {
            //alert
            return
        }
        let videoVC = SFSafariViewController(url: url)
        present(videoVC, animated: true)
    }
    
    func showResourceVC(for url: String) {
        guard let url = URL(string: url) else {
            //alert
            return
        }
        let resourceVC = SFSafariViewController(url: url)
        present(resourceVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
