//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Denis Coder on 1/21/24.
//

import SwiftUI


final class FrameworkGridViewModel: ObservableObject {
    // classes that are ObservableObject allows to broadcast its changes to other components
    // this way when we change values of isShowingDetailView on other places
    // this value will be broadcasted to those
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    //Publishing the variable will allow it to be broadcasted
    @Published var isShowingDetailView = false
}
