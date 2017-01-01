defmodule HelloPhoenix.PageView do
  use HelloPhoenix.Web, :view

  def handler_info(conn) do
    "Request Handled By: #{controller_module conn}.#{action_name conn}"
  end

  def format_headers(a) do
    ["Destination", "Trip #", "Origin", "Scheduled Time", "Estimated Arrival Time", "Track #", "Status"]
  end

  def page_requester() do
     (HTTPotion.get "http://developer.mbta.com/lib/gtrtfs/Departures.csv").body |> CSVLixir.parse |>  (fn [header | rows] -> [format_headers(header) | Enum.map(rows, fn ([a | [b |[c | [d |[e |[f | [g|[h | []]]]]]]]]) ->  [d |[c | [b |[DateTime.to_time(DateTime.from_unix!(String.to_integer(e))) |[DateTime.to_time(DateTime.from_unix!(String.to_integer(e)+String.to_integer(f))) | [g|[h | []]]]]]]] end)] end).()
  end
  
  def connection_keys(conn) do
    conn
    |> Map.from_struct()
    |> Map.keys()
  end
end
