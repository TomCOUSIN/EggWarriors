//
//  UINode.swift
//  EggWarriors
//
//  Created by Tom Cousin on 26/02/2021.
//

import Foundation
import SpriteKit

class UINode: SKNode {

    // MARK: - Initializers

    /// Initializes a new instance of UINode with the provided position
    /// - Parameter position: The position of the UINode
    init(position: CGPoint) {
        super.init()

        self.position = position
    }

    /// Initializes a new instance of UINode with the provided x and y position
    /// - Parameters:
    ///   - positionX: x position of the UINode
    ///   - positionY: y position of the UINode
    convenience init(x positionX: CGFloat, y positionY: CGFloat) {
        self.init(position: CGPoint(x: positionX, y: positionY))
    }

    /// Initializes a new instance of UINode using the provided coder
    /// - Parameter aDecoder: NSCoder to use to initialize UINode class
    /// - Remark: Should not be used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
