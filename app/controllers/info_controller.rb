class InfoController < ApplicationController
  def terms
    if request.xhr?
      render layout: false
    else
      render
    end
  end
end
