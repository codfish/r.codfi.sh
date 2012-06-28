require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UrlsController do

  # This should return the minimal set of attributes required to create a valid
  # Url. As you add validations to Url, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:full_url => "https://github.com/"}
  end

  describe "GET index" do
    it "assigns all urls as @urls" do
      url = Url.create! valid_attributes
      get :index, {}
      assigns(:urls).should eq([url])
    end
  end

  describe "GET show" do
    it "assigns the requested url as @url" do
      url = Url.create! valid_attributes
      get :show, {:id => url.to_param}
      assigns(:url).should eq(url)
    end
  end

  describe "GET new" do
    it "assigns a new url as @url" do
      get :new, {}
      assigns(:url).should be_a_new(Url)
    end
  end

  describe "GET edit" do
    it "assigns the requested url as @url" do
      url = Url.create! valid_attributes
      get :edit, {:id => url.to_param}
      assigns(:url).should eq(url)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Url" do
        expect {
          post :create, {:url => valid_attributes}
        }.to change(Url, :count).by(1)
      end

      it "assigns a newly created url as @url" do
        post :create, {:url => valid_attributes}
        assigns(:url).should be_a(Url)
        assigns(:url).should be_persisted
      end

      it "redirects to the created url" do
        post :create, {:url => valid_attributes}
        response.should redirect_to(Url.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved url as @url" do
        # Trigger the behavior that occurs when invalid params are submitted
        Url.any_instance.stub(:save).and_return(false)
        post :create, {:url => {}}
        assigns(:url).should be_a_new(Url)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Url.any_instance.stub(:save).and_return(false)
        post :create, {:url => {}}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested url" do
        url = Url.create! valid_attributes
        # Assuming there are no other urls in the database, this
        # specifies that the Url created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Url.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => url.to_param, :url => {'these' => 'params'}}
      end

      it "assigns the requested url as @url" do
        url = Url.create! valid_attributes
        put :update, {:id => url.to_param, :url => valid_attributes}
        assigns(:url).should eq(url)
      end

      it "redirects to the url" do
        url = Url.create! valid_attributes
        put :update, {:id => url.to_param, :url => valid_attributes}
        response.should redirect_to(url)
      end
    end

    describe "with invalid params" do
      it "assigns the url as @url" do
        url = Url.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Url.any_instance.stub(:save).and_return(false)
        put :update, {:id => url.to_param, :url => {}}
        assigns(:url).should eq(url)
      end

      it "re-renders the 'edit' template" do
        url = Url.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Url.any_instance.stub(:save).and_return(false)
        put :update, {:id => url.to_param, :url => {}}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested url" do
      url = Url.create! valid_attributes
      expect {
        delete :destroy, {:id => url.to_param}
      }.to change(Url, :count).by(-1)
    end

    it "redirects to the urls list" do
      url = Url.create! valid_attributes
      delete :destroy, {:id => url.to_param}
      response.should redirect_to(urls_url)
    end
  end

end
