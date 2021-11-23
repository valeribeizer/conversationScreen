//
//  TopViewController.swift
//  Conversation
//
//  Created by Valeryia Beizer on 23.11.21.
//

import UIKit

class TopViewController: UIViewController {
  
  //  MARK: - Variables
  
  let font = "Apple SD Gothic Neo Medium"
  let boldFont = "Apple SD Gothic Neo Bold"
  let mainTitleText = "Conversation"
  let personPhotoName = "photo"
  let nameTitleText = "Noam Bardin"
  let talkItemTitle = "Talk"
  let listenItemTitle = "Listen"
  let textItemTitle = "Text"
  let talkItemImage = "phone"
  let listenItemImage = "play.circle"
  let textItemImage = "message"
  
  //  MARK: - GUI Variables
  
  lazy private var mainTitle: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: boldFont, size: 20)
    label.textColor = .black
    label.text = mainTitleText
    
    return label
  }()
  
  lazy private var personPhoto: UIImageView = {
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints = false
    image.image = UIImage(named: personPhotoName)
    image.contentMode = .scaleAspectFill
    image.layer.masksToBounds = true
    image.layer.cornerRadius = 40
    
    
    return image
  }()
  
  lazy private var nameTitle: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: font, size: 20)
    label.textColor = .black
    label.text = nameTitleText
    
    return label
  }()
  
  lazy private var talkBarItem: UITabBarItem = {
    let item = UITabBarItem()
    item.title = talkItemTitle
    item.image = UIImage(systemName: talkItemImage)
    
    return item
  }()
  
  lazy private var listenBarItem: UITabBarItem = {
    let item = UITabBarItem()
    item.title = listenItemTitle
    item.image = UIImage(systemName: listenItemImage)
    
    return item
  }()
  
  lazy private var textBarItem: UITabBarItem = {
    let item = UITabBarItem()
    item.title = textItemTitle
    item.image = UIImage(systemName: textItemImage)
    
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
      tabBar.topAnchor.constraint(equalTo: self.nameTitle.bottomAnchor, constant: 20)
    ])
  }
}
