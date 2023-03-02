//
//  OnboardingView.swift
//  Fructus
//
//  Created by Seungchul Lee on 2023/02/27.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits:[Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0..<fruits.count]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
