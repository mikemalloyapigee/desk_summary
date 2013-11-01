class RegressionTestsController < ApplicationController
  # GET /RegressionTests
  # GET /RegressionTests.json
  def index
    @RegressionTests = RegressionTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @RegressionTests }
    end
  end

  # GET /RegressionTests/1
  # GET /RegressionTests/1.json
  def show
    @RegressionTest = RegressionTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @RegressionTest }
    end
  end

  # GET /RegressionTests/new
  # GET /RegressionTests/new.json
  def new
    @RegressionTest = RegressionTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @RegressionTest }
    end
  end

  # GET /RegressionTests/1/edit
  def edit
    @RegressionTest = RegressionTest.find(params[:id])
  end

  # POST /RegressionTests
  # POST /RegressionTests.json
  def create
    @RegressionTest = RegressionTest.new(params[:RegressionTest])

    respond_to do |format|
      if @RegressionTest.save
        format.html { redirect_to @RegressionTest, notice: 'RegressionTest was successfully created.' }
        format.json { render json: @RegressionTest, status: :created, location: @RegressionTest }
      else
        format.html { render action: "new" }
        format.json { render json: @RegressionTest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /RegressionTests/1
  # PUT /RegressionTests/1.json
  def update
    @RegressionTest = RegressionTest.find(params[:id])

    respond_to do |format|
      if @RegressionTest.update_attributes(params[:RegressionTest])
        format.html { redirect_to @RegressionTest, notice: 'RegressionTest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @RegressionTest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /RegressionTests/1
  # DELETE /RegressionTests/1.json
  def destroy
    @RegressionTest = RegressionTest.find(params[:id])
    @RegressionTest.destroy

    respond_to do |format|
      format.html { redirect_to RegressionTests_url }
      format.json { head :no_content }
    end
  end
end
