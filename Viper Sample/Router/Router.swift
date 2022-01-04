//
//  Router.swift
//  Viper Sample
//
//  Created by JeyaVignesh on 20/07/20.
//  Copyright © 2020 Jeya Vignesh. All rights reserved.
//

import Foundation
import UIKit

class Router {
    
    weak var view: UIViewController?
    
    static func setUpModule() -> ViewController {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as ViewController
        let presenter = Presenter()
        let interactor = Interactor()
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        interactor.presenter = presenter
        presenter.view = viewController
        
        return viewController

    }
}
