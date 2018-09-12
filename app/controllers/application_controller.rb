class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def list
    @message = "Hello"
  end

  def main
    @message = "Hello"
  end

  def movie
    @message = "Hello"
  end

  def estimate
    @message = "Hello"
  end

end
