//
//  PathView.swift
//  Conversation
//
//  Created by Valeryia Beizer on 23.11.21.
//

import UIKit

class PathView: UIView {
  
  //  MARK: - Variables

  var path: UIBezierPath? {
    didSet { setNeedsDisplay() }
  }
  
  var pathColor: UIColor = .systemGray5 {
    didSet { setNeedsDisplay() }
  }
  
  //  MARK: - Methods
  
  override func draw(_ rect: CGRect) {
    pathColor.setStroke()
    path?.stroke()
  }
}
