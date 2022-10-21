class HomeController < ApplicationController
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
end
