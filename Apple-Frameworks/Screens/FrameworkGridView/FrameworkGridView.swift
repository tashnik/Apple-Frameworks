//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Tashnik on 11/8/20.
//

import SwiftUI

struct FrameworkGridView: View {
  
  @StateObject var viewModel = FrameworkGridViewModel()
  
  var body: some View {
    
    NavigationView {
      ScrollView {
        LazyVGrid(columns: viewModel.columns) {
          ForEach(MockData.frameworks) { framework in
            FrameworkTitleView(framework: framework)
              .onTapGesture {
                viewModel.selectedFramework = framework
              }
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
      .sheet(isPresented: $viewModel.isShowingDetailView, content: {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView))
      })
    }
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkGridView()
      .preferredColorScheme(.dark)
  }
}



