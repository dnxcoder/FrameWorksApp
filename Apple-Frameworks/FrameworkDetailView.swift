//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Denis Coder on 1/20/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack{
            
            HStack(){
                Spacer()
                Button{
                    isShowingDetailView = false;
                    print("opa")
                } label: {
                   Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            AFButton(title: "Learn More")
        }
        .padding()
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
