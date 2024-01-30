defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def user(conn, _params) do
    # creazione user
    users = [
      %{id: 1, name: "Chirs", email: "chirs@gmail.com"},
      %{id: 2, name: "John", email: "john@yahoo"}
    ]

    # render/3 ci fa da visualizzatore per gli users che passiamo
    render(conn, :users, users: users)
    # togliendo il layout: false, da una navbar con phoenix e la versione che stiamo usando.
    # aggiungiamo users: users e modifichiamo users.html per mostrarli nella pagina se vogliamo mostrarli come html.
  end

  def users(conn, _params) do
    # creazione user
    users = [
      %{id: 1, name: "Chirs", email: "chirs@gmail.com"},
      %{id: 2, name: "John", email: "john@yahoo"}
    ]

    # ci dice dal terminale se stiamo entrando della pagina users-
    IO.puts("Users functions hit!")

    json(conn, %{users: users})
    # così torniamo un Json
  end
end
