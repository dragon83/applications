class CastesController < ApplicationController
  skip_before_filter :authenticate_user! , :only => [ :get_sub_castes ]
  # GET /castes
  # GET /castes.json
  def index
    @castes = Caste.includes(:religion).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @castes }
    end
  end

  # GET /castes/1
  # GET /castes/1.json
  def show
    @caste = Caste.includes(:religion).find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caste }
    end
  end

  # GET /castes/new
  # GET /castes/new.json
  def new
    @caste = Caste.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caste }
    end
  end

  # GET /castes/1/edit
  def edit
    @caste = Caste.find(params[:id])
  end

  # POST /castes
  # POST /castes.json
  def create
    @caste = Caste.new(params[:caste])

    respond_to do |format|
      if @caste.save
        format.html { redirect_to @caste, notice: 'Caste was successfully created.' }
        format.json { render json: @caste, status: :created, location: @caste }
      else
        format.html { render action: "new" }
        format.json { render json: @caste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /castes/1
  # PUT /castes/1.json
  def update
    @caste = Caste.find(params[:id])

    respond_to do |format|
      if @caste.update_attributes(params[:caste])
        format.html { redirect_to @caste, notice: 'Caste was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @caste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /castes/1
  # DELETE /castes/1.json
  def destroy
    @caste = Caste.find(params[:id])
    @caste.destroy

    respond_to do |format|
      format.html { redirect_to castes_url }
      format.json { head :no_content }
    end
  end

  # GET /get_castes/1
  # GET /get_castes/1.json
  def get_sub_castes
    caste = Caste.find(params[:id])
    @sub_castes = caste.sub_castes
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sub_castes }
    end
  end


end
