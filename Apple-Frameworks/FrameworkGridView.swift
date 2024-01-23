//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Denis Coder on 1/19/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    //instancing object FrameworkGridViewModel
    @StateObject var viewModal = FrameworkGridViewModel();
    
    let columns : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns:columns){
                    
                    ForEach(MockData.frameworks, id: \.id){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                            //setting the chosen framework object to our FrameworkGridViewModel
                                viewModal.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("Frameworks")
                .sheet(isPresented: $viewModal.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModal.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModal.isShowingDetailView)
                }
            
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .cornerRadius(20)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
