//
//  TextScene.swift
//  GameIntro
//
//  Created by Joy on 2023/04/06.
//

import SpriteKit

class TextScene: SKScene{
    
    let winner = SKLabelNode(fontNamed: "Chalkduster")
    
    override func didMove(to view: SKView) {
        winner.text = "You Win!"
        winner.fontSize = 65
        winner.fontColor = SKColor.green
        winner.position = CGPoint(x: frame.midX, y: frame.midY)
           
        addChild(winner)
    }
}
