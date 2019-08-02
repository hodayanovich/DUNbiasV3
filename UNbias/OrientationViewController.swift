//
//  OrientationViewController.swift
//  UNbias
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class OrientationViewController: UIViewController {

    @IBAction func articleOrientation(_ sender: Any) {
        showSafariVC(for: "https://www.usatoday.com/story/news/nation/2018/01/16/not-just-cake-shop-lgbt-people-battle-bias-everyday-routines/1031339001/")
    }
    
    @IBAction func videoOrientation(_ sender: Any) {
        showVideoVC(for: "https://www.youtube.com/watch?v=_dg86g-QlM0")
    }
    
    
    @IBAction func resourceOrientation(_ sender: Any) {
        showResourceVC(for: "https://www.itspronouncedmetrosexual.com/2013/01/a-comprehensive-list-of-lgbtq-term-definitions/ ")
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
