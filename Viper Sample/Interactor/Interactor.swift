//
//  Interactor.swift
//  Viper Sample
//
//  Created by JeyaVignesh on 20/07/20.
//  Copyright © 2020 Jeya Vignesh. All rights reserved.
//

import Foundation

class Interactor:PresenterToInteractorProtocol {
    
    var presenter:InteractorToPresenterProtocol?
    
    func setLabelText(text:String){
        if text == LabelText.lblYes {
            presenter?.sendTextToView(text: LabelText.lblNo)
        }else {
            presenter?.sendTextToView(text: LabelText.lblYes)
        }
    }
}
