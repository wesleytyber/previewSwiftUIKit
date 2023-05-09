//
//  Preview.swift
//
//
//  Created by Wesley Calazans on 09/05/23.
//

#if canImport(SwiftUI) && DEBUG
import SwiftUI

public struct UIViewPreview<View: UIView>: UIViewRepresentable {
    let view: View
    
    public init(_ builder: @escaping () -> View) {
        view = builder()
    }
    
    public func makeUIView(context: Context) -> View {
        return view
    }
    
    public func updateUIView(_ view: View, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
#endif

#if canImport(SwiftUI) && DEBUG
import SwiftUI

public struct UIViewControllerPreview<HomeController: UIViewController>: UIViewControllerRepresentable {
    
    let viewController: HomeController
    
    public init(_ builder: @escaping () -> HomeController) {
        viewController = builder()
    }
    
    public func makeUIViewController(context: Context) -> HomeController {
        return viewController
    }
    
    public func updateUIViewController(_ uiViewController: HomeController,
                      context: UIViewControllerRepresentableContext<UIViewControllerPreview<HomeController>>) {
        return
    }
}
#endif
