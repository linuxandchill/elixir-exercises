defmodule SkedgeApiWeb.Router do
  use SkedgeApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", SkedgeApiWeb do
    pipe_through :api

    get "/users", UserController, :index
    get "/users/:id", UserController, :show
  end
end
