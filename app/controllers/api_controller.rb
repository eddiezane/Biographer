class ApiController < ApplicationController
  def bio
    @bio = Bio.find_by_email_md5(params[:email_md5])
    render json: @bio
  end
end
