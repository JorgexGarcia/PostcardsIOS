//
//  ViewController.swift
//  Postcards
//
//  Created by Jorge Garcia Gonzalez on 5/11/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var postcardImageView: UIImageView!
    @IBOutlet weak var colorCollectionView: UICollectionView!
    
    var colors = [UIColor]()
    
    var image : UIImage
    
    var topText = "Bienvenido"
    var bottomText = "Prueba"
    
    var topFontName = "Avenir Next"
    var bottomFontName = "Avenir Next"
    
    var topFontColor = UIColor.white
    var bottomFontColor = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colors += [.black, .gray, .white, .red, . orange, .yellow, .green, .cyan, .blue, .purple, .magenta]
        
        for hue in 0...9{
            for sat in 1...10{
                let color = UIColor(hue: CGFloat(hue)/10, saturation: CGFloat(sat)/10, brightness: 1, alpha: 1)
                self.colors.append(color)
            }
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ColorCell", for: indexPath)
        
        let color = self.colors[indexPath.row]
        cell.backgroundColor = color
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 5
        
        return cell
    }
    
    func renderPostCard(){
        
    }
    
}

