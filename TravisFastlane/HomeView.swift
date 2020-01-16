//
//  HomeView.swift
//  TravisFastlane
//
//  Created by Levi Eggert on 1/16/20.
//  Copyright © 2020 Levi Eggert. All rights reserved.
//

import UIKit

class HomeView: UIViewController {
    
    private let viewModel: HomeViewModel
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    required init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "HomeView", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("x deinit: \(type(of: self))\n")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("didload: \(type(of: self))\n")
        
        setupBinding()
    }
    
    private func setupBinding() {
        titleLabel.text = viewModel.title
    }
}

