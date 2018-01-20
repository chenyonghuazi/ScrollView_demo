//
//  ViewController.swift
//  ScrollView_demo
//
//  Created by Edwin on 2018/1/20.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate,UICollectionViewDelegate {
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var myCollectionV: UICollectionView!
    @IBOutlet weak var myScrollView: UIScrollView!
    
    @IBOutlet weak var underScroll: UIView!
    let imageSet = ["mcdonalds", "lenovo", "canadian tire"]
    var contentSize:CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.delegate = self
        underScroll.bringSubview(toFront: pageControl)
        myScrollView.heightAnchor.constraint(equalToConstant: self.view.frame.height / 4).isActive = true
        // Do any additional setup after loading the view, typically from a nib.
        var count:CGFloat = 0.0
        for indexImage in imageSet{
            let xcoordinate = view.frame.width * count
            let myimageView1 = UIImageView()
            let image1 = UIImage(named: indexImage)
            myimageView1.image = image1
            myimageView1.contentMode = .scaleAspectFill
            myimageView1.frame = CGRect(x:xcoordinate, y: 0, width: view.frame.width, height: myScrollView.frame.height)
            
            //pageController
//            let pageC = UIPageControl(frame: CGr)
            
            myScrollView.addSubview(myimageView1)
            
            
            count += 1.0
            contentSize += view.frame.width
        }
        
        myScrollView.contentSize = CGSize(width: contentSize, height: myScrollView.frame.height)
//        myScrollView.bringSubview(toFront: pageControl)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        pageControl.currentPage = Int(scrollView.contentOffset.x / view.frame.width)
//        print(Int(scrollView.contentOffset.y / view.frame.width))
        print("offset")
        print(scrollView.contentOffset)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}











