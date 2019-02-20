require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do 
    @name = params[:name]
    "Goodbye, #{@name}."
  end 
  # Code your final two routes here:
  
  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1 * @num2}"
  end

end

# get '/goodbye/:name, 
# a dynamic route that returns "Goodbye, (person's name).", a string. For example, navigating to localhost:9393/goodbye/jerome should display Goodbye, jerome.

# A dynamic route starting with /multiply 
# that accepts two params (num1 and num2) and returns the product of the two numbers.