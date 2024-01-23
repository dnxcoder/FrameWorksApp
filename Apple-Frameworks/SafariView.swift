//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Denis Coder on 1/22/24.
//

import SwiftUI
import SafariServices


struct SafariView:UIViewControllerRepresentable {
    
    let url:URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
        SFSafariViewController  {
        SFSafariViewController(url: url)
    }
       
        
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
