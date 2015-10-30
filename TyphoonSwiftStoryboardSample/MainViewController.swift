//
//  ViewController.swift
//  TyphoonSwiftStoryboardSample
//
//  Created by Alexander Tkachenko on 10/30/15.
//  Copyright © 2015 organization. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!

    var mainViewModel:MainViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        descriptionLabel.text = mainViewModel.descriptionText
        titleLabel.text = mainViewModel.titleText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

