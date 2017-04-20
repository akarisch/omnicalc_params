Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square"})

  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_square_root"})

  get("/flexible/payment/:rate/:years/:principal", {:controller => "calculations", :action => "flexible_payment"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})

  get("/square/square_result", {:controller => "calculations", :action => "square_result"})

end
