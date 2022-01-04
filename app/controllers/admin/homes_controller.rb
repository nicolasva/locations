module Admin
  class HomesController < AdminController
    before_action :set_home, only: [:edit, :show, :update, :destroy] 
    before_action :set_form, only: [:edit, :update, :new, :create]
    def index
    end

    def edit
    end

    def update
      if @home_form.validate(params[:home]) && @home_form.save
        redirect_to admin_homes_path, notice: "La mise à jour de cette maison s'est bien déroulé"
      else
        flash[:notice] = "La mise à jour de cette maison ne s'est pas déroulé correctement"
        render action: "edit"
      end
    end

    private
    def set_home
      @home = Home.find(params[:id])
    end

    def set_form
      @home_form = @home ? HomeForm.new(@home) : HomeForm.new
    end
  end
end