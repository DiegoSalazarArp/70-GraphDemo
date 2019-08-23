//
//  BarGraph.swift
//  70-GraphDemo
//
//  Created by Diego Salazar Arp on 23-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation
import SwiftUI

struct BarGraph: View {
    
    let reports : [Report]
    
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline){
               
                ForEach(self.reports, id: \.self) { report in
                    BarView(report:report)
                    
                }
            }
            }
        }
    }
    
    struct BarGraph_Previews: PreviewProvider{
        static var previews: some View {
            BarGraph(reports: Report.all())
        }
    }



struct BarView: View {
    
    let report: Report
    
    @State private var showGraph: Bool = false
    
    var body: some View {
        
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)
        
        return  VStack {
            
            Text(String(format: "$%.2f", report.revenue))
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: self.showGraph ? CGFloat(yValue) : CGFloat(0))
                .onAppear {
                    withAnimation(.easeIn(duration: 2.0)) {
                        self.showGraph.toggle()
                    }
            }
            
            Text(report.year)
        }
    }
}
