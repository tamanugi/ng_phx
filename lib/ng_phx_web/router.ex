defmodule NgPhxWeb.Router do
  use NgPhxWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", NgPhxWeb do
    pipe_through :api
  end
end
