//
//  ColorfulViewOverlay.swift
//  Pods-XKColorfulMode_Example
//
//  Created by kenneth on 2022/12/6.
//

import UIKit

public struct XKOverlayView {
    private static let overlay = ColorfulViewOverlay.shared
}
public extension XKOverlayView {
    
    static func setColor(_ color: UIColor) {
        overlay.backgroundColor = color
    }
    
    static func display() {
        guard let window = UIApplication.shared.keyWindow, window.subviews.contains(overlay) == false else { return }
        overlay.frame = window.bounds
        window.addSubview(overlay)
    }
    
    static func dismiss() {
        overlay.removeFromSuperview()
    }
}

class ColorfulViewOverlay: UIView {
    static let shared = ColorfulViewOverlay()
    init() {
        super.init(frame: .zero)
        
        backgroundColor                           = .lightGray
        layer.compositingFilter                   = "saturationBlendMode"
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? { return nil }
}
