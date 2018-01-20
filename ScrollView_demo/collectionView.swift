//
//  collectionView.swift
//  ScrollView_demo
//
//  Created by Edwin on 2018/1/20.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import Foundation
import UIKit

extension ViewController{
    
    func setCollectionViewConstraint(){
        
//        let collection = UICollectionView()
//
//        collection.topAnchor.constraint(equalTo: self.underScroll.bottomAnchor, constant: 10).isActive = true
//        collection.heightAnchor.constraint(equalToConstant: (self.view.frame.height - self.underScroll.frame.height) / 3).isActive = true
//        collection.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
//        collection.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
//
//        let itemSize = (self.view.frame.width - 15) / 4
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0)
//        layout.itemSize = CGSize(width: itemSize, height: itemSize + 15)
//
//
        //setting the underScroll constraint
        underScroll.translatesAutoresizingMaskIntoConstraints = false
        underScroll.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        underScroll.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        underScroll.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        underScroll.heightAnchor.constraint(equalToConstant: self.view.frame.height / 4).isActive = true
        
        //setting the scrollView constraint
        myScrollView.translatesAutoresizingMaskIntoConstraints = false
        myScrollView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        myScrollView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        myScrollView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        myScrollView.heightAnchor.constraint(equalToConstant: underScroll.frame.height - 39).isActive = true
        
        //setting the collectionV constraint
        myCollectionV.translatesAutoresizingMaskIntoConstraints = false
        myCollectionV.topAnchor.constraint(equalTo: underScroll.bottomAnchor, constant: 0).isActive = true
        myCollectionV.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        myCollectionV.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        myCollectionV.heightAnchor.constraint(equalToConstant: (self.view.frame.height - self.underScroll.frame.height) / 2).isActive = true
        
        //setting the collectionV layout
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0)
//        layout.itemSize = CGSize(width: (self.view.frame.width - 15) / 3, height: <#T##CGFloat#>)
        
        
    }
}
