defmodule ReactPhoenix.PageController do
  use ReactPhoenix.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
