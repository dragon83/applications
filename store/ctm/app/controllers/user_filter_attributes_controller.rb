class UserFilterAttributesController < ApplicationController
  # GET /user_filter_attributes
  # GET /user_filter_attributes.json
  def index
    @user_filter_attributes = UserFilterAttribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_filter_attributes }
    end
  end

  # GET /user_filter_attributes/1
  # GET /user_filter_attributes/1.json
  def show
    @user_filter_attribute = UserFilterAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_filter_attribute }
    end
  end

  # GET /user_filter_attributes/new
  # GET /user_filter_attributes/new.json
  def new
    @user_filter_attribute = UserFilterAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_filter_attribute }
    end
  end

  # GET /user_filter_attributes/1/edit
  def edit
    @user_filter_attribute = UserFilterAttribute.find(params[:id])
  end

  # POST /user_filter_attributes
  # POST /user_filter_attributes.json
  def create
    @user_filter_attribute = UserFilterAttribute.new(params[:user_filter_attribute])

    respond_to do |format|
      if @user_filter_attribute.save
        format.html { redirect_to @user_filter_attribute, notice: 'User filter attribute was successfully created.' }
        format.json { render json: @user_filter_attribute, status: :created, location: @user_filter_attribute }
      else
        format.html { render action: "new" }
        format.json { render json: @user_filter_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_filter_attributes/1
  # PUT /user_filter_attributes/1.json
  def update
    @user_filter_attribute = UserFilterAttribute.find(params[:id])

    respond_to do |format|
      if @user_filter_attribute.update_attributes(params[:user_filter_attribute])
        format.html { redirect_to @user_filter_attribute, notice: 'User filter attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_filter_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_filter_attributes/1
  # DELETE /user_filter_attributes/1.json
  def destroy
    @user_filter_attribute = UserFilterAttribute.find(params[:id])
    @user_filter_attribute.destroy

    respond_to do |format|
      format.html { redirect_to user_filter_attributes_url }
      format.json { head :no_content }
    end
  end
end
