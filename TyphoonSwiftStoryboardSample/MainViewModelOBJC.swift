//
//  MainViewModelOBJC.swift
//  TyphoonSwiftStoryboardSample
//
//  Created by Alexander Tkachenko on 11/6/15.
//  Copyright © 2015 organization. All rights reserved.
//

import Foundation

class MainViewModelOBJC : MainViewModelObjcProtocol {
    @objc var titleText:String
    @objc var descriptionText:String
    
    init(title:String, description:String) {
        self.titleText = title
        self.descriptionText = description
    }
}