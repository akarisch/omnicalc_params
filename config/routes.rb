Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square"})

  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_square_root"})

  get("/flexible/payment/:user_rate/:user_years/:user_principal", {:controller => "calculations", :action => "flexible_payment"})

  get("flexible/random/:number", {:controller => "calculations", :action => "random"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})

  get("/square/square_result", {:controller => "calculations", :action => "square_result"})

  get("/square_root/new", {:controller => "calculations", :action => "root_form"})

  get("/square_root/root_result", {:controller => "calculations", :action => "root_result"})

  get("/payment/new", {:controller => "calculations", :action => "payment_form"})

  get("/payment/payment_result", {:controller => "calculations", :action => "payment_result"})

  get("/random/new", {:controller => "calculations", :action => "random_form"})

  get("/random/random_result", {:controller => "calculations", :action => "random_result"})

end
