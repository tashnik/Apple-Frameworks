//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Tashnik on 11/28/20.
//

import SwiftUI


final class FrameworkDetailViewModel: ObservableObject {
  
  let framework: Framework
  
  var isShowingDetailView: Binding<Bool>
  @Published var isShowingSafariView = false
  
  init(framework: Framework, isShowingDetailView: Binding<Bool>) {
    self.framework = framework
    self.isShowingDetailView = isShowingDetailView
  }
}
