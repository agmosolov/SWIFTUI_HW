//
//  PieChartView.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 08.11.2025.
//

import SwiftUI

struct PieChartView: View {
    let posts: [Post]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ForEach(posts) { post in
                    HStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 20, height: 20)
                        Text(post.title)
                        Spacer()
                        Text("\(Int(post.area)) km²")
                    }
                    .padding(.horizontal)
                }
                
                PieChart(data: posts.map { $0.area }, labels: posts.map { $0.title })
                    .frame(width: geometry.size.width, height: geometry.size.width)
            }
        }
    }
}

struct PieChart: View {
       let data: [Double]
       let labels: [String]
       let colors: [Color] = [.blue, .green, .red, .orange, .purple] // Добавьте больше цветов, если необходимо

       var body: some View {
           ZStack {
               ForEach(data.indices, id: \.self) { index in
                   PieSliceView(startAngle: angle(at: index),
                                endAngle: angle(at: index + 1))
                       .fill(colors[index % colors.count]) // Используем цвета по индексу
               }
           }
       }
       
       private func angle(at index: Int) -> Angle {
           let total = data.reduce(0, +)
           let value = data.prefix(index).reduce(0, +)
           return .degrees(360 * value / total)
       }
   }

struct PieSliceView: Shape {
    var startAngle: Angle
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        path.move(to: center)
        path.addArc(center: center, radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        path.closeSubpath()
        return path
    }
}
