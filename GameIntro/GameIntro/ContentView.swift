//
//  ContentView.swift
//  GameIntro
//
//  Created by Joy on 2023/04/06.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    //MARK: GameScene
//    var scene: SKScene {
//        let scene = GameScene()
//        scene.size = CGSize(width: screenWidth, height: screenHeight)
//        scene.scaleMode = .fill
//        scene.backgroundColor = .white
//        return scene
//    }
//

    // MARK: TextScene
    var scene: SKScene {
        let scene = TextScene()
        scene.size = CGSize(width: screenWidth, height: screenHeight)
        scene.scaleMode = .fill
        scene.backgroundColor = .white
        return scene
    }
    
    var body: some View {
        VStack {
            SpriteView(scene: scene)
                .frame(width: screenWidth, height: screenHeight, alignment: .center)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
