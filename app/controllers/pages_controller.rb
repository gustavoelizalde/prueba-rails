class PagesController < ApplicationController
  def batman
  end

  def superman

  end

  def batman_vs_superman
  	@nombre = "Gustavo"
  end

  def vote
  	
  	if params[:heroe].present?
  		heroe = Voto.new(heroe: params[:heroe], email: params[:email])
  		if heroe.save
  			redirect_to pages_batman_vs_superman_path,
  				notice: "El heroe fue guardado exitosamente"
  		else
  			redirect_to pages_batman_vs_superman_path,
  				notice: "Ocurrió un error guardado el heroe"
  		end
  	else
  		redirect_to pages_batman_vs_superman_path
  	end

  end


  def totales

    @all_users = Voto.all()
    
    @batman_users = @all_users.select do |user|
      user[:heroe] == "Batman"
    end

    @superman_users = @all_users.select do |user|
      user[:heroe] == "Superman"
    end


  end

end
