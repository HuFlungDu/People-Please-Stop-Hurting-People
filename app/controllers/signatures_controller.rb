class SignaturesController < ApplicationController
  def create
    @signature = @query = Signature.new(params[:signature])
    @signatures = Signature.count
    if @signature.save
        flash[:success] = "Thanks for signing!"
        redirect_to root_path
    else
        render "index"
    end
    
  end

  def index
    @signature = Signature.new
    @signatures = Signature.count
  end
end
