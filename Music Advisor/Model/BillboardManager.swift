//
//  BillboardManager.swift
//  Music Advisor
//
//  Created by Dawid Jóźwiak on 4/7/21.
//

import Foundation

struct BillboardManager{
    
    //URL with apikey already inserted in
    //APPLE REQUIRES HTTPS!!!
    let billboardURL = "https://billboard-api2.p.rapidapi.com/hot-100?rapidapi-key=9ea287a6d2msh771590f92a20f6dp1f7b18jsn967d1ead32a2"
    
    //current date
    let data = "2021-04-07"
    
    //returning URL
    func fetchChart(date: String){
        let urlString = "\(billboardURL)&date=\(date)&range=1-10"
        performRequest(urlString: urlString)
        print(urlString)
    }
    
    func performRequest(urlString: String){
        //First - Create URL
        if let url = URL(string: urlString){
            
        
        //Second - Create Session
        let session = URLSession(configuration: .default)
        //Third give session a task
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
                return
            }
           
            if let safeData = data{
              //Convert data to string
              //let dataString = String(data: safeData, encoding: .utf8)
                //self is needed in here
                self.parseJSON(chartData: safeData)
            }
        }
            //Fourth Start the task
            task.resume()
        }
        
      
      
        
    }
    //Parse JSON to decoded data
    func parseJSON(chartData: Data){
        let decoder = JSONDecoder()
        do{
            //decode data
            let decodedData = try decoder.decode(BillboardData.self, from: chartData)
            //save json decoded data into constants and assign them to object
            let rank = decodedData.content.one.rank
            let title = decodedData.content.one.title
            let artist = decodedData.content.one.artist
            let detail = decodedData.content.one.detail
            
            let first = BillboardModel(rank: rank, title: title, artist: artist, detail: detail)
            print(first.artist)
            print(first.detailImage)
        }catch{
            print(error)
        }
    }
    
    
}
