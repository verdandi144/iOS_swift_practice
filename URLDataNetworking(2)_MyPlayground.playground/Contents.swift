//: A UIKit based Playground for presenting user interface
  
import UIKit

//URLSession - 네트워킹하기 위해 필요한 세션

//1. URLSessionConfiguration
//2. URLSession
//3. URLSessionTask를 이용해서 서버와 네트워킹

//URLSessionTask

// -dataTask
// -uploadTask
// -downloadTask


let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

//URL
var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")!
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "entity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "Gdragon")
  
urlComponents.queryItems?.append(mediaQuery)
urlComponents.queryItems?.append(entityQuery)
urlComponents.queryItems?.append(termQuery)
let requestURL = urlComponents.url! //느낌표 표현은 강제로 옵셔널을 벗겨내는것







struct Response: Codable {
    let resultCount: Int
    let tracks: [Track]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case tracks = "results"
    }
}


struct Track: Codable {  //Codable 쓰는 이유 : Json data를 우리가 원하는 스트럭트나 오브젝트 형태로 파싱할 때 유용하게 하기 위해서
    let title: String
    let artistName: String
    let thumbnailPath: String
    
    //파싱하는 데 쉽게 하기 위해서 맞춰주기
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artistName
        case thumbnailPath = "artworkUrl100"
    }
    
    
    //trackName
    //artistName
    //artworkUrl30
}









let dataTask = session.dataTask(with: requestURL) { (data, response, error) in guard error == nil else {return}
    
    guard let statusCode = (response as? HTTPURLResponse)?.statusCode else { return }
    let successRange = 200..<300
    
    guard successRange.contains(statusCode) else {
        //handle response error
        return
    }
    
    
    guard let resultData = data else { return }
    //데이터를 볼 수 있는 형태로 표시하기 위해
    let resultString = String(data: resultData, encoding: .utf8)
    
    
    
    
    //목표: 트랙리스트 오브젝트로 가져오기
    
    //하고싶은 욕구 목록
    // - Data -> Track 목록으로 가져오고 싶다 [Track]
    // -Track 오브젝트를 만들어야겠다
    // -Data 에서 struct로 파싱하고 싶다
    // - Json 파일, 데이터 > 오브젝트 (Codable 이용해야겠다)
    // - Response, Track 이렇게 두 개 만들어야겠다
    
    // 해야할일
    //-Response, Track의 struct 생성
    // -struct의 프로퍼티 이름과 실제 데이터의 키와 맞추기 (Codable 디코딩하게 하기 위해서) (codingkey랑 enum 이용)
    // -파싱하기 (Decoding)
    // -트랙리스트 가져오기
    
    
    

    
    //파싱 및 트랙 가져오기
    do {
        let decoder = JSONDecoder()
        let response = try decoder.decode(Response.self, from: resultData)
        let tracks = response.tracks
        
        print("-->tracks: \(tracks.count) -\(tracks.first?.title), \(tracks.first?.thumbnailPath)")
    } catch let error {
        print("--> error: \(error.localizedDescription)")
    }
    
    
//    print("---> result : \(resultData)")
//    print("---> result : \(resultString)")
}

//dataTask 실행
dataTask.resume()
