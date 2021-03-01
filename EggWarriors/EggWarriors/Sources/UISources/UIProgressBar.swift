//
//  UIProgressBar.swift
//  EggWarriors
//
//  Created by Tom Cousin on 01/03/2021.
//

import Foundation
import SpriteKit

class UIProgressBar: UINode {

    // MARK: - Properties

    /// The maximum value of the UIProgressBar
    private var _maximum: CGFloat

    /// The actual state of the UIPRogressBar
    private var _actualState: CGFloat

    /// The background rectangle of the UIProgressBar
    private var _backgroundRectangle: UIRectangle

    /// The foreground rectangle of the UIProgressBar
    private var _foregroundRectangle: UIRectangle

    // MARK: - Initializers

    /// Initializes a new instance of UIProgressBar with the provided position, value and color
    /// - Parameters:
    ///   - position: The position of the UIProgressBar
    ///   - maximumValue: The maximum value of the UIProgressBar
    ///   - color: The color of the UIProgressBar
    init(position: CGPoint, value maximumValue: CGFloat, color: SKColor) {

        self._maximum = maximumValue
        self._actualState = self._maximum

        self._backgroundRectangle = UIRectangle(position: position, size: self._maximum, color: SKColor.black)
        self._foregroundRectangle = UIRectangle(position: position, size: self._actualState, color: color)

        super.init(position: position)

        self.addChild(_backgroundRectangle)
        self.addChild(_foregroundRectangle)
    }

    /// Initializes a new instance of UIProgressBar with the provided position, value and color
    /// - Parameters:
    ///   - positionX: The x position of the UIProgressBar
    ///   - positionY: The y position of the UIProgressBar
    ///   - maximumValue: The maximum value of the UIProgressBar
    ///   - color: The color of the UIProgressBar
    convenience init(x positionX: CGFloat, y positionY: CGFloat, value maximumValue: CGFloat, color: SKColor) {
        self.init(position: CGPoint(x: positionX, y: positionY), value: maximumValue, color: color)
    }

    /// Initializes a new instance of UIProgressBar using the provided coder
    /// - Parameter aDecoder: NSCoder to use to initialize UIProgressBar class
    /// - Remark: Should not be used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Methods

    /// Increase the current value of the UIProgressBar and re-render
    /// - Parameter amount: The amount to increase
    func increase(amount: CGFloat) {

        self._actualState += amount

        if self._actualState > self._maximum {
            self._actualState = self._maximum
        }

        self.updateProgressBar()
    }

    /// Decrease the current value of the UIProgressBar and re-render
    /// - Parameter amount: The amount to decrease
    func decrease(amount: CGFloat) {

        self._actualState -= amount

        if self._actualState < 0 {
            self._actualState = 0
        }

        self.updateProgressBar()
    }

    /// Reset the current state of the UIProgressBar
    func reset() {

        self._actualState = self._maximum

        self.updateProgressBar()
    }

    /// Update the foreground rectangle when the value of the UIProgressBar is updated
    private func updateProgressBar() {
        self._foregroundRectangle.resize(size: self._actualState)
    }
}
