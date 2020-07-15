//
//  CoinManager.swift
//  ByteCoin
//
//  Created by J'mari Wyatt on 11/09/2019.
//  Copyright © 2019 J'mariko Consulting. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateCoin(price: String, currency: String)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "5713C634-F885-4E8C-8EA8-63D7B79E1686"
    
    var delegate: CoinManagerDelegate?
    
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        
        //creates the string for website using concatentation
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        
        //optional binding to unwrap the URL from the urlString
        if let url = URL(string: urlString) {
            
            //creates a new URLSession (object) w/ default settings
            let session = URLSession(configuration: .default)
            
            //creates a new data task for the url.
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    if let bitcoinPrice = self.parseJSON(safeData) {
                        let priceString = String(format: "%.2f", bitcoinPrice)
                        
                //Call the delegate method in the delegate (ViewController) and pass the data
                        self.delegate?.didUpdateCoin(price: priceString, currency: currency)
                    }
                }
                
                
            }
            
            //Starts the task of fetching data from bitcoin servers.
            task.resume()
        }

    }
    
    func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: data)
            let lastPrice = decodedData.rate
            
            return lastPrice
        
        } catch {
            //delegate?.didFailWithError(error: error)
            return nil
        }
    }

   
}
