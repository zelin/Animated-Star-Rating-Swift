//
//  AnimatedStar.swift
//  Animated Star Rating
//
//  Created by Muhammad Umar on 25/06/2018.
//  Copyright © 2018 Neberox Technologies. All rights reserved.
//

import Foundation
import UIKit

class AnimatedStar : UIView
{
    /* Initial fillColor used to create star lobes */
    @IBInspectable var fillColor : UIColor       =  UIColor.white
    
    /* Selected Rating Color to fill the lobes */
    @IBInspectable var selectedColor : UIColor = UIColor.white //hexStringToUIColor("#f2b01e")
    
    /* The text size set in sp. Default is 18sp */
    @IBInspectable var fontSize : UIFont    = UIFont.systemFont(ofSize: 18);
    /* Padding used to move Text around the lobe. Ranging from 0 to 1 */
    @IBInspectable var textPadding : Float  = 0.5;
    /* Initial text color to be drawn over the initial lobes. Default is gray */
    @IBInspectable var textColor : UIColor       =  UIColor.lightGray
    /* Final text color to be drawn over the rated lobes. Default is white */
    @IBInspectable var selectedTextColor : UIColor       =  UIColor.white
    
    /* Stroke width around each lobe. The stroke will work only on initial generated lobes with 0 Rating */
    @IBInspectable var strokeWidth : Int     = 1;
    /* Color of stroke. Default is Light Gray */
    @IBInspectable var strokeColor : UIColor       =  UIColor.lightGray
    /* Animation duration of adding color to selected lobs. */
    @IBInspectable var animDuration : Int = 200;
    
    
    func initalize()
    {
        let img: UIImageView;
        img.tintColor = 0;
    }
    
    /**
     * @param mFillColor Set the Initial Fill color for generating non rated lobes. Default is white.
     */
    public func setFillColor(fillColor: UIColor)
    {
        self.fillColor = fillColor;
    }
    
    /**
     * @param mSelectedColor Set the Final Fill color for generating rated lobes. Default is #f2b01e
     */
    public func setSelectedColor(selectedColor: UIColor)
    {
        self.selectedColor = selectedColor;
    }
    
    /**
     * @param mTextSize Sets the text size of the rating points to be drawn on the lobes. Default is 18sp
     */
    public func setTextFont(textFont : UIFont)
    {
        self.fontSize = textFont;
    }
    
    /**
     * @param mTextPadding Padding given to text to be placed inside lobe. Default is 0.5 (Middle of the lobe).
     *                     Range should be less or equal to 1.0f
     */
    public func setTextPadding(textPadding: Float)
    {
        self.textPadding = textPadding;
    }
    
    /**
     *
     * @param mTextColor Color of the text to be drawn over non rated lobes. Default is light gray
     */
    public func setTextColor(textColor: UIColor)
    {
        self.textColor = textColor;
    }
    
    /**
     *
     * @param mSelectedTextColor Color of the text to be drawn over rated lobes. Default is white
     */
    public func setSelectedTextColor(selectedTextColor: UIColor)
    {
        self.selectedTextColor = selectedTextColor;
    }
    
    /**
     *
     * @param mStrokeWidth  Stroke width size over the un rated lobes. Default is light gray.
     */
    public func setStrokeWidth(strokeWidth: Int)
    {
        self.strokeWidth = strokeWidth;
    }
    
    /**
     *
     * @param mStrokeColor Stroke color over the un rated lobes. Default is light gray.
     */
    public func setStrokeColor(strokeColor : UIColor)
    {
        self.strokeColor = strokeColor;
    }
    
    /**
     *
     * @param mAnimDuration Animation duration over which rated lobes are generated. Default is 200 milliseconds
     */
    public func setAnimDuration(animDuration: Int)
    {
        self.animDuration = animDuration;
    }
    
    /**
     *
     * @param rating Set current rating
     */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func hexStringToUIColor (hex:String) -> UIColor
    {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#"))
        {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6)
        {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

