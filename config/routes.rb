Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  # get("/your_first_screen", { :controller => "pages", :action => "first" })
  
  # root "calc#index"
  get "/", to: "calc#square"
  get "/square/new", to: "calc#square"
  get "/square/results", to: "calc#square_action"
  get "/square_root/new", to: "calc#square_root"
  get "/square_root/results", to: "calc#square_root_action"
  get "/payment/new", to: "calc#payment"
  get "/payment/results", to: "calc#payment_action"
  get "/random/new", to: "calc#random"
  get "/random/results", to: "calc#random_action"

  # get("/", { :controller => "calc", :action => "index" })
  
end
