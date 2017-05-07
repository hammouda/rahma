require 'test_helper'

class ServiceBeneficiairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_beneficiaire = service_beneficiaires(:one)
  end

  test "should get index" do
    get service_beneficiaires_url
    assert_response :success
  end

  test "should get new" do
    get new_service_beneficiaire_url
    assert_response :success
  end

  test "should create service_beneficiaire" do
    assert_difference('ServiceBeneficiaire.count') do
      post service_beneficiaires_url, params: { service_beneficiaire: { beneficiaire_id: @service_beneficiaire.beneficiaire_id, cout: @service_beneficiaire.cout, date_service: @service_beneficiaire.date_service, service_id: @service_beneficiaire.service_id } }
    end

    assert_redirected_to service_beneficiaire_url(ServiceBeneficiaire.last)
  end

  test "should show service_beneficiaire" do
    get service_beneficiaire_url(@service_beneficiaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_beneficiaire_url(@service_beneficiaire)
    assert_response :success
  end

  test "should update service_beneficiaire" do
    patch service_beneficiaire_url(@service_beneficiaire), params: { service_beneficiaire: { beneficiaire_id: @service_beneficiaire.beneficiaire_id, cout: @service_beneficiaire.cout, date_service: @service_beneficiaire.date_service, service_id: @service_beneficiaire.service_id } }
    assert_redirected_to service_beneficiaire_url(@service_beneficiaire)
  end

  test "should destroy service_beneficiaire" do
    assert_difference('ServiceBeneficiaire.count', -1) do
      delete service_beneficiaire_url(@service_beneficiaire)
    end

    assert_redirected_to service_beneficiaires_url
  end
end
