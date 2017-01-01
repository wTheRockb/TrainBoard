defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def test(conn, _params) do
    render conn, "test.html"
  end
  def index(conn, _params) do
    render conn, "index.html"
  end
end
