//
//  ContentView.swift
//  KyuCam
//
//  Created by leo on 2021/09/11.
//

import SwiftUI
import Foundation
import AVFoundation
import UIKit

struct ContentView: View {
    @State var isPresented = true
    
    var body: some View {
        CamView()
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
    }
    
    struct CamView: View {
        var body: some View {
            ZStack {
                CameraView()
//                Text("")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.pink)
        }
    }
}



public func setForceOrientationLandscapeRight(on: Bool) {
    
    if on {
        print("ON setForceOrientationLandscapeRight setForceOrientationLandscapeRight setForceOrientationLandscapeRight")
//        selive.appGlobalState.lockDeviceOrientation = true
//        selive.appGlobalState.deviceOrientation.value = .landscapeRight
//        AppDelegate.orientationLock = UIInterfaceOrientationMask.landscapeRight
        UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
//            UINavigationController.attemptRotationToDeviceOrientation()
    } else {
        print("OFF setForceOrientationLandscapeRight setForceOrientationLandscapeRight setForceOrientationLandscapeRight")
//        selive.appGlobalState.lockDeviceOrientation = false
//        selive.appGlobalState.deviceOrientation.value = .portrait
//        AppDelegate.orientationLock = .allButUpsideDown
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
//            UINavigationController.attemptRotationToDeviceOrientation()
    }
}
