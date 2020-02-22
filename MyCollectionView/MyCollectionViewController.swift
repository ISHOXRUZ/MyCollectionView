//
//  MyCollectionViewController.swift
//  MyCollectionView
//
//  Created by Lucifer on 2/19/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ArtCover"

class MyCollectionViewController: UICollectionViewController {
    
    let imageNameArray = ["balkan.jpg", "bochka.jpg", "bonsai.jpg", "dastarhan.jpg", "elu.jpg", "indokitay.jpg", "istorii", "klassik.jpg", "love.jpg", "morris.jpg", "ogonek.jpg", "respublika.jpg", "shok.jpg", "speakeasy.jpg", "x.o.jpg"
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCoverCell
    
        cell.coverImageView.image = UIImage(named: imageNameArray[indexPath.row])
        // Configure the cell
    
        return cell
    }


}
