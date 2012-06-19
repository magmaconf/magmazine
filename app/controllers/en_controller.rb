class EnController < ApplicationController
  before_filter :env_var

  def editorial  
  end

  def infography  
  end

  def gallery 
  end
  def keynote
    @speakers = {
      scott: ['schacon.png','tenderlove.png','drnic.png'],
      aaron: ['schacon.png','tenderlove.png','drnic.png'],
      nic: ['schacon.png','tenderlove.png','drnic.png']
    }
  end

  def sponsor  
  end

  def sponsor
  end
  def crowdint
  end

  def rubycentral  
  end

  def github  
  end

  def heroku  
  end

  def ey  
  end

  def allies 
  end

  def nearsoft
  end

  def aietic
  end
  
  def community
  end

  protected 

  def env_var
    @language = "en"
    @nav = true
    @logo = true
  end

end
