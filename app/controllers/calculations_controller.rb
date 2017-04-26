class CalculationsController <ApplicationController

  def flexible_square

    @user_num = params[:number].to_f
    render("calculations/flexible_square.html.erb")

  end

  def flexible_square_root
    @user_num = params[:number].to_f
    render("calculations/flexible_square_root.html.erb")
  end

  def flexible_payment
    @user_rate = params[:user_rate].to_f
    @user_years = params[:user_years].to_f
    @user_principal = params[:user_principal].to_f
    @monthly_rate = @user_rate/10000/12
    @months = @user_years*12
    @user_payment =(@monthly_rate*(@user_principal))/(1-(1+@monthly_rate)**(-@months))
    render("calculations/flexible_payment.html.erb")
  end

  def random
    render("calculations/random.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square_result
    @user_num = params[:user_num].to_f
    render("calculations/square_result.html.erb")
  end

  def root_form
    render("calculations/root_form.html.erb")
  end

  def root_result
    @user_num = params[:user_num].to_f
    render("calculations/root_result.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment_result
    @user_rate = params[:user_rate].to_f
    @user_years = params[:user_years].to_f
    @user_principal = params[:user_principal].to_f
    @monthly_rate = @user_rate/100/12
    @months = @user_years*12
    @payment = (@monthly_rate*(@user_principal))/(1-(1+@monthly_rate)**(-@months))
    render("calculations/payment_result.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end

  def random_result
    @user_min = params[:user_min].to_i
    @user_max = params[:user_max].to_i
    @user_random = rand(@user_min..@user_max)
    render("calculations/random_result.html.erb")
  end

end
