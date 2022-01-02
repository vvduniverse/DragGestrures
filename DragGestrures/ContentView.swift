//
//  ContentView.swift
//  DragGestrures
//
//  Created by Vahtee Boo on 02.01.2022.
//

import SwiftUI

struct DragGestureView: View {
    @State var isDragging = false

    var drag: some Gesture {
        DragGesture()
            .onChanged { _ in self.isDragging = true }
            .onEnded { _ in self.isDragging = false }
    }

    var body: some View {
        Circle()
            .fill(self.isDragging ? Color.red : Color.blue)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(drag)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
