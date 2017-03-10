import Vapor
import VaporPostgresSQL

let drop = Droplet()
let users = UserController()

try drop.resource("users", users)
try drop.addProvider(VaporPostgresSQL.Provider.self)

drop.get("/hello") {_ in
  return "Hello Vapor"
}

drop.run()
