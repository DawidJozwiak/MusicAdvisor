//
//  ViewController.swift
//  Music Advisor
//
//  Created by Dawid Jóźwiak on 4/7/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let manager = BillboardManager()
        manager.fetchChart(date: "2021-02-01");
    }


}

