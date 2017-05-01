//
//  ImageController.swift
//  OpenCV
//
//  Created by Dmytro Nasyrov on 5/1/17.
//  Copyright © 2017 Pharos Production Inc. All rights reserved.
//

import UIKit

public final class ImageController: UIViewController {

    // MARK: - Variables
    
    lazy var mandrillImg = UIImage(named: "mandrill.png");
    lazy var sourceImgView: UIImageView = {
        let v = UIImageView(frame: .zero)
        v.contentMode = .scaleAspectFit
        v.isOpaque = true
        v.backgroundColor = UIColor.black
        
        return v
    }()
    lazy var resultImgView: UIImageView = {
        let v = UIImageView(frame: .zero)
        v.contentMode = .scaleAspectFit
        v.isOpaque = true
        v.backgroundColor = UIColor.black
        
        return v
    }()
    
    // MARK: - Life
    
    override public var prefersStatusBarHidden: Bool {
        return true
    }
    
    public override func loadView() {
        super.loadView()
        
        view.addSubview(sourceImgView)
        view.addSubview(resultImgView)
    }
    
    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        let width = view.bounds.width
        let height = view.bounds.height
        
        sourceImgView.frame = CGRect(x: 0.0, y: 0.0, width: width, height: ceil(height / 2.0))
        
        let sourceImgViewBottom = sourceImgView.frame.maxY;
        resultImgView.frame = CGRect(x: 0.0, y: sourceImgViewBottom, width: width, height: height - sourceImgViewBottom);
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        sourceImgView.image = mandrillImg;
        resultImgView.image = OpenCVWrapper.toGray(mandrillImg);
    }
}
