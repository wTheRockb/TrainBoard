{application,csvlixir,
             [{registered,[]},
              {description,"CSVLixir is a CSV reader/writer for Elixir. It operates on files and\nstrings.\n\nThe reader can read CSV files or CSV strings. Reading from files returns a\nstream of lists. Reading from strings returns a list of lists.\n\nThe writer transforms a (possibly lazy) list of lists into a stream of CSV\nstrings. It can also take a single list and return a single CSV string.\n"},
              {vsn,"2.0.3"},
              {modules,['Elixir.CSVLixir','Elixir.CSVLixir.FileReader',
                        'Elixir.CSVLixir.IOReader',
                        'Elixir.CSVLixir.StringReader',
                        'Elixir.CSVLixir.Writer']},
              {applications,[kernel,stdlib,elixir]}]}.