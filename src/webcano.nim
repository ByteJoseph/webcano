

import std/httpclient


var client = newHttpClient()
stdout.write("Enter the target url(including https): ")
let url:string = readLine(stdin)
if url.len == 0:
  echo "Null !! Program finished"
else:
  echo "Fetching response..."
  var response = client.getContent(url)
  echo response
