//
//  DetailViewController.swift
//  SplitView
//
//  Created by Arnez Dillard on 4/21/17.
//  Copyright © 2017 com.Dillard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet var webView: UIWebView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            
            if let myWebview = webView {
                let url = NSURL(string: detail as! String)
                let resquest = NSURLRequest(url: url! as URL)
                myWebview.scalesPageToFit = true
                myWebview.loadRequest(resquest as URLRequest)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

