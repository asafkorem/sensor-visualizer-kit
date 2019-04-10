//
//  PeekPopCollectionViewController.swift
//  SensorVisualizerKit-Example
//
//  Created by Joe Blau on 4/9/19.
//  Copyright © 2019 SensorVisualizerKit. All rights reserved.
//

import UIKit

class PeekPopCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let reuseIdentifier = "PeekPopCell"
    let images: [UIImage] = {
        return (0..<13).map { index in
            UIImage(named: "shot-on-iphone-\(index)")!
        }
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerForPreviewing(with: self, sourceView: collectionView)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PeekPopPreviewCollectionViewCell
        cell.previewImageView.image = images[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let edge = (UIScreen.main.bounds.width / CGFloat(3.0)) - (2.0 / UIScreen.main.scale)
        return CGSize(width: edge, height: edge)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Show Detail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? PeekPopDetailViewController,
        let selectedRow = collectionView.indexPathsForSelectedItems?.first?.row else { return }
        destination.image = images[selectedRow]
    }
}

extension PeekPopCollectionViewController: UIViewControllerPreviewingDelegate {
        func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
    
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
            guard let selectedIndexPath = collectionView.indexPathForItem(at: location),
            let previewViewController = storyboard.instantiateViewController(withIdentifier: "PeekPopDetailViewController") as? PeekPopDetailViewController else {
                return nil
            }
            
            collectionView.selectItem(at: selectedIndexPath, animated: false, scrollPosition: .top)
            previewViewController.image = images[selectedIndexPath.row]
            return previewViewController
        }
    
        func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
            performSegue(withIdentifier: "Show Detail", sender: self)
        }
}
