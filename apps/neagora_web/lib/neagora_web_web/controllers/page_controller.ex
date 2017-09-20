defmodule NeagoraWebWeb.PageController do
  use NeagoraWebWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
