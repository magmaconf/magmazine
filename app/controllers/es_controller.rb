class EsController < ApplicationController
  def editorial
    @language = "es"
    @nav = true
  end
  def tweets
    @language = "es"
    @nav = true
  end
  def conferencias
    @language = "es"
    @nav = true
  end
  def galeria
    @language = "es"
    @nav = true
  end
  def infografia
    @language = "es"
    @nav = true
  end

  def patrocinadores
    @language = "en"
    @nav = true
  end
end
