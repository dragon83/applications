class UserFiltersController < ApplicationController
  # GET /user_filters
  # GET /user_filters.json
  def index
    @user_filters = UserFilter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_filters }
    end
  end

  # GET /user_filters/1
  # GET /user_filters/1.json
  def show
    @user_filter = UserFilter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_filter }
    end
  end

  # GET /user_filters/new
  # GET /user_filters/new.json
  def new
    @user_filter = UserFilter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_filter }
    end
  end

  # GET /user_filters/1/edit
  def edit
    @user_filter = UserFilter.find(params[:id])
  end

  # POST /user_filters
  # POST /user_filters.json
  def create
    @user_filter = UserFilter.new(params[:user_filter])

    respond_to do |format|
      if @user_filter.save
        format.html { redirect_to @user_filter, notice: 'User filter was successfully created.' }
        format.json { render json: @user_filter, status: :created, location: @user_filter }
      else
        format.html { render action: "new" }
        format.json { render json: @user_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_filters/1
  # PUT /user_filters/1.json
  def update
    @user_filter = UserFilter.find(params[:id])

    respond_to do |format|
      if @user_filter.update_attributes(params[:user_filter])
        format.html { redirect_to @user_filter, notice: 'User filter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_filters/1
  # DELETE /user_filters/1.json
  def destroy
    @user_filter = UserFilter.find(params[:id])
    @user_filter.destroy

    respond_to do |format|
      format.html { redirect_to user_filters_url }
      format.json { head :no_content }
    end
  end
end
