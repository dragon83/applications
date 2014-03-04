class SubCastesController < ApplicationController
  # GET /sub_castes
  # GET /sub_castes.json
  def index
    @sub_castes = SubCaste.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sub_castes }
    end
  end

  # GET /sub_castes/1
  # GET /sub_castes/1.json
  def show
    @sub_caste = SubCaste.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sub_caste }
    end
  end

  # GET /sub_castes/new
  # GET /sub_castes/new.json
  def new
    @sub_caste = SubCaste.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sub_caste }
    end
  end

  # GET /sub_castes/1/edit
  def edit
    @sub_caste = SubCaste.find(params[:id])
  end

  # POST /sub_castes
  # POST /sub_castes.json
  def create
    @sub_caste = SubCaste.new(params[:sub_caste])

    respond_to do |format|
      if @sub_caste.save
        format.html { redirect_to @sub_caste, notice: 'Sub caste was successfully created.' }
        format.json { render json: @sub_caste, status: :created, location: @sub_caste }
      else
        format.html { render action: "new" }
        format.json { render json: @sub_caste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sub_castes/1
  # PUT /sub_castes/1.json
  def update
    @sub_caste = SubCaste.find(params[:id])

    respond_to do |format|
      if @sub_caste.update_attributes(params[:sub_caste])
        format.html { redirect_to @sub_caste, notice: 'Sub caste was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sub_caste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_castes/1
  # DELETE /sub_castes/1.json
  def destroy
    @sub_caste = SubCaste.find(params[:id])
    @sub_caste.destroy

    respond_to do |format|
      format.html { redirect_to sub_castes_url }
      format.json { head :no_content }
    end
  end
end
