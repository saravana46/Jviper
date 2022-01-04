//
//  Presenter.swift
//  Viper Sample
//
//  Created by JeyaVignesh on 20/07/20.
//  Copyright © 2020 Jeya Vignesh. All rights reserved.
//

import Foundation


class Presenter:ViewToPresenterProtocols {
    
    var interactor:PresenterToInteractorProtocol?
    var view:PresenterToViewProtocol?
    
    func viewDidLoad(str:String){
        interactor?.setLabelText(text: str)
    }
    
}

extension Presenter: InteractorToPresenterProtocol {
    func sendTextToView(text:String) {
        view?.setupUI(text:text)
    }
}


