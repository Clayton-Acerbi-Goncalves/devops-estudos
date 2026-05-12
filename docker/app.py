from http.server import HTTPServer, BaseHTTPRequestHandler

class Handler(BaseHTTPRequestHandler):
   def do_GET(self):
      self.send_response(200)
      self.end_headers()
      self.wfile.write(b"Hello from Clayton's Docker container - CI/CD working!")

HTTPServer(('0.0.0.0', 8080), Handler).serve_forever()
