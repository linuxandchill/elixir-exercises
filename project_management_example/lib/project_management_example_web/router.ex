defmodule ProjectManagementExampleWeb.Router do
  use ProjectManagementExampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :json_api do 
    plug :accepts, ["json_api"]
    plug JaSerializer.Deserializer 
  end

  scope "/api", ProjectManagementExampleWeb do
    pipe_through :api

    resources "/projects", ProjectController, only: [:index, :show]
    resources "/documents", DocumentController, only: [:index, :show]
  end
end
