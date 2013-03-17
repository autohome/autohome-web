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

describe DataTypesController do
  before(:each) do
    # Sign in as a user first
    u = User.find_by_id( 1 )
    u.should_not be_nil
    sign_in u
  end

  # This should return the minimal set of attributes required to create a valid
  # DataType. As you add validations to DataType, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "longhand_unit" => "Celsius",
      "shorthand_unit" => "C"
    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DataTypesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all data_types as @data_types" do
      data_type = DataType.create! valid_attributes
      get :index
      response.status.should be(200)
      assigns(:data_types).should eq([data_type])
    end
  end

  describe "GET show" do
    it "assigns the requested data_type as @data_type" do
      data_type = DataType.create! valid_attributes
      get :show, {:id => data_type.to_param}
      assigns(:data_type).should eq(data_type)
    end
  end

  describe "GET new" do
    it "assigns a new data_type as @data_type" do
      get :new, {}
      assigns(:data_type).should be_a_new(DataType)
    end
  end

  describe "GET edit" do
    it "assigns the requested data_type as @data_type" do
      data_type = DataType.create! valid_attributes
      get :edit, {:id => data_type.to_param}
      assigns(:data_type).should eq(data_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DataType" do
        expect {
          post :create, {:data_type => valid_attributes}
        }.to change(DataType, :count).by(1)
      end

      it "assigns a newly created data_type as @data_type" do
        post :create, {:data_type => valid_attributes}
        assigns(:data_type).should be_a(DataType)
        assigns(:data_type).should be_persisted
      end

      it "redirects to the created data_type" do
        post :create, {:data_type => valid_attributes}
        response.should redirect_to(DataType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved data_type as @data_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        DataType.any_instance.stub(:save).and_return(false)
        post :create, {:data_type => { "shorthand_unit" => "invalid value" }}
        assigns(:data_type).should be_a_new(DataType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DataType.any_instance.stub(:save).and_return(false)
        post :create, {:data_type => { "shorthand_unit" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested data_type" do
        data_type = DataType.create! valid_attributes
        # Assuming there are no other data_types in the database, this
        # specifies that the DataType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DataType.any_instance.should_receive(:update_attributes).with({ "shorthand_unit" => "MyString" })
        put :update, {:id => data_type.to_param, :data_type => { "shorthand_unit" => "MyString" }}
      end

      it "assigns the requested data_type as @data_type" do
        data_type = DataType.create! valid_attributes
        put :update, {:id => data_type.to_param, :data_type => valid_attributes}
        assigns(:data_type).should eq(data_type)
      end

      it "redirects to the data_type" do
        data_type = DataType.create! valid_attributes
        put :update, {:id => data_type.to_param, :data_type => valid_attributes}
        response.should redirect_to(data_type)
      end
    end

    describe "with invalid params" do
      it "assigns the data_type as @data_type" do
        data_type = DataType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DataType.any_instance.stub(:save).and_return(false)
        put :update, {:id => data_type.to_param, :data_type => { "shorthand_unit" => "invalid value" }}
        assigns(:data_type).should eq(data_type)
      end

      it "re-renders the 'edit' template" do
        data_type = DataType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DataType.any_instance.stub(:save).and_return(false)
        put :update, {:id => data_type.to_param, :data_type => { "shorthand_unit" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested data_type" do
      data_type = DataType.create! valid_attributes
      expect {
        delete :destroy, {:id => data_type.to_param}
      }.to change(DataType, :count).by(-1)
    end

    it "redirects to the data_types list" do
      data_type = DataType.create! valid_attributes
      delete :destroy, {:id => data_type.to_param}
      response.should redirect_to(data_types_url)
    end
  end

end
