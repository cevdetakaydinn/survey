class Admin::SessionsController < Devise::SessionsController
 #before_filter :configure_sign_in_params, only: [:create]

  def new
    super
  end

  def create
    super
  end

  def destroy
    super
  end

  protected
    def after_sign_in_path_for(resource)
      admin_panel_path
    end
    def after_sign_out_path_for(resource)
      root_path
    end
end
