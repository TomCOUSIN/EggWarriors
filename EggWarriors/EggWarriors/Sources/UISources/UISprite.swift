//
//  UISprite.swift
//  EggWarriors
//
//  Created by Tom Cousin on 26/02/2021.
//

import Foundation
import SpriteKit

class UISprite: UINode {

    // MARK: - Properties

    /// The sprite of the UISprite
    private var _sprite: SKSpriteNode

    /// The texture of the UISprite
    private var _texture: SKTexture

    // MARK: - Initializers

    /// Initializes a new instance of UISprite with the provided position and texture
    /// - Parameters:
    ///   - position: The position of the UISprite
    ///   - texture: The texture of the UISprite
    init(position: CGPoint, texture: String) {

        self._texture = SKTexture(imageNamed: texture)
        self._sprite = SKSpriteNode(texture: self._texture)

        super.init(position: position)

        self.addChild(self._sprite)
    }

    /// Initializes a new instance of UISprite with the provided x and y position and texture
    /// - Parameters:
    ///   - positionX: x position of the UISprite
    ///   - positionY: y position of the UISprite
    ///   - texture: The texture of the UISprite
    convenience init(x poxitionX: CGFloat, y positionY: CGFloat, texture: String) {
        self.init(
            position: CGPoint(x: poxitionX, y: positionY),
            texture: texture)
    }

    /// Initializes a new instance of UISprite using the provided coder
    /// - Parameter aDecoder: NSCoder to use to initialize UISprite class
    /// - Remark: Should not be used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
