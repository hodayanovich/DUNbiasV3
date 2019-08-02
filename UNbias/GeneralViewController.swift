//
//  GeneralViewController.swift
//  UNbias
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class GeneralViewController: UIViewController {

    @IBAction func videoButtonTapped(_ sender: UIButton) {
        showVideoVC(for: "https://www.youtube.com/watch?v=hDd3bzA7450")
    }
  
    @IBAction func additionalButtonTapped(_ sender: UIButton) {
        showAdditionalBottonVC(for: "https://lovehasnolabels.com/")
    }
    
 
    @IBAction func startJournallingGeneral(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func showVideoVC(for url: String) {
        guard let url = URL(string: url) else {
            //alert
            return
        }
        let videoVC = SFSafariViewController(url: url)
        present(videoVC, animated: true)
    }
    
    func showAdditionalBottonVC(for url: String) {
        guard let url = URL(string: url) else {
            //alert
            return
        }
        let additionalButtonVC = SFSafariViewController(url: url)
        present(additionalButtonVC, animated: true)
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
