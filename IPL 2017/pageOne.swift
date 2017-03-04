//
//  pageOne.swift
//  IPL 2017
//
//  Created by Abid Ali on 22/02/2017.
//  Copyright © 2017 mc. All rights reserved.
//

import UIKit
import GoogleMobileAds
class pageOne: UIViewController {

     var banner: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadbanner()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func loadbanner(){
        banner = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        self.banner.adUnitID = "ca-app-pub-2809593728729827/3065581391"
        self.banner.rootViewController = self
        let requestad: GADRequest = GADRequest()
        self.banner.load(requestad)
        banner.frame = CGRect(x: 0, y: view.bounds.height - banner.frame.size.height, width: banner.frame.size.width, height: banner.frame.size.height)
        self.view.addSubview(banner)
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
