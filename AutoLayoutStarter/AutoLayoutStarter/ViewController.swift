//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView: UIView = {
        let main = UIView()
        // important when setting contraints programmatically
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .green
        
        let puprpleView: UIView = {
            let view = UIView(frame: CGRect.zero)
            view.backgroundColor = .purple
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        main.addSubview(puprpleView)
        
        NSLayoutConstraint.activate([
            puprpleView.bottomAnchor.constraint(equalTo: main.bottomAnchor, constant: -25),
            puprpleView.trailingAnchor.constraint(equalTo: main.trailingAnchor, constant: -10),
            puprpleView.widthAnchor.constraint(equalTo: main.widthAnchor, constant : -240),
            puprpleView.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        let BS1: UIView = {
            let view = UIView()
            view.backgroundColor = .blue
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 60),
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
        }()
        
        let BS2: UIView = {
            let view = UIView()
            view.backgroundColor = .blue
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 60),
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
        }()
        
        let BS3: UIView = {
            let view = UIView()
            view.backgroundColor = .blue
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 60),
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
        }()
        
        let BVS = UIStackView(arrangedSubviews: [BS1, BS2, BS3])
        BVS.axis = .vertical
        BVS.alignment = .center
        BVS.spacing = 20
        BVS.distribution = .equalSpacing
        BVS.translatesAutoresizingMaskIntoConstraints = false
        main.addSubview(BVS)
        
        NSLayoutConstraint.activate([
            BVS.centerXAnchor.constraint(equalTo: main.centerXAnchor),
            BVS.centerYAnchor.constraint(equalTo: main.centerYAnchor),
            BVS.widthAnchor.constraint(equalToConstant: 60),
            BVS.heightAnchor.constraint(equalTo:main.heightAnchor, constant: -190)
        ])
        
        let RS1: UIView = {
            let view = UIView()
            view.backgroundColor = .red
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 10),
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
        }()
        
        let OS1: UIView = {
            let view = UIView()
            view.backgroundColor = .orange
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 90),
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
        }()
        
        let RS2: UIView = {
            let view = UIView()
            view.backgroundColor = .red
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 10),
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
        }()
        
        let OS2: UIView = {
            let view = UIView()
            view.backgroundColor = .orange
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 40),
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
        }()
        
        let RS3: UIView = {
            let view = UIView()
            view.backgroundColor = .red
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 10),
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
        }()
        
        let OVS = UIStackView(arrangedSubviews: [RS1, OS1, RS2 , OS2, RS3])
        OVS.axis = .horizontal
        OVS.alignment = .center
        OVS.spacing = 0
        OVS.distribution = .equalSpacing
        OVS.translatesAutoresizingMaskIntoConstraints = false
        main.addSubview(OVS)
        
        NSLayoutConstraint.activate([
            OVS.centerXAnchor.constraint(equalTo: main.centerXAnchor, constant: 180),
            OVS.centerYAnchor.constraint(equalTo: main.centerYAnchor, constant: -180),
            OVS.widthAnchor.constraint(equalToConstant: 150),
            OVS.heightAnchor.constraint(equalTo:main.heightAnchor)
        ])
        return main
    }()
    
    
    let squareButton: UIButton = {
        let butt = UIButton(type: .system)
        butt.setTitle("Square", for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
        return butt
    }()
    
    let portraitButton: UIButton = {
        let butt = UIButton(type: .system)
        butt.setTitle("Portrait", for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
        return butt
    }()
    
    let landScapeButton: UIButton = {
        let butt = UIButton(type: .system)
        butt.setTitle("Landscape", for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
        return butt
    }()
    
    var widthAnchor: NSLayoutConstraint?
    var heightAnchor: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mainView)
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
        widthAnchor?.isActive = true
        
        heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
        heightAnchor?.isActive = true
        
        let buttStackView = UIStackView(arrangedSubviews: [
            squareButton, portraitButton, landScapeButton])
        buttStackView.translatesAutoresizingMaskIntoConstraints = false
        buttStackView.axis = .horizontal
        buttStackView.alignment = .center
        buttStackView.distribution = .fillEqually
        
        view.addSubview(buttStackView)
        NSLayoutConstraint.activate([
            buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttStackView.heightAnchor.constraint(equalToConstant: 50),
            buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
    }
    
    @objc private func squareTapped() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2.0) {
            self.widthAnchor?.isActive = false
            self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
            self.widthAnchor?.isActive = true
            
            self.heightAnchor?.isActive = false
            self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
            self.heightAnchor?.isActive = true
            self.view.layoutIfNeeded()
        }
    }
    
    @objc private func portraitTapped() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2.0) {
            self.widthAnchor?.isActive = false
            self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
            self.widthAnchor?.isActive = true
            
            self.heightAnchor?.isActive = false
            self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
            self.heightAnchor?.isActive = true
            self.view.layoutIfNeeded()
        }
        
    }
    
    @objc private func landscapeTapped() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2.0) {
            self.widthAnchor?.isActive = false
            self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
            self.widthAnchor?.isActive = true
            
            self.heightAnchor?.isActive = false
            self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
            self.heightAnchor?.isActive = true
            self.view.layoutIfNeeded()
        }
    }
}

