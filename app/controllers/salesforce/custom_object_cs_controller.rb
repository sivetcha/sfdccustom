class Salesforce::CustomObject_csController < ApplicationController
  # GET /salesforce_custom_object_cs
  # GET /salesforce_custom_object_cs.xml
  def index
    @salesforce_custom_object_cs = Salesforce::CustomObject_c.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salesforce_custom_object_cs }
    end
  end

  # GET /salesforce_custom_object_cs/1
  # GET /salesforce_custom_object_cs/1.xml
  def show
    @custom_object_c = Salesforce::CustomObject_c.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custom_object_c }
    end
  end

  # GET /salesforce_custom_object_cs/new
  # GET /salesforce_custom_object_cs/new.xml
  def new
    @custom_object_c = Salesforce::CustomObject_c.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custom_object_c }
    end
  end

  # GET /salesforce_custom_object_cs/1/edit
  def edit
    @custom_object_c = Salesforce::CustomObject_c.find(params[:id])
  end

  # POST /salesforce_custom_object_cs
  # POST /salesforce_custom_object_cs.xml
  def create
    @custom_object_c = Salesforce::CustomObject_c.new(params[:custom_object_c])

    respond_to do |format|
      if @custom_object_c.save
        format.html { redirect_to(@custom_object_c, :notice => 'Salesforce::CustomObject_c was successfully created.') }
        format.xml  { render :xml => @custom_object_c, :status => :created, :location => @custom_object_c }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custom_object_c.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salesforce_custom_object_cs/1
  # PUT /salesforce_custom_object_cs/1.xml
  def update
    @custom_object_c = Salesforce::CustomObject_c.find(params[:id])

    respond_to do |format|
      if @custom_object_c.update_attributes(params[:custom_object_c])
        format.html { redirect_to(@custom_object_c, :notice => 'Salesforce::CustomObject_c was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custom_object_c.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforce_custom_object_cs/1
  # DELETE /salesforce_custom_object_cs/1.xml
  def destroy
    @custom_object_c = Salesforce::CustomObject_c.find(params[:id])
    @custom_object_c.destroy

    respond_to do |format|
      format.html { redirect_to(salesforce_custom_object_cs_url) }
      format.xml  { head :ok }
    end
  end
end
