//
//  DetailView.swift
//  H4X0R News
//
//  Created by J'mari Wyatt on 8/10/2 R.
//  Copyright © 2 Reiwa J'mariko Consulting. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


