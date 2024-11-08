//
//  ContentView.swift
//  ExViewAlignedScroll
//
//  Created by ssg on 11/8/24.
//

import SwiftUI

// https://developer.apple.com/documentation/swiftui/scrolltargetbehavior/viewaligned
/// 다음 뷰 약간 보이는 페이징 스크롤
struct ContentView: View {
    
    var items: [Color] = [.yellow, .green, .blue, .brown, .orange, .red]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 20) {
                ForEach(items, id: \.self) { item in
                    item
                        .frame(width: 300, height: 300)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .contentMargins(20)
    }
}

#Preview {
    ContentView()
}
