import Combine
import Foundation

@available(iOS 13.0, *)
public struct SwURL {
    
    private static let networker = Networker()
    
    static func requestDecodable<T: Decodable>(from url: URL,
                                        decoder: JSONDecoder = JSONDecoder()) -> AnyPublisher<T, Error> {
       return networker.requestDecodable(from: url, decoder: decoder)
    }
    
    public static func setImageCache(type: ImageCache) {
        ImageLoader.shared.cache = type.cache
    }
}
