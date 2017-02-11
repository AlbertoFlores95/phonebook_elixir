defmodule PhonebookElixir.PageController do
  use PhonebookElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
