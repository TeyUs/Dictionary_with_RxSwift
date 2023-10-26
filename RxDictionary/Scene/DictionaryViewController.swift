//
//  DictionaryViewController.swift
//  RxDictionary
//
//  Created by Uslu, Teyhan on 26.10.2023.
//

import UIKit

class DictionaryViewController: UIViewController {
    public let listingVM = DictionaryViewModel()
    
    var spinner: UIActivityIndicatorView = {
        var tmp = UIActivityIndicatorView(style: .large)
        tmp.translatesAutoresizingMaskIntoConstraints = false
        tmp.hidesWhenStopped = true
        tmp.color = .orange
        return tmp
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        listingVM.view = self
        view.backgroundColor = .gray
        addSpinner()
        
        spinner.startAnimating()
//        spinner.stopAnimating()
    }

    func addSpinner() {
        view.addSubview(spinner)
        spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}

