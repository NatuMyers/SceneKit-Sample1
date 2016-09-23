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
        
        /* Normally, but now we want a spot light to generate a shadow
         
        let light = SCNLight()
         
        light.type = SCNLightTypeOmni // SCNLightTypeOmni. This light type distributes light evenly in all directions from a point in 3D space. You can think of this light type as a regular light bulb.
        
        let lightNode = SCNNode()
        
        lightNode.light = light
        
        lightNode.position = SCNVector3(x: 1.5, y: 1.5, z: 1.5)
        
         */
        
        // spot light
        
        let spotLight = SCNLight()
        spotLight.type = SCNLightTypeSpot
        spotLight.spotInnerAngle = 30.0
        spotLight.spotOuterAngle = 80.0
        spotLight.castsShadow = true
        let spotLightNode = SCNNode()
        spotLightNode.light = spotLight
        spotLightNode.position = SCNVector3(x: 1.5, y: 1.5, z: 1.5)
        
        // ambientlight
        
        let ambientLight = SCNLight()
        ambientLight.type = SCNLightTypeAmbient
        ambientLight.color = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
        cameraNode.light = ambientLight
        
        // shapes we made
        
        // cube
        let cubeGeometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let cubeNode = SCNNode(geometry: cubeGeometry)
        
        //plane
        
        let planeGeometry = SCNPlane(width: 50.0, height: 50.0)
        let planeNode = SCNNode(geometry: planeGeometry)
        planeNode.eulerAngles = SCNVector3(x: GLKMathDegreesToRadians(-90), y: 0, z: 0)
        planeNode.position = SCNVector3(x: 0, y: -0.5, z: 0)
        
        // By changing the plane node's eulerAngles property, you rotate the plane backwards 90 degrees along the x axis. We need to do this, because planes are created vertically by default. In SceneKit, rotation angles are calculated in radians rather than degrees, but these values can be easily converted using the GLKMathDegreesToRadians(_:) and GLKMathsRadiansToDegrees(_:) functions. GLK stands for GLKit, Apple's OpenGL framework.
              
        // plane material
        
        let redMaterial = SCNMaterial()
        redMaterial.diffuse.contents = UIColor.redColor()
        cubeGeometry.materials = [redMaterial]
        
        let greenMaterial = SCNMaterial()
        greenMaterial.diffuse.contents = UIColor.greenColor()
        planeGeometry.materials = [greenMaterial]
        
        // For each SCNMaterial object, you assign its diffuse contents a UIColor value. The diffuse property of a material determines how it appears when under direct light. Note that the value assigned does not have to be a UIColor object. There are many other acceptable object types to assign to this property, such as UIImage, CALayer, and even a SpriteKit texture (SKTexture).
        
        // Finsh up scene
        
        scene.rootNode.addChildNode(spotLightNode)
        
        scene.rootNode.addChildNode(cameraNode)
        
        scene.rootNode.addChildNode(cubeNode)
        
        scene.rootNode.addChildNode(planeNode)
        
        // Add camera constraints
        
        let constraint = SCNLookAtConstraint(target: cubeNode) // forces cam to stare here
        
        constraint.gimbalLockEnabled = true
        
        cameraNode.constraints = [constraint]
        
        spotLightNode.constraints = [constraint]
        
        // To create the spot light, you first set the light's type to SCNLightTypeSpot. You then specify the spot light's inner and outer angles in degrees. The default values are 0 and 45 respectively. The inner angle determines how much area the light covers in direct light while the outer angle decides how much area is partially lit. The difference between these angles will become clear once you see the resulting scene. You then explicitly tell the light to cast shadows and also add the same SCNLookAtConstraint that you created for your camera earlier.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

