//
//  ViewController.swift
//  Conversation
//
//  Created by Valeryia Beizer on 22.11.21.
//

import UIKit

class ViewController: UIViewController {
  
  //  MARK: - GUI Variables
  
  lazy private var topView: TopViewController = {
    let view = TopViewController()
    view.view.translatesAutoresizingMaskIntoConstraints = false
    
    return view
  }()
  
  lazy private var middleView: MiddleViewController = {
    let view = MiddleViewController()
    view.view.translatesAutoresizingMaskIntoConstraints = false
    
    return view
  }()
  
  lazy private var bottomView: BottomViewController = {
    let view = BottomViewController()
    view.view.translatesAutoresizingMaskIntoConstraints = false
    
    return view
  }()
  
  //  MARK: - Life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.setUpView()
  }
  
  //  MARK: - Methods
  
  private func setUpView() {
    self.view.addSubview(topView.view)
    self.view.addSubview(middleView.view)
    self.view.addSubview(bottomView.view)
    
    self.setUpConstraints()
  }
  
  private func setUpConstraints() {
    NSLayoutConstraint.activate([
      topView.view.topAnchor.constraint(equalTo: self.view.topAnchor),
      topView.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
      topView.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
      topView.view.heightAnchor.constraint(equalToConstant: 320),
      
      middleView.view.topAnchor.constraint(equalTo: self.topView.view.bottomAnchor, constant: 30),
      middleView.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
      middleView.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
      middleView.view.heightAnchor.constraint(equalToConstant: 240),
      
      bottomView.view.topAnchor.constraint(equalTo: self.middleView.view.bottomAnchor, constant: 30),
      bottomView.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
      bottomView.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
      bottomView.view.heightAnchor.constraint(equalToConstant: 200),
    ])
  }
}

