//
//  ViewController.swift
//  3dTest1
//
//  Created by NatuMyers on 2016-09-21.
//  Copyright © 2016 NatuMyers. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        /* 
         
         In the viewDidLoad method, we create a SCNView object,
         passing in the frame of the view controller's view.
         We assign the SCNView instance to a constant, sceneView,
         and add it as a subview of the view controller's view.
         
        */
        
        let sceneView = SCNView(frame: self.view.frame) //SCNView object passed to a sceneView Constant
        
        
        self.view.addSubview(sceneView) //this constant is added as a SCNview constant

        let scene = SCNScene()
        sceneView.scene = scene
        
        let camera = SCNCamera()
        let cameraNode = SCNNode()
        cameraNode.camera = camera
        cameraNode.position = SCNVector3(x: 0.0, y: 0.0, z: 3.0)
        
        let light = SCNLight()
        light.type = SCNLightTypeOmni
        let lightNode = SCNNode()
        lightNode.light = light
        lightNode.position = SCNVector3(x: 1.5, y: 1.5, z: 1.5)
        
        let cubeGeometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let cubeNode = SCNNode(geometry: cubeGeometry)
        
        scene.rootNode.addChildNode(lightNode)
        scene.rootNode.addChildNode(cameraNode)
        scene.rootNode.addChildNode(cubeNode)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

