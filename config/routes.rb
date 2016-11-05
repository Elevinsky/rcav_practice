Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square/:number", { :controller => "calculations", :action => "square" })

end
