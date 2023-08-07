//
//  DetailViewModel.swift
//  iOS_Training_CodeChallenge
//
//  Created by Dhivya on 05/08/23.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    @Published var name: String
    @Published var races: [Race] = []
    @Published var config: Config? {
        didSet {
            races = config?.mrData.raceTable.races ?? []
        }
    }
    
    var disposables = Set<AnyCancellable>()
    
    init() {
        name = "Loading..."
        getData_CombineWay()
    }
    
    private func loadResult() {
        
    }
    
    func getData() {
        let urlReq = URLRequest(url: URL(string: "https://ergast.com/api/f1/2004/1/results.json")!)
        
        let task = URLSession.shared.dataTask(with: urlReq) { data, response, error in
            guard error == nil else {
                print("Error = \(error!)")
                return
            }
            
            guard let content = data else {
                print("Error  = Data error")
                return
            }
            
            let post = try? JSONDecoder().decode(Config.self, from: content)
            
            DispatchQueue.main.async {
                self.name = "Given Name & Family Name"
                self.config = post
            }
        }
        task.resume()
    }
    
    func getData_CombineWay() {
        let url = URL(string: "https://ergast.com/api/f1/2004/1/results.json")!
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase

        let task = URLSession.shared.dataTaskPublisher(for: url)
            .tryMap({ output in
                guard let response = output.response as? HTTPURLResponse, response.statusCode == 200 else {
                    throw HTTPError.statusCode
                }
                return output.data
            })
            .decode(type: Config.self, decoder: decoder)
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { [weak self] completion in
                guard let self = self else { return }
                switch completion {
                case .finished:
                    print("Success")
                case .failure(let error):
                    print(error)
                    self.name = error.localizedDescription
                }
            }, receiveValue: { [weak self] post in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    self.name =  "Given Name & Family Name"
                    self.config = post
                }
            })
                .store(in: &disposables)
    }
}
