defmodule MyWebWeb.Live.HomeLive.Index do
  use MyWebWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, active_tab: "skills")
    {:ok, socket}
  end

  @tabs ["skills", "experience", "education"]
  def handle_event("select_tab", %{"tab" => tab}, socket) when tab in @tabs do
    {:noreply, assign(socket, active_tab: tab)}
  end

end
