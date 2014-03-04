class SpecialStatusesController < ApplicationController
  # GET /special_statuses
  # GET /special_statuses.json
  def index
    @special_statuses = SpecialStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @special_statuses }
    end
  end

  # GET /special_statuses/1
  # GET /special_statuses/1.json
  def show
    @special_status = SpecialStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @special_status }
    end
  end

  # GET /special_statuses/new
  # GET /special_statuses/new.json
  def new
    @special_status = SpecialStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @special_status }
    end
  end

  # GET /special_statuses/1/edit
  def edit
    @special_status = SpecialStatus.find(params[:id])
  end

  # POST /special_statuses
  # POST /special_statuses.json
  def create
    @special_status = SpecialStatus.new(params[:special_status])

    respond_to do |format|
      if @special_status.save
        format.html { redirect_to @special_status, notice: 'Special status was successfully created.' }
        format.json { render json: @special_status, status: :created, location: @special_status }
      else
        format.html { render action: "new" }
        format.json { render json: @special_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /special_statuses/1
  # PUT /special_statuses/1.json
  def update
    @special_status = SpecialStatus.find(params[:id])

    respond_to do |format|
      if @special_status.update_attributes(params[:special_status])
        format.html { redirect_to @special_status, notice: 'Special status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @special_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_statuses/1
  # DELETE /special_statuses/1.json
  def destroy
    @special_status = SpecialStatus.find(params[:id])
    @special_status.destroy

    respond_to do |format|
      format.html { redirect_to special_statuses_url }
      format.json { head :no_content }
    end
  end
end
