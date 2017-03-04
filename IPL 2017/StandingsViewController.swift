//
//  StandingsViewController.swift
//  IPL 2017
//
//  Created by Abid Ali on 2/27/17.
//  Copyright © 2017 mc. All rights reserved.
//

import UIKit
import GoogleMobileAds
class StandingsViewController: UIViewController ,UIWebViewDelegate {
    
    var banner: GADBannerView!
    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = NSURL (string: "http://www.iplt20.com/schedule")
        let request = NSURLRequest(url: url! as URL)
        webView.loadRequest(request as URLRequest)
        webView.delegate = self
        
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
    
    
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        indicator.startAnimating()
    }
    
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicator.stopAnimating()
        indicator.isHidden = true
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print(error)
        
        indicator.startAnimating()
        indicator.isHidden = false
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
