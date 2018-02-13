class SiteController < Sinatra::Base

  #incantations
  # sets root of the parent directory tof the current file
  set :root, File.join(File.dirname(__FILE__),'..')
  # sets the view directory correctly
  set :view, Proc.new { File.join(root, "views") }

  #Configure local host such that a change to any code does not require server restart
  configure :development do
    register Sinatra::Reloader
  end

  #dummy Data
  $books[
    {
      id: 0,
      title: "Illiad",
      body: "Illiad_Body"
    },
    {
      id: 1,
      title: "Odyssey",
      body: "Odyssey_Body"
    },
    {
      id: 2,
      title: "Poetic Edda",
      body: "Poetic_Edda_Body"
    },
  ]

end
