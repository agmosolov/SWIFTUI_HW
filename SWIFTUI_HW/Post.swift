//
//  Post.swift
//  SWIFTUI_HW
//
//  Created by Александр Мосолов on 02.11.2025.
//


import SwiftUI

struct Post: Identifiable {
    
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
    let area: Double
    
}
