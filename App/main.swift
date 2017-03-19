import Vapor
import VaporPostgreSQL

let drop = Droplet(
 preparations: [User.self],
 providers: [VaporPostgreSQL.Provider.self]
)

drop.get("version") {request in
  if let db = drop.database?.driver as? PostgreSQLDriver {
    let version = try db.raw("SELECT version()")
    return try JSON(node: version)
  } else {
    return "no db connection"
  }
}

drop.run()
