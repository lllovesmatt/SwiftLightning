//
//  ChannelOpenModels.swift
//  SwiftLightning
//
//  Created by Howard Lee on 2018-04-23.
//  Copyright (c) 2018 BiscottiGelato. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum ChannelOpen
{
  // MARK: Use cases
  
  enum GatherChannelInfo
  {
    struct Request
    {
      var nodePubKey: String
      var ipAddress: String
      var port: Int
      var fundingAmt: Double // (Should be NumericalDecimal type)
      var initPayAmt: Double // (Should be NumericalDecimal type)
    }
    struct Response
    {
      // Some sort of Channel Info Struct?
    }
    struct ViewModel
    {
      // Go to Confirm screen, or present Error
    }
  }
}