  
import UIKit

  
  //URL -웹 리소스의 주소
  
let urlString = "https://itunes.apple.com/search?media=music&entity=song&term=Gdragon"
let url = URL(string: urlString)

  url?.absoluteString //url의 실제주소
  url?.scheme // http 프로토콜
  url?.host // itunes.apple.com
  url?.path // search
  url?.query // 쿼리에 대한 정보들(검색에 대한 조건들)
  url?.baseURL //

  
  let baseURL = URL(string: "https://itunes.apple.com")
  let relativeURL = URL(string: "search?media=music&entity=song&term=Gdragon", relativeTo: baseURL)

  relativeURL?.absoluteString //url의 실제주소
  relativeURL?.scheme // http 프로토콜
  relativeURL?.host // itunes.apple.com
  relativeURL?.path // search
  relativeURL?.query // 쿼리에 대한 정보들(검색에 대한 조건들)
  relativeURL?.baseURL //

  
  //URLComponents
var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")
  let mediaQuery = URLQueryItem(name: "media", value: "music")
  let entityQuery = URLQueryItem(name: "entity", value: "song")
  let termQuery = URLQueryItem(name: "term", value: "Gdragon")
  
  urlComponents?.queryItems?.append(mediaQuery)
  urlComponents?.queryItems?.append(entityQuery)
  urlComponents?.queryItems?.append(termQuery)

  
  urlComponents?.url
  urlComponents?.string
  urlComponents?.queryItems?.last?.value
