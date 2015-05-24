defmodule ReactPhoenix.CommentController do
  use ReactPhoenix.Web, :controller

  plug :action

  alias ReactPhoenix.Comment

  def index(conn, _params) do
    render conn, "index.html"
  end

  def comments(conn, _params) do
    json conn, [
      %{author: "Pete Hunt", text: "This is one comment"},
      %{author: "Jordan Walke", text: "This is *another* comment"}
    ]
  end

  def create_comment(conn, params) do
    changeset = Comment.changeset(%Comment{}, params)
    if changeset.valid? do
      Repo.insert(changeset)
      send_resp(conn, 201, "Created")
    else
      send_resp(conn, 422, "Unprocessable Entity")
    end
  end
end
