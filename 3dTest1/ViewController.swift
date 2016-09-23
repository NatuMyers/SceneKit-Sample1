//
//  ViewController.swift
//  3dTest1
//
//  Created by NatuMyers on 2016-09-21.
//  Copyright © 2016 NatuMyers. All rights reserved.
//  https://code.tutsplus.com/tutorials/an-introduction-to-scenekit-fundamentals--cms-23847

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
        
        // scene
    
        let sceneView = SCNView(frame: self.view.frame) //SCNView object passed to a sceneView Constant
        
        self.view.addSubview(sceneView) //this constant is added as a SCNview constant

        let scene = SCNScene() // the SCNScene passed into a constant called scene
        
        sceneView.scene = scene
        
        // cam
        
        let camera = SCNCamera() // the SCNCamera passed into a constant called camera
        
        let cameraNode = SCNNode() // straight forward......
        
        cameraNode.camera = camera
        
        cameraNode.position = SCNVector3(x: -40.0, y: 3.0, z: 3.0)
        
        // light
        
        let light = SCNLight()
        
        light.type = SCNLightTypeOmni // SCNLightTypeOmni. This light type distributes light evenly in all directions from a point in 3D space. You can think of this light type as a regular light bulb.
        
        let lightNode = SCNNode()
        
        lightNode.light = light
        
        lightNode.position = SCNVector3(x: 1.5, y: 1.5, z: 1.5)
        
        // shapes we made
        
        // cube
        let cubeGeometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let cubeNode = SCNNode(geometry: cubeGeometry)
        
        //plane
        
        let planeGeometry = SCNPlane(width: 50.0, height: 50.0)
        let planeNode = SCNNode(geometry: planeGeometry)
        planeNode.eulerAngles = SCNVector3(x: GLKMathDegreesToRadians(-90), y: 0, z: 0)
        planeNode.position = SCNVector3(x: 0, y: -0.5, z: 0)
        
        // Euler angels:
        
        
        // Finsh up scene
        
        scene.rootNode.addChildNode(lightNode)
        
        scene.rootNode.addChildNode(cameraNode)
        
        scene.rootNode.addChildNode(cubeNode)
        
        scene.rootNode.addChildNode(planeNode)
        
        // Add camera constraints
        
        let constraint = SCNLookAtConstraint(target: cubeNode) // forces cam to stare here
        
        constraint.gimbalLockEnabled = true
        
        cameraNode.constraints = [constraint]
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

