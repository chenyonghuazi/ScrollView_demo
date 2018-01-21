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
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myCollectionV: UICollectionView!
    @IBOutlet weak var myScrollView: UIScrollView!
    
    @IBOutlet weak var underScroll: UIView!
    let imageSet = ["mcdonalds", "lenovo", "canadian tire"]
    var contentSize:CGFloat = 0.0
    let collectionImage = ["electronic","pet","furniture","gift card","phone plan","food"]
    let tableViewCellData = ["sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam","sam"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.delegate = self
        underScroll.bringSubview(toFront: pageControl)
        setLayout()
//        myScrollView.heightAnchor.constraint(equalToConstant: self.view.frame.height / 4).isActive = true
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        setCollectionViewConstraint()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        pageControl.currentPage = Int(scrollView.contentOffset.x / view.frame.width)
//        print(Int(scrollView.contentOffset.y / view.frame.width))
//        print("offset")
//        print(scrollView.contentOffset)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
extension ViewController:UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        cell.imageV.image = UIImage(named: collectionImage[indexPath.row])
        cell.imageV.contentMode = .scaleAspectFit
        cell.imageV.layer.cornerRadius = 3
        cell.imageV.clipsToBounds = true
        cell.title.text = collectionImage[indexPath.row]
        print(cell.frame.width)
        return cell
    }
    
    func setLayout(){
        let layout = UICollectionViewFlowLayout()
        if self.view.frame.width < self.view.frame.height{
            layout.itemSize = CGSize(width: (self.view.frame.width - 15) / 3, height: (self.myCollectionV.frame.height) / 2)

        }else{
            layout.itemSize = CGSize(width: (self.view.frame.width - 15) / 3, height: (self.myCollectionV.frame.height) / 2)
        }
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        self.myCollectionV.collectionViewLayout = layout
//        print(myCollectionV.collectionViewLayout.)
    }
    
    
}


extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell")
        cell?.textLabel?.text = "sam"
        return cell!
    }
    
    
    
    
    
    
    
    
    
    
}











