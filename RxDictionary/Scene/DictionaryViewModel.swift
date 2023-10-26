//
//  DictionaryViewModel.swift
//  RxDictionary
//
//  Created by Uslu, Teyhan on 26.10.2023.
//

import Foundation
import RxSwift
import RxCocoa

class DictionaryViewModel {
    var view: DictionaryViewController?
    
    
    // listing data array observe by rxswift
    public var dataArray : BehaviorRelay<[WordResponseElement]> = BehaviorRelay(value: [])

    private let disposeBag = DisposeBag()
    
    init() {
        self.getMeaning()
    }
    
}

extension DictionaryViewModel {
    func getMeaning(_ isLoading: Bool = false) {
        view?.spinner.startAnimating()
        Service.shared.fetchMeaning()
        
    }
}
