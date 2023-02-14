//
//  CharacterListViewViewModel.swift
//  Rick and Morty LC
//
//  Created by u633168 on 09/02/2023.
//

import Foundation
import UIKit

protocol RMCharacterListViewViewModelDelegate: AnyObject{
    func didLoadInitialCharacters()
}

final class RMCharacterListViewViewModel: NSObject {
    
    public weak var delegate: RMCharacterListViewViewModelDelegate?
    
    private var characters: [RMCharacter] = []{
        didSet {
            for character in characters {
                let viewModel = RMCharacterCollectionViewCellViewModel(characterName: character.name, characterStatus: character.status, characterImageUrl: URL(string: character.image))
                cellViewMOdels.append(viewModel)
            }
        }
    }
    
    private var cellViewMOdels: [RMCharacterCollectionViewCellViewModel] = []
    
    public func fetchCharacters() {
        RMService.shared.execute(
            .listCharactersRequest,
            expecting: RMGetAllCharactersResponse.self
        ) { [weak self] result in
            switch result {
            case .success(let responseModel):
                let results = responseModel.results
                self?.characters = results
                DispatchQueue.main.async {
                    self?.delegate?.didLoadInitialCharacters()
                }
                
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension RMCharacterListViewViewModel:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellViewMOdels.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier, for: indexPath) as? RMCharacterCollectionViewCell else {
            fatalError("Unsopported cell")
        }
       
        cell.configure(with: cellViewMOdels[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30)/2
        return CGSize(width: width, height:width*1.5)
    }
   
    
}
