//
//  WalletPresenter.swift
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

protocol WalletPresentationLogic
{
  func presentSomething(response: Wallet.Something.Response)
}

class WalletPresenter: WalletPresentationLogic
{
  weak var viewController: WalletDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Wallet.Something.Response)
  {
    let viewModel = Wallet.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}