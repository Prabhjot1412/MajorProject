require 'open-uri'

class HomeController < ApplicationController
  before_action :authenticate_user!, except: %i[homepage]
  @@count ||= 0
  def homepage
    @count = @@count
  end
  
  def carasoueler
    params[:act] =='next' ? @@count += 1 : @@count -= 1
    @@count = 0 if @@count >= (StringService.new.image_paths.length)
    @@count = (StringService.new.image_paths.length)-1 if @@count.negative?
    respond_to do |format|
      format.turbo_stream { render partial: 'partials/turbo_stream/carasouel', locals: {count: @@count}}
    end
  end

  def userdetails
  end
  
  def upload
    Avatar.create(name: 'keiji', avatar: params[:avatar])
  end

  def avatar
    avatar = Avatar.find(params[:av])
    current_user.avatar = avatar 
    redirect_to root_path
  end
end
