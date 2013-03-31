class Bio::BioController < ApplicationController
  before_filter :authenticate_user!

  def view
    @bio = current_user.bio
    redirect_to bio_new_path if @bio.nil?
  end

  def new
    @bio = Bio.new
    @bio.user_id = current_user.id
  end

  def create
    @bio = Bio.new(params[:bio])
    @bio.user_id = current_user.id

    respond_to do |format|
      if @bio.save
        format.html { redirect_to bio_view_path, notice: 'Bio was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    begin
      @bio = Bio.find(current_user.bio.id)
    rescue
      redirect_to bio_new_path, notice: 'You need to make a bio before you can edit it.'
    end
  end

  def update
    @bio = Bio.find(current_user.bio.id)
    respond_to do |format|
      if @bio.update_attributes(params[:bio])
        format.html { redirect_to bio_view_path, notice: 'Bio was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
