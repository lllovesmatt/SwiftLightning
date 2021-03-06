//
//  UnlockAppPresenter.swift
//  SwiftLightning
//
//  Created by Howard Lee on 2018-04-20.
//  Copyright (c) 2018 BiscottiGelato. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol UnlockAppPresentationLogic
{
  func presentCheckResult(response: UnlockApp.CheckPassword.Response)
}

class UnlockAppPresenter: UnlockAppPresentationLogic
{
  weak var viewController: UnlockAppDisplayLogic?
  
  // MARK: Do something
  
  func presentCheckResult(response: UnlockApp.CheckPassword.Response)
  {
    if let errorDescription = response.errorDescription {
      let viewModel = UnlockApp.CheckPassword.ViewModel(errorTitle: "Unlock Failed",
                                                        errorMsg: errorDescription)
      viewController?.displayCheckPasswordFailure(viewModel: viewModel)
    } else {
      viewController?.displayWalletMain()
    }
  }
}
