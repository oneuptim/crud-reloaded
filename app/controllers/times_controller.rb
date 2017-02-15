class TimesController < ApplicationController
  def index
    @time = Time.now.strftime("%H:%M:%S")
    render '/times/index'
  end
end
