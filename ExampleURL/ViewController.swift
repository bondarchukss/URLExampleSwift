//
//  ViewController.swift
//  ExampleURL
//
//  Created by Сергей Бондарчук on 30.06.2020.
//  Copyright © 2020 Сергей Бондарчук. All rights reserved.
//
//API http://garbage.world/posts/libgen/

import UIKit
import Foundation
import SafariServices

class ViewController: UIViewController {
    let service = serviceLayer()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func searchButton(_ sender: Any) {
        service.resultURL()
        let svc = SFSafariViewController.init(url: service.confURL())
        self.present(svc, animated: true)
    }
    
}
