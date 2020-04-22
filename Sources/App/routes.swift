import HypertextLiteral
import Vapor

func routes(_ app: Application) throws {
  app.get("create-account") { _ -> HTML in
    #"""
    <html><body><b>hello</b>
    <ol>
    \#([1, 2, 3].map { "<li>\($0)</li>" as HTML })
    </ol>
    </body></html>
    """#
  }
}
