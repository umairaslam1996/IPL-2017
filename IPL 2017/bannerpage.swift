//
//  bannerpage.swift
//  IPL 2017
//
//  Created by Abid Ali on 22/02/2017.
//  Copyright © 2017 mc. All rights reserved.
//

import UIKit
import GoogleMobileAds
class bannerpage: UIViewController {

    @IBOutlet weak var bannerView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bannerView.contentSize.height = 595
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
