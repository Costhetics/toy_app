class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    rand_num = Random.new.rand(0..2)
    puts rand_num
    if(rand_num < 1)
      render html: "¡Hola, Mundo!" + rand_num.to_s
    else
      render :json => {"Test"=>"Test data", "Random number"=>rand_num.to_s}
    end
  end

  def goodbye
    render html:"Goodbye, world! :("
  end

end
