//
//  protocol.swift
//  Viper Sample
//
//  Created by JeyaVignesh on 20/07/20.
//  Copyright © 2020 Jeya Vignesh. All rights reserved.
//

import Foundation
import UIKit

protocol ViewToPresenterProtocols:class {
    func viewDidLoad(str:String)
}

protocol PresenterToInteractorProtocol {
    func setLabelText(text:String)
}

protocol InteractorToPresenterProtocol {
    func sendTextToView(text:String)
}

protocol PresenterToViewProtocol{
    func setupUI(text:String)
}
