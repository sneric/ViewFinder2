//
//  PhotoDetailViewController.swift
//  ViewFinder2
//
//  Created by ERIC SMITH on 5/28/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var photoDetailShow: UIImageView!
    
    var photo : Photos? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let realPhoto = photo {
            title = realPhoto.caption
            
            if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    photoDetailShow.image = cellPhotoImage
                }
            }
        }

    }

}
