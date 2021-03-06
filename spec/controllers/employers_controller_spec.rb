require 'rails_helper'

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

RSpec.describe EmployersController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Employer. As you add validations to Employer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EmployersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all employers as @employers" do
      employer = Employer.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:employers)).to eq([employer])
    end
  end

  describe "GET show" do
    it "assigns the requested employer as @employer" do
      employer = Employer.create! valid_attributes
      get :show, {:id => employer.to_param}, valid_session
      expect(assigns(:employer)).to eq(employer)
    end
  end

  describe "GET new" do
    it "assigns a new employer as @employer" do
      get :new, {}, valid_session
      expect(assigns(:employer)).to be_a_new(Employer)
    end
  end

  describe "GET edit" do
    it "assigns the requested employer as @employer" do
      employer = Employer.create! valid_attributes
      get :edit, {:id => employer.to_param}, valid_session
      expect(assigns(:employer)).to eq(employer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Employer" do
        expect {
          post :create, {:employer => valid_attributes}, valid_session
        }.to change(Employer, :count).by(1)
      end

      it "assigns a newly created employer as @employer" do
        post :create, {:employer => valid_attributes}, valid_session
        expect(assigns(:employer)).to be_a(Employer)
        expect(assigns(:employer)).to be_persisted
      end

      it "redirects to the created employer" do
        post :create, {:employer => valid_attributes}, valid_session
        expect(response).to redirect_to(Employer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employer as @employer" do
        post :create, {:employer => invalid_attributes}, valid_session
        expect(assigns(:employer)).to be_a_new(Employer)
      end

      it "re-renders the 'new' template" do
        post :create, {:employer => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested employer" do
        employer = Employer.create! valid_attributes
        put :update, {:id => employer.to_param, :employer => new_attributes}, valid_session
        employer.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested employer as @employer" do
        employer = Employer.create! valid_attributes
        put :update, {:id => employer.to_param, :employer => valid_attributes}, valid_session
        expect(assigns(:employer)).to eq(employer)
      end

      it "redirects to the employer" do
        employer = Employer.create! valid_attributes
        put :update, {:id => employer.to_param, :employer => valid_attributes}, valid_session
        expect(response).to redirect_to(employer)
      end
    end

    describe "with invalid params" do
      it "assigns the employer as @employer" do
        employer = Employer.create! valid_attributes
        put :update, {:id => employer.to_param, :employer => invalid_attributes}, valid_session
        expect(assigns(:employer)).to eq(employer)
      end

      it "re-renders the 'edit' template" do
        employer = Employer.create! valid_attributes
        put :update, {:id => employer.to_param, :employer => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested employer" do
      employer = Employer.create! valid_attributes
      expect {
        delete :destroy, {:id => employer.to_param}, valid_session
      }.to change(Employer, :count).by(-1)
    end

    it "redirects to the employers list" do
      employer = Employer.create! valid_attributes
      delete :destroy, {:id => employer.to_param}, valid_session
      expect(response).to redirect_to(employers_url)
    end
  end

end
