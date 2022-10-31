//
//  ViewController.swift
//  ColorizedAppByMe
//
//  Created by Дмитрий on 31.10.2022.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IB Outlets
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var valueForRedSlider: UILabel!
    @IBOutlet weak var valueForGreenSlider: UILabel!
    @IBOutlet weak var valueForBlueSlider: UILabel!
    
    
    @IBOutlet weak var mainView: UIView!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20
        
        setupSliders()
        
      
    }
// MARK: - IB Actions
   
    
    @IBAction func redSliderChangeColorForView() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        valueForRedSlider.text = (round((redSlider.value * 100)) / 100).formatted()
        
    }
    @IBAction func greenSliderChangeColorForView() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        valueForGreenSlider.text = (round((greenSlider.value * 100)) / 100).formatted()
    }
    @IBAction func blueSliderChangeColorForView() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        valueForBlueSlider.text = (round((blueSlider.value * 100)) / 100).formatted()
       
        
    }
    
    
    
// MARK: - Private Methods

    private func setupSliders() {
        
        valueForRedSlider.text = redSlider.value.formatted()
        valueForGreenSlider.text = greenSlider.value.formatted()
        valueForBlueSlider.text = blueSlider.value.formatted()
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
    }
}

