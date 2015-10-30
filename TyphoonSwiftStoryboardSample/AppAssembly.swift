//
//  AppAssembly.swift
//  TyphoonSwiftStoryboardSample
//
//  Created by Alexander Tkachenko on 10/30/15.
//  Copyright © 2015 organization. All rights reserved.
//

import UIKit
import Typhoon

public class AppAssembly: TyphoonAssembly {
    public dynamic func appDelegate() -> AnyObject {
        return TyphoonDefinition.withClass(AppDelegate.self) {
            (definition) in
            
            definition.injectProperty("appAssembly", with: self)
        }
    }
    
    public dynamic func mainViewController() -> AnyObject {
        return TyphoonDefinition.withClass(MainViewController.self) {
            (definition) in
            definition.injectProperty("mainViewModel", with: self.mainViewModel())
        }
    }

    public dynamic func mainViewModel() -> AnyObject {
        return TyphoonDefinition.withClass(MainViewModel.self) {
            (definition) in
            definition.useInitializer("initWithTitle:description:") {
                (initializer) in
                initializer.injectParameterWith("Typhoon injected \nviewModel.title\n\n")
                initializer.injectParameterWith("Typhoon injected description.\n This texts is injected from AppAssembly with Typhoon.\nEverything is working fine with storyboards!")
            }
        }
    }
}
