//
//  ContentView.swift
//  Covid19
//
//  Created by HAKAN K on 5/28/20.
//  Copyright © 2020 HAKAN K. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var model = MVVMListView()
    
    
    var body: some View {
        
        NavigationView {
        
        List(model.MVVMListMod, id: \.id)
            {
         Covid19 in
         
            HStack() {
                Text(Covid19.state)
                
                .padding()
                .background(Color.green)
                    .foregroundColor(Color.white)
                .clipShape(Circle())
                Spacer()
                
                VStack(){
                Text("Total Test : \(Covid19.total)")
                    .padding()
                    HStack() {
                        Text("Total Death: \(Covid19.death)")
                            
                        Text("Recovered: \(Covid19.recovered)")
                            
                        Text("Hospitalized: \(Covid19.death)")
                    }
               
                }
                Spacer()
            }

      }
            
        }
}
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
