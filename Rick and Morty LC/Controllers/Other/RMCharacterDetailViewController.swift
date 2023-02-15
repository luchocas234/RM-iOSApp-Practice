//
//  RMCharacterDetailViewController.swift
//  Rick and Morty LC
//
//  Created by u633168 on 15/02/2023.
//

import UIKit

class RMCharacterDetailViewController: UIViewController {
    private let viewModel: RMCharacterDetailViewViewModel
    
    init(viewModel: RMCharacterDetailViewViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder){
        fatalError("Unsopported")
    }
    
    // MARK: - Lifestyle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
        // Do any additional setup after loading the view.
    }
    
}
