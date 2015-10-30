//
//  MainViewModel.swift
//  TyphoonSwiftStoryboardSample
//
//  Created by Alexander Tkachenko on 10/30/15.
//  Copyright © 2015 organization. All rights reserved.
//

import UIKit

class MainViewModel: NSObject {
    var titleText:String;
    var descriptionText:String;
    init(title:String, description:String) {
        self.titleText = title
        self.descriptionText = description
    }
}
