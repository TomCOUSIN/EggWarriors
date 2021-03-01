//
//  UILabel.swift
//  EggWarriors
//
//  Created by Tom Cousin on 27/02/2021.
//

import Foundation
import SpriteKit

class UILabel: UINode {

    // MARK: - Properties

    /// The text of the UILabel
    private var _label: SKLabelNode

    // MARK: - Initializers

    /// Initializes a new instance of UILabel with the provided position and text
    /// - Parameters:
    ///   - position: The position of the UILabel
    ///   - text: The text of the UILabel
    init(position: CGPoint, text: String) {

        self._label = SKLabelNode(text: text)

        super.init(position: position)

        self.addChild(self._label)
    }

    /// Initializes a new instance of UILabel with the provided position and text
    /// - Parameters:
    ///   - positionX: The x position of the UILabel
    ///   - positionY: The y position of the UILabel
    ///   - text: The text of the UILabel
    convenience init(x positionX: CGFloat, y positionY: CGFloat, text: String) {
        self.init(position: CGPoint(x: positionX, y: positionY), text: text)
    }

    /// Initializes a new instance of UILabel using the provided coder
    /// - Parameter aDecoder: NSCoder to use to initialize UILabel class
    /// - Remark: Should not be used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Getter & Setter

    /// Set the text of the UILabel
    /// - Parameter newText: The new text of the UILabel
    func setText(text newText: String) {
        self._label.text = newText
    }

    /// Set the color of the UILabel
    /// - Parameter color: The new color of the UILabel
    func setColor(color: SKColor) {
        self._label.color = color
    }

    /// Set the font size of the UILabel
    /// - Parameter fontSize: The new font size of the UILabel
    func setFontSize(size fontSize: CGFloat) {
        self._label.fontSize = fontSize
    }

    /// Set the vertical alignment of the UILabel
    /// - Parameter alignement: The new vertical alignment of the UILabel
    func setVerticalAlignement(alignement: SKLabelVerticalAlignmentMode) {
        self._label.verticalAlignmentMode = alignement
    }

    /// Set the horizontal alignment of the UILabel
    /// - Parameter alignement: The new horizontal alignment of the UILabel
    func setHorizontalAlignement(alignement: SKLabelHorizontalAlignmentMode) {
        self._label.horizontalAlignmentMode = alignement
    }
}
