defmodule MyWebWeb.MyCvController do
  use MyWebWeb, :controller

  def mycv(conn, _params) do
    cv_path = Application.app_dir(:my_web, "priv/static/Peter Chileshe`CV.pdf")

    conn
    |> put_resp_content_type("application/pdf")
    |> put_resp_header("content-disposition", "attachment; filename=\"Peter Chileshe`CV.pdf\"")
    |> send_file(200, cv_path)
  end
end
