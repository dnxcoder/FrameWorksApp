//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Denis Coder on 1/21/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
