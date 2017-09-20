defmodule NeagoraWeb.PageController do
  use NeagoraWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
