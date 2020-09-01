//
//  ViewController.swift
//  UIScrollView
//
//  Created by 寇凤伟 on 2020/8/18.
//  Copyright © 2020 RX. All rights reserved.
//  UIScrollView  能滚动的视图控件 继承自UIView

import UIKit
import Foundation

class ViewController: UIViewController , UIScrollViewDelegate{
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var page: UIPageControl!
    //override  重写
    override func viewDidLoad() {
        
        ScrollShezhi()
        PageShezhi()
        
        scroll.delegate = self
        
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func PageShezhi(){
        page.frame = CGRect(x: 0, y: self.scroll.frame.maxY - 20, width: self.scroll.frame.width, height: 20)
        //page.backgroundColor = UIColor.systemBlue
       
        //  当前圆点颜色
        page.currentPageIndicatorTintColor = UIColor.systemGreen
        //  其他圆点颜色
        page.pageIndicatorTintColor = UIColor.systemOrange
        page.tintColor = UIColor.systemRed
        // 一共有多少个页面
        page.numberOfPages = 5
        // 当前在那个页上
        page.currentPage = 0
        view.addSubview(page)
        return
        
    }
    
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("aa")
    }
    // 滑动视图 ，当手指离开屏幕的时候，调用该方法
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let a = arc4random_uniform(100)
        print("滑动了，手指离开了！\(a)")
        
    }
    //
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let b = arc4random()
        print("有效滑动，手指离开了！\(b)")
    }
    // 当视图滚动到最顶端，执行该方法
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print("sssss")
    }
    //
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        print("qqqqqq")
        return true
    }
    // 视图滚动就调用
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //print("滚动滚动")
        page.currentPage  = Int(floor(scroll.contentOffset.x / scroll.frame.width))
    }
    @IBAction func PageClick(_ sender: UIPageControl) {
        scroll.contentOffset = CGPoint(x: CGFloat(page.currentPage) * scroll.frame.width, y: 0)
    }
    
    //  视图属性设置
    func ScrollShezhi(){
        
        let ViHeight = self.view.frame.height
    
        scroll.frame = self.view.frame
        scroll.frame = CGRect(x: 0, y: self.view.frame.maxY * CGFloat(0.25 / 2), width: self.view.frame.width, height: ViHeight * CGFloat(0.75))
        //  是否翻页
        scroll.isPagingEnabled = true
        
        
        let ScWiddth = scroll.frame.width
        let ScHeight = scroll.frame.height
        // 可以滚动的区域
        scroll.contentSize = CGSize(width: ScWiddth * 5, height: ScHeight)
    
        //  显示水平滚动条
        scroll.showsHorizontalScrollIndicator = true
        //  显示垂直滚动条
        scroll.showsVerticalScrollIndicator = true
        //  滚动条样式  白色（white） 黑色（black） 自动（default）
        
        //scroll.indicatorStyle = UIScrollView.IndicatorStyle.black
        //scroll.indicatorStyle = UIScrollView.IndicatorStyle.white
        scroll.indicatorStyle = UIScrollView.IndicatorStyle.default
        //  设置回弹效果
        scroll.bounces = true
        //  设置 scrillView可以滚动
        scroll.isScrollEnabled = true
        // 当scrollToTop = true 的时候 点击设备状态栏会自动滚动到顶部
        scroll.scrollsToTop = true
        //缩放的最小比例
        scroll.minimumZoomScale = 0.5
        //放大的最大比例
        scroll.maximumZoomScale = 2
        // 缩放回弹
        scroll.bouncesZoom = true
        
        ScrollTupian(ScWiddth: ScWiddth, ScHeight: ScHeight)
        
        return
        
    }
    // 设置显示的 内容
    func ScrollTupian(ScWiddth: CGFloat, ScHeight: CGFloat) {
        for i in 1...5{
            let imagesView = UIImageView(frame: CGRect(x: ScWiddth * CGFloat(i - 1), y: 0, width: ScWiddth, height: ScHeight))
            imagesView.image = UIImage(named: "bz\(i)")
            scroll.addSubview(imagesView)
            
        }
        return
    }
    
    
}

