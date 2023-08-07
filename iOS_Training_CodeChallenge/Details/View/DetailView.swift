//
//  DetailView.swift
//  iOS_Training_CodeChallenge
//
//  Created by Dhivya on 04/08/23.
//

import Foundation
import SwiftUI

struct DetailView: View {
    @StateObject var viewModel = DetailViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.races, id: \.self) { race in
                    Section(race.name) {
                        ForEach(race.results, id: \.self) { result in
                            HStack(alignment: .center) {
                                Text(result.driver.givenName)
                                Text(result.driver.familyName)
                                    .bold()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Race Results")
        }
    }
}
