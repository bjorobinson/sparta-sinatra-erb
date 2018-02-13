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
  $books = [{
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

  #Pages
  #Landing Page
  get '/' do
    "Landing Page"
  end

  #Index
  get '/books' do
    erb :'books/index'
  end

  #New
  get '/books/new' do
    "New Page"
  end

  #Show
  get '/books/:id' do
    id = params[:id]
    "Book id: #{id}"
  end

  #Create
  post '/books' do
    "Create"
  end

  #Update
  put '/books' do
    "Update"
  end

  #Delete
  delete '/books/:id' do
    "Delete"
  end

  #Edit
  get '/books/:id/edit' do
    id = params[:id]
    "Edit Book id: #{id}"
  end
end
