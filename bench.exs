# Usage:
#
#     $ git clone git@github.com:wojtekmach/hexpm --branch wm-bench
#     $ cd hexpm
#     $ mix setup
#     $ mix run bench.exs

conn = Plug.Test.conn(:get, "/")
conn = HexpmWeb.Endpoint.call(conn, HexpmWeb.Endpoint.init([]))
200 = conn.status

conn = Plug.Test.conn(:get, "/packages/ecto")
conn = HexpmWeb.Endpoint.call(conn, HexpmWeb.Endpoint.init([]))
200 = conn.status
