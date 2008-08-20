#TODO  Realizar Tradução dos flashs Notices e das Views
#
#
#

class <%= object_name[:class_plural] %>Controller < ApplicationController
  # GET /<%=object_name[:plural]  %>
  # GET /<%= object_name[:plural]  %>.xml
  def index
    @<%= object_name[:plural] %> = <%= object_name[:class] %>.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @<%= object_name[:plural] %> }
    end
  end

  # GET /<%=object_name[:plural]  %>/1
  # GET /<%= object_name[:plural]  %>/1.xml
  def show
    @<%= object_name[:single]  %> = <%= object_name[:class] %>.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @<%= object_name[:single] %> }
    end
  end

  # GET /<%= object_name[:plural]  %>/new
  # GET /<%= object_name[:plural]  %>/new.xml
  def new
    @<%= object_name[:plural]  %> = <%= object_name[:class] %>.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @<%= object_name[:plural] %> }
    end
  end

  # GET /<%= object_name[:plural]  %>/1/edit
  def edit
    @<%= object_name[:single]  %> = <%= object_name[:class] %>.find(params[:id])
  end

  # POST /<%= object_name[:plural]  %>
  # POST /<%= object_name[:plural]  %>.xml
  def create
    @<%= object_name[:single]  %> = <%=object_name[:class] %>.new(params[:<%= object_name[:single]  %>])

    respond_to do |format|
      if @<%= object_name[:single]  %>.save
        flash[:notice] = '<%= object_name[:single]  %> was successfully created.'
        format.html { redirect_to(@<%= object_name[:single]  %>) }
        format.xml  { render :xml => @<%= object_name[:single]  %>, :status => :created, :location => @<%= object_name[:single]  %> }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @<%= object_name[:single]  %>.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /<%=object_name[:plural]  %>/1
  # PUT /<%= object_name[:plural]  %>/1.xml
  def update
    @<%= object_name[:single]  %> = <%= object_name[:class] %>.find(params[:id])

    respond_to do |format|
      if @<%= object_name[:single]  %>.update_attributes(params[:<%= object_name[:single]  %>])
        flash[:notice] = '<%= object_name[:plural]  %> was successfully updated.'
        format.html { redirect_to(@<%= object_name[:sigle]  %>) }
        }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @<%= object_name[:single]  %>.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /<%= object_name[:plural]  %>/1
  # DELETE /<%= object_name[:plural]  %>/1.xml
  def destroy
    @<%= object_name[:single]  %> = <%= object_name[:class] %>.find(params[:id])
    @<%= object_name[:single]  %>.destroy

    respond_to do |format|
      format.html { redirect_to(<%= object_name[:plural]  %>_url) }
      format.xml  { head :ok }
    end
  end
end
