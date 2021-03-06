//
//  MnemonicConfirmRouter.swift
//  SwiftLightning
//
//  Created by Howard Lee on 2018-04-19.
//  Copyright (c) 2018 BiscottiGelato. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol MnemonicConfirmRoutingLogic {
  func routeToWalletThruRoot()
  func routeToMnemonicDisplay()
}

protocol MnemonicConfirmDataPassing {
  var dataStore: MnemonicConfirmDataStore? { get }
}

class MnemonicConfirmRouter: NSObject, MnemonicConfirmRoutingLogic, MnemonicConfirmDataPassing {
  weak var viewController: MnemonicConfirmViewController?
  var dataStore: MnemonicConfirmDataStore?
  
  // MARK: Routing
  
  func routeToWalletThruRoot() {
    guard let rootViewController = AppDelegate.rootViewController else {
      SLLog.fatal("RootViewController = nil")
    }
    
    // Take a detour. Ask the RootViewController to do the work
    rootViewController.dismiss(animated: false) {
      rootViewController.goWalletNavigation()
    }
  }
  
  func routeToMnemonicDisplay() {
    let storyboard = UIStoryboard(name: "MnemonicDisplay", bundle: nil)
    let destinationVC = storyboard.instantiateViewController(withIdentifier: "MnemonicDisplayViewController") as! MnemonicDisplayViewController
    var destinationDS = destinationVC.router!.dataStore!
    passDataToMnemonicDisplay(source: dataStore!, destination: &destinationDS)
    navigateToMnemonicDisplay(source: viewController!, destination: destinationVC)
  }

  
  // MARK: Navigation
  
  func navigateToMnemonicDisplay(source: MnemonicConfirmViewController, destination: MnemonicDisplayViewController) {
    source.dismiss(animated: true, completion: nil)
  }
  
  
  // MARK: Passing data

  func passDataToMnemonicDisplay(source: MnemonicConfirmDataStore, destination: inout MnemonicDisplayDataStore) {
    
  }
}
