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

    var x:NSNumber!
    var favoriteGenres: Set<String>!

    var mainViewModel:MainViewModel!
    var mainViewModelByProtocol:AnyObject!
    var mainViewModelByObjcProtocol:MainViewModelObjcProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = self.mainViewModelByProtocol as! MainViewModelProtocol
        // Do any additional setup after loading the view, typically from a nib.
        descriptionLabel.text = model.descriptionText
        titleLabel.text = model.titleText
        print("Set:")
        print(favoriteGenres)
        print("------------");
        print("MainViewModel injected by class:")
        print(mainViewModel.titleText);
        print(mainViewModel.descriptionText);
        print("------------");
        print("MainViewModel injected by protocol:")
        print(model.titleText);
        print(model.descriptionText);
        print("------------");
        print("MainViewModel injected by objc protocol:")
        print(self.mainViewModelByObjcProtocol.titleText);
        print(self.mainViewModelByObjcProtocol.descriptionText);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

