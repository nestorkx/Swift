//
//  HomeViewController.swift
//  launchScreen
//
//  Created by Nestor Kauil on 01/08/18.
//  Copyright © 2018 Nestor Kauil. All rights reserved.
//

import UIKit
import LBTAComponents
import RevealingSplashView

class HomeViewController: UIViewController {
    
    // Esta es la primera pantalla como lista de opciones
    // Que se ve como tipo Youtube
    let background: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "DummyYouTubeImage")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViews()
        
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (timer) in
            // Enviar notificacion aqui
            NotificationCenter.default.post(name: heartAttackNotificationName, object: nil)
        }
    }
    
    func setupViews(){
        //Se agregan la vista la pantalla principal
        view.addSubview(background)
      
        background.fillSuperview()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
