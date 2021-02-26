//
//  UIRectangle.swift
//  EggWarriors
//
//  Created by Tom Cousin on 26/02/2021.
//

import Foundation
import SpriteKit

class UIRectangle: UINode {

    // MARK: - Properties

    /// The rectangle of the UIRectangle
    private var _rectangle: SKSpriteNode

    /// The size of the UIRectangle
    private var _size: CGFloat

    // MARK: - Initializers

    /// Initializes a new instance of UIRectangle with the provided position, size and color
    /// - Parameters:
    ///   - position: The postion of the UIRectangle
    ///   - size: The size of the UIRectangle
    ///   - color: The color of the UIRectangle
    init(position: CGPoint, size: CGFloat, color: SKColor) {

        self._size = size
        self._rectangle = SKSpriteNode(
            color: color,
            size: CGSize(width: self._size, height: 30)
        )

        super.init(position: position)

        self.addChild(self._rectangle)
    }

    /// Initializes a new instance of UIRectangle with the provided position, size and color
    /// - Parameters:
    ///   - positionX: The x position of the UIRectangle
    ///   - positionY: The y position of the UIRectangle
    ///   - size: The size of the UIRectangle
    ///   - color: The color of the UIRectangle
    convenience init(x positionX: CGFloat, y positionY: CGFloat, size: CGFloat, color: SKColor) {
        self.init(
            position: CGPoint(x: positionX, y: positionY),
            size: size,
            color: color
        )
    }

    /// Initializes a new instance of UIRectangle using the provided coder
    /// - Parameter aDecoder: NSCoder to use to initialize UIRectangle class
    /// - Remark: Should not be used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Getter & Setter

    /// Set the color of the UIRectangle
    /// - Parameter color: The new color of the UIRectangle
    func setColor(color: SKColor) {

        self._rectangle.color = color
    }

    // MARK: - Methods

    /// Resize the UIRectangle
    /// - Parameter newSize: The new size of the UIRectangle
    func resize(size newSize: CGFloat) {

        let resizeAction = SKAction.resize(toWidth: newSize, duration: 0.1)

        self._rectangle.run(resizeAction)
    }
}
