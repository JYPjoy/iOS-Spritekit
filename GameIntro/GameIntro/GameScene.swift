//
//  GameScene.swift
//  GameIntro
//
//  Created by Joy on 2023/04/06.
//

import SpriteKit

class GameScene: SKScene{
    
    let square = SKSpriteNode()
    
    //1. Create a Sprite
    override func didMove(to view: SKView) {
        square.size = CGSize(width: 50, height: 50)
        square.position = CGPoint(x: 100, y: 100)
        square.color = .green
    
        addChild(square)
    }
    
    //2. Touch Location
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in: self)
            //square.position = location

            //3. Gliding Animation
            //let action = SKAction.move(to: location, duration: 1.0)
           //square.run(action)

            //4. Sequence Actions
            let move = SKAction.move(to: location, duration: 1.0)
            let rotate = SKAction.rotate(byAngle: 90.0, duration: 1.0)
            let sequence = SKAction.sequence([move, rotate])
            square.run(sequence)

        }
    }
    
    //5. Follow the Touch
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches {
//            let location = touch.location(in: self)
//            let move = SKAction.move(to: location, duration: 1.0)
//            square.run(move)
//        }
//    }
//
//    //6. Stop Touch
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let move = SKAction.move(to: CGPoint(x: 0, y: 0), duration: 1.0)
//        square.run(move)
//    }
    
}
