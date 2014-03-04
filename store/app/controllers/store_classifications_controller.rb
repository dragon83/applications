class StoreClassificationsController < ApplicationController
  # GET /store_classifications
  # GET /store_classifications.json
  def index
    @store_classifications = StoreClassification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @store_classifications }
    end
  end

  # GET /store_classifications/1
  # GET /store_classifications/1.json
  def show
    @store_classification = StoreClassification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store_classification }
    end
  end

  # GET /store_classifications/new
  # GET /store_classifications/new.json
  def new
    @store_classification = StoreClassification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @store_classification }
    end
  end

  # GET /store_classifications/1/edit
  def edit
    @store_classification = StoreClassification.find(params[:id])
  end

  # POST /store_classifications
  # POST /store_classifications.json
  def create
    @store_classification = StoreClassification.new(params[:store_classification])

    respond_to do |format|
      if @store_classification.save
        format.html { redirect_to @store_classification, notice: 'Store classification was successfully created.' }
        format.json { render json: @store_classification, status: :created, location: @store_classification }
      else
        format.html { render action: "new" }
        format.json { render json: @store_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store_classifications/1
  # PUT /store_classifications/1.json
  def update
    @store_classification = StoreClassification.find(params[:id])

    respond_to do |format|
      if @store_classification.update_attributes(params[:store_classification])
        format.html { redirect_to @store_classification, notice: 'Store classification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @store_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_classifications/1
  # DELETE /store_classifications/1.json
  def destroy
    @store_classification = StoreClassification.find(params[:id])
    @store_classification.destroy

    respond_to do |format|
      format.html { redirect_to store_classifications_url }
      format.json { head :no_content }
    end
  end
end
