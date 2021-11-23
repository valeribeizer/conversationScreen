//
//  MiddleViewController.swift
//  Conversation
//
//  Created by Valeryia Beizer on 23.11.21.
//

import UIKit

class MiddleViewController: UIViewController {
  
  //  MARK: - Variables
  
  let font = "Apple SD Gothic Neo Medium"
  let boldFont = "Apple SD Gothic Neo Bold"
  let currentLabelText = "Now"
  let durationAmount = "0:09"
  let soundWaveName = "rectangle"
  let callLabelText = "Incoming call transcription"
  let timeLabelText = "12:43PM"
  let textLabelAtt = NSMutableAttributedString()
    .normal("I ")
    .blueText("wanted")
    .normal(" to talk with you ")
    .blueText("about")
    .normal(" the plan that we ")
    .blueText("have")
    .normal(" are you ")
    .blueText("there")
    .normal("?")
  let arrowBackButtonName = "arrow.turn.up.left"
  let likeButtonName = "hand.thumbsup"
  let dislikeButtonName = "hand.thumbsdown"
  let arrowUpButtonName = "arrowtriangle.up"
  
  //  MARK: - GUI Variables
  
  lazy private var currentLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = currentLabelText
    label.textColor = .lightGray
    label.font = UIFont(name: font, size: 20)
    
    return label
  }()
  
  lazy private var duration: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = durationAmount
    label.textColor = .lightGray
    label.font = UIFont(name: font, size: 14)
    label.contentMode = .bottom
    
    return label
  }()
  
  lazy private var soundWave: UIImageView = {
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints =  false
    image.image = UIImage(named: soundWaveName)
    
    return image
  }()
  
  private lazy var callLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = callLabelText
    label.textColor = .lightGray
    label.font = UIFont(name: boldFont, size: 14)
    
    return label
  }()
  
  private lazy var timeLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = timeLabelText
    label.textColor = .lightGray
    label.font = UIFont(name: font, size: 14)
    
    return label
  }()
  
  private lazy var  textLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.attributedText = textLabelAtt
    label.numberOfLines = 0
    
    return label
  }()
  
  lazy private var path: UIBezierPath = {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 0, y: 10))
    path.addLine(to: CGPoint(x: 350, y: 10))
    
    return path
  }()
  
  lazy private var pathView: PathView = {
    let pathView = PathView()
    pathView.translatesAutoresizingMaskIntoConstraints = false
    pathView.backgroundColor = .clear
    pathView.path = path
    
    return pathView
  }()
  
  lazy private var arrowBackButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(UIImage(systemName: arrowBackButtonName), for: .normal)
    button.tintColor = .lightGray
    
    return button
  }()
  
  lazy private var likeButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(UIImage(systemName: likeButtonName), for: .normal)
    button.tintColor = .lightGray
    
    return button
  }()
  
  lazy private var dislikeButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(UIImage(systemName: dislikeButtonName), for: .normal)
    button.tintColor = .lightGray
    
    return button
  }()
  
  lazy private var arrowUpButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(UIImage(systemName: arrowUpButtonName), for: .normal)
    button.tintColor = .lightGray
    
    return button
  }()
  
  //  MARK: - Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpView()
  }
  
  //  MARK: - Methods
  
  private func setUpView() {
    self.view.layer.borderColor = UIColor.systemGray4.cgColor
    self.view.layer.borderWidth = 1
    self.view.layer.cornerRadius = 15
    
    self.view.addSubview(currentLabel)
    self.view.addSubview(duration)
    self.view.addSubview(soundWave)
    self.view.addSubview(callLabel)
    self.view.addSubview(timeLabel)
    self.view.addSubview(textLabel)
    self.view.addSubview(pathView)
    self.view.addSubview(arrowBackButton)
    self.view.addSubview(likeButton)
    self.view.addSubview(dislikeButton)
    self.view.addSubview(arrowUpButton)
    
    self.setUpConstraints()
  }
  
  private func setUpConstraints() {
    NSLayoutConstraint.activate([
      currentLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10),
      currentLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
      
      duration.leadingAnchor.constraint(equalTo: self.currentLabel.leadingAnchor),
      duration.topAnchor.constraint(equalTo: self.currentLabel.bottomAnchor, constant: 30),
      
      soundWave.heightAnchor.constraint(equalToConstant: 50),
      soundWave.widthAnchor.constraint(equalToConstant: 220),
      soundWave.leadingAnchor.constraint(equalTo: self.duration.trailingAnchor, constant: 30),
      soundWave.bottomAnchor.constraint(equalTo: self.duration.bottomAnchor, constant: -5),
      
      callLabel.leadingAnchor.constraint(equalTo: self.duration.leadingAnchor),
      callLabel.topAnchor.constraint(equalTo: self.duration.bottomAnchor, constant: 10),
      
      timeLabel.centerYAnchor.constraint(equalTo: self.callLabel.centerYAnchor),
      timeLabel.leadingAnchor.constraint(equalTo: self.callLabel.trailingAnchor, constant: 30),
      
      textLabel.leadingAnchor.constraint(equalTo: self.callLabel.leadingAnchor),
      textLabel.topAnchor.constraint(equalTo: self.callLabel.bottomAnchor, constant: 15),
      textLabel.widthAnchor.constraint(equalToConstant: 270),
      
      pathView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
      pathView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
      pathView.topAnchor.constraint(equalTo: self.textLabel.bottomAnchor, constant: 20),
      pathView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      
      arrowBackButton.leadingAnchor.constraint(equalTo: self.textLabel.leadingAnchor),
      arrowBackButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -15),
      
      likeButton.centerYAnchor.constraint(equalTo: self.arrowBackButton.centerYAnchor),
      likeButton.leadingAnchor.constraint(equalTo: self.arrowBackButton.trailingAnchor, constant: 210),
      
      dislikeButton.centerYAnchor.constraint(equalTo: self.likeButton.centerYAnchor),
      dislikeButton.leadingAnchor.constraint(equalTo: self.likeButton.trailingAnchor, constant: 15),
      
      arrowUpButton.centerYAnchor.constraint(equalTo: self.dislikeButton.centerYAnchor),
      arrowUpButton.leadingAnchor.constraint(equalTo: self.dislikeButton.trailingAnchor, constant: 15)
    ])
  }
}

