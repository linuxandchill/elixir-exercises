defmodule A do
  def fetch(current_page) do
    response = get("/?page=#{current_page}")
    if response.total_pages == current_page do
      :ok
    else
      fetch(current_page + 1)
    end
  end

  # Sample function that acts like an HTTP GET request.
  def get(url) do
    IO.puts "GET #{url}"
    %{total_pages: 5}
  end
end
