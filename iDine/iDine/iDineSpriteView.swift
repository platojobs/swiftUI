//
//  iDineSpriteView.swift
//  iDine
//
//  Created by Jobs Plato on 2024/7/9.
//

import SwiftUI
import SpriteKit

struct iDineSpriteView: View {
    
    var scebe: SKScene {
        let sebe = PJMeScene()
        sebe.size = CGSize(width: 300, height: 400)
        sebe.scaleMode = .fill
        return sebe
    }
    
    var body: some View {
        SpriteView(scene: scebe)
            .frame(width: 300,height: 400)
            .ignoresSafeArea()
    }
}

#Preview {
    iDineSpriteView()
}


class PJMeScene: SKScene {
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return  }
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: .blue, size: CGSize(width: 30, height: 30))
        box.position = location
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 30, height: 30))
        addChild(box)
    }
}
