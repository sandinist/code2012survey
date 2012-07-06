class SurveysController < ApplicationController
  # GET /surveys.[json|mxl]
  def index
    @surveys = Survey.all

    respond_to do |format|
      #format.html # index.html.erb
      format.json { render json: @surveys }
      format.xml { render json: @surveys }
    end
  end

  # POST /surveys.[json|xml]
  def create
    @survey = Survey.new(params[:survey])

    respond_to do |format|
      if @survey.save
        #format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
        format.json { render json: @survey, status: :created}
        format.xml { render xml: @survey, status: :created}
      else
        #format.html { render action: "new" }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
        format.xml { render xml: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

#  # GET /surveys/1
#  # GET /surveys/1.json
#  def show
#    @survey = Survey.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render json: @survey }
#    end
#  end
#
  # GET /surveys/new
  # GET /surveys/new.json
  def new
    @survey = Survey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey }
    end
  end
#
#  # GET /surveys/1/edit
#  def edit
#    @survey = Survey.find(params[:id])
#  end
#
#  # PUT /surveys/1
#  # PUT /surveys/1.json
#  def update
#    @survey = Survey.find(params[:id])
#
#    respond_to do |format|
#      if @survey.update_attributes(params[:survey])
#        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @survey.errors, status: :unprocessable_entity }
#      end
#    end
#  end
#
#  # DELETE /surveys/1
#  # DELETE /surveys/1.json
#  def destroy
#    @survey = Survey.find(params[:id])
#    @survey.destroy
#
#    respond_to do |format|
#      format.html { redirect_to surveys_url }
#      format.json { head :no_content }
#    end
#  end
end
