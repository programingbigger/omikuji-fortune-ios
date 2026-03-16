//
//  ContentView.swift
//  OmikujiApp
//
//  Created by なみふみ on 2026/03/16.
//

import SwiftUI

struct ContentView: View {
    @State var omikujiresult: String = "おみくじを引こう！"
    let omikujilist = ["大吉 😆", "中吉 😊", "小吉 👌", "吉 🙂", "凶 😅", "大凶 😇"] // 変更する必要がないため、定数
    
    var body: some View {
        VStack {
            // タイトル
            Text("おみくじ")
                .font(.largeTitle.bold())
                .padding()
            
            // 占い結果の表示
            Text(omikujiresult)
                .font(.title)
                .padding()
                .frame(width: 250, height: 200)
                .background(Color.yellow)
                .clipShape(RoundedRectangle(cornerRadius: 10)) // ボックスに丸みを出す
                .shadow(radius: 5) // 影
            
            // 占い実行ボタン
            Button {
                omikujiresult = omikujilist.randomElement() ?? "エラー" // おみくじが失敗したら、エラーが入る
            } label: {
                Text("おみくじを引く")
                    .font(.title2)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            // リセットボタン
            Button {
                omikujiresult = "おみくじを引こう！"
            } label: {
                Text("リセットボタン")
                    .font(.title2)
                    .padding()
            }


        }.padding()
    }
}

#Preview {
    ContentView()
}
