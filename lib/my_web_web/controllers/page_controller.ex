defmodule MyWebWeb.PageController do
  use MyWebWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
