//
//  ViewController.swift
//  Viper Sample
//
//  Created by JeyaVignesh on 20/07/20.
//  Copyright © 2020 Jeya Vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var presenter:ViewToPresenterProtocols?
    

    @IBOutlet weak var lbl: UILabel!
    var lbltext:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func btntapped(_ sender: Any) {
        if let lbltext = lbl.text{
            presenter?.viewDidLoad(str: lbltext)
        }
    }
}

extension ViewController: PresenterToViewProtocol {
    func setupUI(text:String = LabelText.lblYes) {
        lbl.text = text
    }
}

