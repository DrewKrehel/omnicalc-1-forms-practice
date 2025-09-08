Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  # get("/your_first_screen", { :controller => "pages", :action => "first" })
  
  # root "calc#index"
  get "/square", to: "calc#square"
  get("/", { :controller => "calc", :action => "square" })
  
end
