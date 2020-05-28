//
//  MVVM.swift
//  Covid19
//
//  Created by HAKAN K on 5/28/20.
//  Copyright © 2020 HAKAN K. All rights reserved.
//

import Foundation


class MVVMListView: ObservableObject {
    
    @Published var MVVMListMod = [MVVMDetailView]()
    
    init() {
        
        WebServices().getCovidData { MVVMListMod in
            
            if let MVVMListMod = MVVMListMod {
                DispatchQueue.main.async {
                     self.MVVMListMod = MVVMListMod.map(MVVMDetailView.init)
                }
                
            }
            
        }
    }
    

}
    
struct MVVMDetailView: Identifiable {
    
    let id: UUID = UUID()
    
    let covid19:CovidData
    
    init(covid19: CovidData) {
        
        self.covid19 = covid19
    }
    
    var state: String {
        self.covid19.state
    }
    
    var death: Int {
        self.covid19.death
    }
    
    var total: Int {
        self.covid19.total
    }
    var recovered: Int {
        self.covid19.recovered ?? 0
    }
    var hospitalized: Int {
        self.covid19.recovered ?? 0
    }
    

}
