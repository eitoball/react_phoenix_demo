defmodule ReactPhoenix.CommentController do
  use ReactPhoenix.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def comments(conn, _params) do
    json conn, [
      %{author: "Pete Hunt", text: "This is one comment"},
      %{author: "Jordan Walke", text: "This is *another* comment"}
    ]
  end
end
