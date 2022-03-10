//
//  ViewController.swift
//  collectionview Movies
//
//  Created by TNC on 09/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.isUserInteractionEnabled = true
        
//        collectionView.dataSource = self
//        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        
    }


}
extension ViewController: UICollectionViewDataSource ,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return players.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.setup(with: players[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("hey")
        let mainstoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let desVC = mainstoryboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        desVC.image = (players[indexPath.row].image)
        desVC.name = (players[indexPath.row].title)
        
        self.navigationController?.pushViewController(desVC, animated: true)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
//extension ViewController: UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
//
//
//
//
//
//}
//extension ViewController: UICollectionViewDelegate{
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let mainstoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let desVC = mainstoryboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
//
//        desVC.image = (players[indexPath.row].image)
//        desVC.name = (players[indexPath.row].title)
//
//        self.navigationController?.pushViewController(desVC, animated: true)
//
//
//    }
//}

