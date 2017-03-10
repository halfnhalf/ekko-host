import Vapor
import HTTP

final class UserController {
    func index(_ request: Request) throws -> ResponseRepresentable {
        return try User.all().makeNode().converted(to: JSON.self)
    }

    func create(_ request: Request) throws -> ResponseRepresentable {
      
    }
}
