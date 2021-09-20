//
//  ViewController.swift
//  BannerSlider
//
//  Created by Yavuz Selim Bitmez on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    private var data:[News]? {
        didSet{
            collectionView.reloadData()
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "BannerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell")
        initiliazeData()

    }
    
    func initiliazeData(){
        data?.append(News(image: "img1", title: "İlk saatlerden itibaren başladı! İşte İstanbul'da trafik"))
        data?.append(News(image: "img1-1", title: "-100 Kadıköy istikametinde yoğunluk olduğu görüldü. Kimi zaman ise trafik yer yer durma noktasına ge"))
        data?.append(News(image: "img1-2", title: "Öte yandan oluşan trafik yoğunluğu havadan görünt"))
        data?.append(News(image: "img1-3", title: "oktasına geldi. İlerleyen saatlerde trafik yoğunlunun artması"))
    }


}

extension ViewController:UICollectionViewDelegate {
    
}
extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell", for: indexPath) as! BannerCollectionViewCell
        cell.configure(data: (data?[indexPath.row])!)
        return cell
    }
    
    
}
