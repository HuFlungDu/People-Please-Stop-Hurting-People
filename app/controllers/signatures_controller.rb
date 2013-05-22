class SignaturesController < ApplicationController
  def create
    @signature = @query = Signature.new(params[:signature])
    @signatures = Signature.limit(50).order("id desc")
    @signature_count = Signature.count
    if @signature.save
        flash[:success] = "Thanks for signing!"
        redirect_to root_path
    else
        render "index"
    end
    
  end

  def index
    @signature = Signature.new
    @signatures = Signature.limit(50).order("id desc")
    @signature_count = Signature.count
  end
end
