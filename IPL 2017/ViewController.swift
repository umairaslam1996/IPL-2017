//
//  ViewController.swift
//  IPL 2017
//
//  Created by Abid Ali on 22/02/2017.
//  Copyright © 2017 mc. All rights reserved.
//

import UIKit
import GoogleMobileAds
class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    @IBOutlet var bannerView: GADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        scrollView.contentSize.height = self.view.frame.height * 3
        
        print("Google Mobile Ads SDK version: \(GADRequest.sdkVersion())")
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

