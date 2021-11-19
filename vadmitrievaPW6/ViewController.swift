//
//  ViewController.swift
//  vadmitrievaPW6
//
//  Created by Varvara on 18.11.2021.
//

import UIKit
import MyLogger1
import MyLogger2
import MyLogger3
//import MyLogger4

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGray
        setupFrameworkButton()
        setupPackageButton()
        setupPodButton()
        setupCarthageButton()
    }
    
    private func setupFrameworkButton(){
        let button = UIButton()
        view.addSubview(button)
        button.setTitle(" Log (framework) ", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100).isActive = true
        button.backgroundColor = .systemIndigo
        button.addTarget(self, action: #selector(logFromFramework),
                         for: .touchUpInside)
    }
    
    @IBAction func logFromFramework(_ sender: Any) {
        MyLogger1.log("hello, world")
    }
    
    private func setupPackageButton() {
        let button = UIButton()
        view.addSubview(button)
        button.setTitle(" Log (swift package) ", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250).isActive = true
        button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100).isActive = true
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(logFromSwiftPackage),
                         for: .touchUpInside)
    }
    
    @IBAction func logFromSwiftPackage(_ sender: Any) {
        MyLogger2.log("hello, world")
    }
    
    private func setupPodButton() {
        let button = UIButton()
        view.addSubview(button)
        button.setTitle(" Log (pod) ", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 300).isActive = true
        button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100).isActive = true
        button.backgroundColor = .systemOrange
        button.addTarget(self, action: #selector(logFromPod),
                         for: .touchUpInside)
    }
    
    @IBAction func logFromPod(_ sender: Any) {
        MyLogger3.log("hello, world")
    }
    
    private func setupCarthageButton() {
        let button = UIButton()
        view.addSubview(button)
        button.setTitle(" Log (carthage) ", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 350).isActive = true
        button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100).isActive = true
        button.backgroundColor = .systemYellow
        button.setTitleColor(.black, for: .normal)
        //button.addTarget(self, action: #selector(logFromCarthage),
                         //for: .touchUpInside)
    }
    
   /* @IBAction func logFromCarthage(_ sender: Any) {
        MyLogger4.log("hello, world")
        
    }*/
}

