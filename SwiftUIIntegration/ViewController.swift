//
//  ViewController.swift
//  SwiftUIIntegration
//
//  Created by fmustafa on 3/5/22.
//

import UIKit
import SwiftUI

// https://developer.apple.com/tutorials/swiftui/creating-and-combining-views
class ViewController: UIViewController {
    let contentView = UIHostingController(rootView: SwiftUIContentView())
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChild(contentView)
        view.addSubview(contentView.view)
        setConstraints()
    }

    func setConstraints() {

        let swiftUIView = contentView.view!

        swiftUIView.translatesAutoresizingMaskIntoConstraints = false
        swiftUIView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        swiftUIView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        swiftUIView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        swiftUIView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }


}

