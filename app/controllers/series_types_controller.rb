class SeriesTypesController < ApplicationController
  # GET /series_types
  # GET /series_types.json
  def index
    @series_types = SeriesType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @series_types }
    end
  end

  # GET /series_types/1
  # GET /series_types/1.json
  def show
    @series_type = SeriesType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @series_type }
    end
  end

  # GET /series_types/new
  # GET /series_types/new.json
  def new
    @series_type = SeriesType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @series_type }
    end
  end

  # GET /series_types/1/edit
  def edit
    @series_type = SeriesType.find(params[:id])
  end

  # POST /series_types
  # POST /series_types.json
  def create
    @series_type = SeriesType.new(params[:series_type])

    respond_to do |format|
      if @series_type.save
        format.html { redirect_to @series_type, notice: 'Series type was successfully created.' }
        format.json { render json: @series_type, status: :created, location: @series_type }
      else
        format.html { render action: "new" }
        format.json { render json: @series_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /series_types/1
  # PUT /series_types/1.json
  def update
    @series_type = SeriesType.find(params[:id])

    respond_to do |format|
      if @series_type.update_attributes(params[:series_type])
        format.html { redirect_to @series_type, notice: 'Series type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @series_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series_types/1
  # DELETE /series_types/1.json
  def destroy
    @series_type = SeriesType.find(params[:id])
    @series_type.destroy

    respond_to do |format|
      format.html { redirect_to series_types_url }
      format.json { head :no_content }
    end
  end
end
