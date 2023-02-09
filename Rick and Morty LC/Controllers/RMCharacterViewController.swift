//
//  RMCharacterViewController.swift
//  Rick and Morty LC
//
//  Created by u633168 on 06/02/2023.
//

import UIKit


/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        // Do any additional setup after loading the view.
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model.info.count))
                print(String(describing: model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
        
    }
   
}
