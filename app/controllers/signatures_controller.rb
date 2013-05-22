class SignaturesController < ApplicationController
  def create
    @signature = @query = Signature.new(params[:signature])
    respond_to do |format|
      if @signature.save
        @signatures = Signature.limit(50).order("id desc")
        @signature_count = Signature.count
        format.html { redirect_to root_path, notice: '' }
        format.js   {}
        format.json { render json: @signature, status: :created, location: @signature }
      else
        @signatures = Signature.limit(50).order("id desc")
        @signature_count = Signature.count
        format.html { render action: "index" }
        format.json { render json: @signature.errors, status: :unprocessable_entity }
      end
    end
    
  end

  def index
    @signature = Signature.new
    @signatures = Signature.limit(50).order("id desc")
    @signature_count = Signature.count
  end
end
