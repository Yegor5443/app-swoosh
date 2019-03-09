//
//  ViewController.swift
//  app-swoosh
//
//  Created by Егор Меховской  on 2/28/19.
//  Copyright © 2019 Yehor Mekhovskyi. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var swooshLogo: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        swooshLogo.frame = CGRect(x: view.frame.size.width / 2 - swooshLogo.frame.size.width / 2, y: 50, width: swooshLogo.frame.size.width,
                                  height: swooshLogo.frame.size.height)
        bgImg.frame = view.frame
    }
    @IBAction func segueIdentif (segue: UIStoryboardSegue){
        
    }

}

