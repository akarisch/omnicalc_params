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
    @user_years = params[:years].to_f
    @user_principal = params[:principal].to_f
    @user_rateparams = params[:rate/100].to_f
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square_result
@user_num = params[:user_num].to_f
    render("calculations/square_result.html.erb")
  end
end
