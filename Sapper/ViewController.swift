//
//  ViewController.swift
//  Sapper
//
//  Created by User on 4/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var gameField: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    private lazy var statusField: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var bombCountLabel: UILabel = {
        let view = UILabel()
        view.text = "000"
        view.font = UIFont.systemFont(ofSize: 48)
        view.backgroundColor = .white
        view.textAlignment = .center
        return view
    }()
    
    private lazy var startGameBtn: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "smile"), for: .normal)
        view.backgroundColor = . lightGray
        view.addTarget(self, action: #selector(setBomb(sender:)), for: .touchUpInside)
        return view
    }()
    
    private lazy var timerLabel: UILabel = {
        let view = UILabel()
        view.text = "000"
        view.font = UIFont.systemFont(ofSize: 48)
        view.backgroundColor = .white
        view.textAlignment = .center
        return view
    }()

    var click = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(statusField)
        
        statusField.translatesAutoresizingMaskIntoConstraints = false
        statusField.heightAnchor.constraint(equalToConstant: 100).isActive = true
        statusField.widthAnchor.constraint(equalToConstant: 396).isActive = true
        statusField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        statusField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        
        view.addSubview(gameField)
        
        gameField.translatesAutoresizingMaskIntoConstraints = false
        gameField.heightAnchor.constraint(equalToConstant: 396).isActive = true
        gameField.widthAnchor.constraint(equalToConstant: 396).isActive = true
        gameField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        gameField.topAnchor.constraint(equalTo: statusField.bottomAnchor, constant: 0).isActive = true
        
        statusField.addSubview(bombCountLabel)
        bombCountLabel.translatesAutoresizingMaskIntoConstraints = false
        bombCountLabel.leadingAnchor.constraint(equalTo: statusField.leadingAnchor, constant: 5).isActive = true
        bombCountLabel.centerYAnchor.constraint(equalTo: statusField.centerYAnchor, constant: 0).isActive = true
        bombCountLabel.widthAnchor.constraint(equalToConstant: 110).isActive = true
        
        statusField.addSubview(startGameBtn)
        startGameBtn.translatesAutoresizingMaskIntoConstraints = false
        startGameBtn.widthAnchor.constraint(equalToConstant: 80).isActive = true
        startGameBtn.heightAnchor.constraint(equalToConstant: 80).isActive = true
        startGameBtn.centerXAnchor.constraint(equalTo: statusField.centerXAnchor, constant: 0).isActive = true
        startGameBtn.centerYAnchor.constraint(equalTo: statusField.centerYAnchor, constant: 0).isActive = true
        
        statusField.addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        timerLabel.trailingAnchor.constraint(equalTo: statusField.trailingAnchor, constant: -5).isActive = true
        timerLabel.centerYAnchor.constraint(equalTo: statusField.centerYAnchor, constant: 0).isActive = true
        timerLabel.widthAnchor.constraint(equalToConstant: 110).isActive = true
    }
    
    
    @objc func setBomb(sender: UIButton) {
        
        click += 1
        if click % 2 == 0 {
            sender.setImage(UIImage(named: "sad"), for: .normal)
        } else {
            sender.setImage(UIImage(named: "smile"), for: .normal)
        }
    }
    
    
    
}

