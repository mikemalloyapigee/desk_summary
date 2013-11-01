class TestCaseResultsController < ApplicationController
  # GET /test_case_results
  # GET /test_case_results.json
  def index
    @test_case_results = TestCaseResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_case_results }
    end
  end

  # GET /test_case_results/1
  # GET /test_case_results/1.json
  def show
    @test_case_result = TestCaseResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_case_result }
    end
  end

  # GET /test_case_results/new
  # GET /test_case_results/new.json
  def new
    @test_case_result = TestCaseResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_case_result }
    end
  end

  # GET /test_case_results/1/edit
  def edit
    @test_case_result = TestCaseResult.find(params[:id])
  end

  # POST /test_case_results
  # POST /test_case_results.json
  def create
    @test_case_result = TestCaseResult.new(params[:test_case_result])

    respond_to do |format|
      if @test_case_result.save
        format.html { redirect_to @test_case_result, notice: 'TestCaseResult was successfully created.' }
        format.json { render json: @test_case_result, status: :created, location: @test_case_result }
      else
        format.html { render action: "new" }
        format.json { render json: @test_case_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_case_results/1
  # PUT /test_case_results/1.json
  def update
    @test_case_result = TestCaseResult.find(params[:id])

    respond_to do |format|
      if @test_case_result.update_attributes(params[:test_case_result])
        format.html { redirect_to @test_case_result, notice: 'TestCaseResult was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_case_result.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def display_response_body
    @test_case_result = TestCaseResult.find(params[:id])
    render 'response_body'
  end

  # DELETE /test_case_results/1
  # DELETE /test_case_results/1.json
  def destroy
    @test_case_result = TestCaseResult.find(params[:id])
    @test_case_result.destroy

    respond_to do |format|
      format.html { redirect_to test_case_results_url }
      format.json { head :no_content }
    end
  end
end
