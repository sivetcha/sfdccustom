class Salesforce::CustomObjectsController < ApplicationController
  # GET /salesforce_custom_objects
  # GET /salesforce_custom_objects.xml
  def index
    @salesforce_custom_objects = Salesforce::CustomObject.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salesforce_custom_objects }
    end
  end

  # GET /salesforce_custom_objects/1
  # GET /salesforce_custom_objects/1.xml
  def show
    @custom_object = Salesforce::CustomObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custom_object }
    end
  end

  # GET /salesforce_custom_objects/new
  # GET /salesforce_custom_objects/new.xml
  def new
    @custom_object = Salesforce::CustomObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custom_object }
    end
  end

  # GET /salesforce_custom_objects/1/edit
  def edit
    @custom_object = Salesforce::CustomObject.find(params[:id])
  end

  # POST /salesforce_custom_objects
  # POST /salesforce_custom_objects.xml
  def create
    @custom_object = Salesforce::CustomObject.new(params[:custom_object])

    respond_to do |format|
      if @custom_object.save
        format.html { redirect_to(@custom_object, :notice => 'Salesforce::CustomObject was successfully created.') }
        format.xml  { render :xml => @custom_object, :status => :created, :location => @custom_object }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custom_object.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salesforce_custom_objects/1
  # PUT /salesforce_custom_objects/1.xml
  def update
    @custom_object = Salesforce::CustomObject.find(params[:id])

    respond_to do |format|
      if @custom_object.update_attributes(params[:custom_object])
        format.html { redirect_to(@custom_object, :notice => 'Salesforce::CustomObject was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custom_object.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforce_custom_objects/1
  # DELETE /salesforce_custom_objects/1.xml
  def destroy
    @custom_object = Salesforce::CustomObject.find(params[:id])
    @custom_object.destroy

    respond_to do |format|
      format.html { redirect_to(salesforce_custom_objects_url) }
      format.xml  { head :ok }
    end
  end
end
