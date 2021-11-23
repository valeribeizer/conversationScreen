//
//  NSMutableAttributedString+Ex.swift
//  Conversation
//
//  Created by Valeryia Beizer on 23.11.21.
//

import UIKit

extension NSMutableAttributedString {
  
  //  MARK: - Variables
  
  var fontSize: CGFloat {
    return 16
  }
  
  var normalFont: UIFont {
    return UIFont(name: "Apple SD Gothic Neo", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
  }
  
  //  MARK: - Methods
  
  func normal(_ value: String) -> NSMutableAttributedString {
    let attributes: [NSAttributedString.Key : Any] = [
      .font: normalFont,
      .foregroundColor: UIColor.lightGray
    ]
    self.append(NSAttributedString(string: value, attributes: attributes))
    
    return self
  }
  
  func blueText(_ value: String) -> NSMutableAttributedString {
    let attributes: [NSAttributedString.Key : Any] = [
      .font: normalFont,
      .foregroundColor: UIColor.systemBlue
    ]
    self.append(NSAttributedString(string: value, attributes: attributes))
    
    return self
  }
}
