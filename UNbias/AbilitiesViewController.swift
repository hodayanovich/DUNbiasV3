//
//  AbilitiesViewController.swift
//  UNbias
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class AbilitiesViewController: UIViewController {
    

    @IBAction func articleAbilities(_ sender: Any) {
        showSafariVC(for: "https://themighty.com/2019/07/kids-disabilities-belong-with-typical-kids/")
    }
    
    
    @IBAction func videoAbilities(_ sender: Any) {
        showVideoVC(for: "https://www.youtube.com/playlist?list=PLaYgKAZMUNMx9Ca-9Z4NdIIwLCuQ7FJcB")
    }
    
    
    @IBAction func resourceAbilies(_ sender: Any) {
        showResourceVC(for: "https://themighty.com/2017/10/appropriate-vs-inappropriate-comments-about-someones-wheelchair/?utm_source=facebook&utm_medium=NP&utm_campaign=Muscular_Dystrophy_Association&fbclid=IwAR1DsS8L4oHMLZ9Od9XIXHLdMl-jANHHQ8qi_hwhKs-dUT311trN7AFFVoI")
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
