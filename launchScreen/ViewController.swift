//
//  ViewController.swift
//  launchScreen
//
//  Created by Nestor Kauil on 01/08/18.
//  Copyright © 2018 Nestor Kauil. All rights reserved.
//

import UIKit
import LBTAComponents
import RevealingSplashView

class ViewController: UIViewController {
    
    // Esta es la primera pantalla con la lista de opciones
    // Que se ve como tipo Youtube
    let background: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "DummyYouTubeImage")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    // Este es el Splash, en el que se configura el icono, el color de fondo y el tamaño del icono
    let revealingSplashView = RevealingSplashView (iconImage: #imageLiteral(resourceName: "RevealingSplashViewIcon"), iconInitialSize: CGSize(width:123, height: 123), backgroundColor: UIColor(r:78, g:172, b:248))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViews()
    }
    
    func setupViews(){
        //Se agregan las 2 vistas la 1era pantalla y el Splash
        view.addSubview(background)
        view.addSubview(revealingSplashView)
        
        background.fillSuperview()
        // Efecto como el de Twitter, se agranda el icono
        revealingSplashView.animationType = .swingAndZoomOut
        
        
        revealingSplashView.startAnimation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

