//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Tashnik on 11/10/20.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
  
  var selectedFramework: Framework? {
    didSet { isShowingDetailView = true }
  }
  
  @Published var isShowingDetailView = false
  
  let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
}
