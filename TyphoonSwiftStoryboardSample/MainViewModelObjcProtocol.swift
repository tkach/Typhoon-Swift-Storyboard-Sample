//
//  MainViewModelObjcProtocol.swift
//  TyphoonSwiftStoryboardSample
//
//  Created by Alexander Tkachenko on 11/6/15.
//  Copyright © 2015 organization. All rights reserved.
//

import Foundation

@objc protocol MainViewModelObjcProtocol {
    var titleText:String {
        get
    }
    var descriptionText:String {
        get
    }
}