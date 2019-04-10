//
//  PeekPopDetailViewController.swift
//  SensorVisualizerKit-Example
//
//  Created by Joe Blau on 4/9/19.
//  Copyright © 2019 SensorVisualizerKit. All rights reserved.
//

import UIKit

class PeekPopDetailViewController: UIViewController {

    var image: UIImage?
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imageView.image = image
    }

}
