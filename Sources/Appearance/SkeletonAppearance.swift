//  Copyright © 2017 SkeletonView. All rights reserved.

import UIKit

public protocol Appearance {
    var multilineHeight: CGFloat { get set }
    var multilineSpacing: CGFloat { get set }
    var multilineLastLineFillPercent: Int { get set }
    var multilineCornerRadius: Int { get set }
    
    func tintColor(_ traitCollection: UITraitCollection) -> UIColor
    func gradient(_ traitCollection: UITraitCollection) -> SkeletonGradient
}

public enum SkeletonAppearance {
    public static var `default`: Appearance = SkeletonViewAppearance.shared
}

// codebeat:disable[TOO_MANY_IVARS]
class SkeletonViewAppearance: Appearance {
    static var shared = SkeletonViewAppearance()

    var multilineHeight: CGFloat = 15

    var multilineSpacing: CGFloat = 10

    var multilineLastLineFillPercent: Int = 70

    var multilineCornerRadius: Int = 0
    
    func tintColor(_ traitCollection: UITraitCollection) -> UIColor {
        return .skeletonDefault(traitCollection: traitCollection)
    }
    
    func gradient(_ traitCollection: UITraitCollection) -> SkeletonGradient {
        return SkeletonGradient(baseColor: .skeletonDefault(traitCollection: traitCollection))
    }
}
// codebeat:enable[TOO_MANY_IVARS]
