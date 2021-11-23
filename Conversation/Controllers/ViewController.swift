//
//  ViewController.swift
//  Conversation
//
//  Created by Valeryia Beizer on 22.11.21.
//

import UIKit

class ViewController: UIViewController {
  
//  lazy private var firstView: TopView = {
//    let view = TopView()
//
//    return view
//  }()
//
//  lazy private var secondVC: MiddleViewController = {
//    let view = MiddleViewController()
//
//    return view
//  }()
//
//  lazy private var thirdVC: BottomViewController = {
//    let view = BottomViewController()
//
//    return view
//  }()
//
//  lazy private var stackView: UIStackView = {
//    let stack = UIStackView()
//    stack.translatesAutoresizingMaskIntoConstraints = false
//    stack.axis = .vertical
//    stack.spacing = 20
//    stack.distribution = .fillEqually
//    stack.addArrangedSubview(firstView)
//    stack.addArrangedSubview(secondVC.view)
//    stack.addArrangedSubview(thirdVC.view)
//
//    return stack
//  }()
//
//  override func viewDidLoad() {
//    super.viewDidLoad()
//
//    self.view.addSubview(stackView)
//    self.setUpStack()
//  }
//
//  private func setUpStack() {
//    NSLayoutConstraint.activate([
//      stackView.topAnchor.constraint(equalTo: self.view.topAnchor),
//      stackView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
//      stackView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
//      stackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
//
//      secondVC.view.leftAnchor.constraint(equalTo: self.stackView.leftAnchor, constant: 10),
//      secondVC.view.rightAnchor.constraint(equalTo: self.stackView.rightAnchor, constant: -10),
//
//      thirdVC.view.leftAnchor.constraint(equalTo: self.stackView.leftAnchor, constant: 10),
//      thirdVC.view.rightAnchor.constraint(equalTo: self.stackView.rightAnchor, constant: -10),
//      thirdVC.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50)
//
//            ])
//  }
  
  //  MARK: - GUI Variables  
  lazy private var mainTitle: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Apple SD Gothic Neo Bold", size: 20)
    label.textColor = .black
    label.text = "Conversation"
    
    return label
  }()
  
  lazy private var personPhoto: UIImageView = {
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints = false
    image.image = UIImage(named: "photo")
    image.contentMode = .scaleAspectFill
    image.layer.masksToBounds = true
    image.layer.cornerRadius = 40
    
    
    return image
  }()
  
  lazy private var nameTitle: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Apple SD Gothic Neo Medium", size: 20)
    label.textColor = .black
    label.text = "Noam Bardin"
    
    return label
  }()
  
  lazy private var talkBarItem: UITabBarItem = {
    let item = UITabBarItem()
    item.title = "Talk"
    item.image = UIImage(systemName: "phone")
    
    return item
  }()
  
  lazy private var listenBarItem: UITabBarItem = {
    let item = UITabBarItem()
    item.title = "Listen"
    item.image = UIImage(systemName: "play.circle")
    
    return item
  }()
  
  lazy private var textBarItem: UITabBarItem = {
    let item = UITabBarItem()
    item.title = "Text"
    item.image = UIImage(systemName: "message")
    
    return item
  }()

  lazy private var tabBar: UITabBar = {
    let tabBar = UITabBar()
    tabBar.translatesAutoresizingMaskIntoConstraints = false
    tabBar.barTintColor = .white
    tabBar.clipsToBounds = true
    tabBar.autoresizesSubviews = true
    tabBar.setItems([talkBarItem, listenBarItem, textBarItem], animated: false)
    
    return tabBar
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
    self.view.addSubview(mainTitle)
    self.view.addSubview(personPhoto)
    self.view.addSubview(nameTitle)
    self.view.addSubview(tabBar)
    self.view.addSubview(middleView.view)
    self.view.addSubview(bottomView.view)
    
    self.setUpConstraints()
  }
  
  private func setUpConstraints() {
    NSLayoutConstraint.activate([
      mainTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      mainTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 70),
      
      personPhoto.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      personPhoto.heightAnchor.constraint(equalToConstant: 80),
      personPhoto.widthAnchor.constraint(equalToConstant: 80),
      personPhoto.topAnchor.constraint(equalTo: self.mainTitle.bottomAnchor, constant: 30),
      
      nameTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      nameTitle.topAnchor.constraint(equalTo: self.personPhoto.bottomAnchor, constant: 20),
      
      tabBar.widthAnchor.constraint(equalToConstant: 150),
      tabBar.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      tabBar.topAnchor.constraint(equalTo: self.nameTitle.bottomAnchor, constant: 20),
      
      middleView.view.topAnchor.constraint(equalTo: self.tabBar.bottomAnchor, constant: 30),
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

