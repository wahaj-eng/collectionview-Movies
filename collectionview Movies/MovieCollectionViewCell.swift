//
//  MovieCollectionViewCell.swift
//  collectionview Movies
//
//  Created by TNC on 09/03/2022.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    func setup(with Player: player)
    {
        movieImageView.image = Player.image
        titleLbl.text = Player.title
        
    }
    
}
