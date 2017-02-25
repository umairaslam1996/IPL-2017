//
//  ViewController.swift
//  IPL 2017
//
//  Created by Umair Aslam on 22/02/2017.
//  Copyright © 2017 mc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        scrollView.contentSize.height = self.view.frame.height * 3
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

