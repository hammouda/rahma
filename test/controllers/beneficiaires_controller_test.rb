require 'test_helper'

class BeneficiairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beneficiaire = beneficiaires(:one)
  end

  test "should get index" do
    get beneficiaires_url
    assert_response :success
  end

  test "should get new" do
    get new_beneficiaire_url
    assert_response :success
  end

  test "should create beneficiaire" do
    assert_difference('Beneficiaire.count') do
      post beneficiaires_url, params: { beneficiaire: { adresse: @beneficiaire.adresse, date_naissance: @beneficiaire.date_naissance, etat_civil: @beneficiaire.etat_civil, lieu_naissance: @beneficiaire.lieu_naissance, lieu_naissance_conjoint: @beneficiaire.lieu_naissance_conjoint, metier: @beneficiaire.metier, metier_conjoint: @beneficiaire.metier_conjoint, nbre_fille: @beneficiaire.nbre_fille, nbre_garcon: @beneficiaire.nbre_garcon, nbre_membre_famille: @beneficiaire.nbre_membre_famille, nom: @beneficiaire.nom, nom_conjoint: @beneficiaire.nom_conjoint, num_cnss: @beneficiaire.num_cnss, prenom: @beneficiaire.prenom, prenom_conjoint: @beneficiaire.prenom_conjoint, telephone: @beneficiaire.telephone, telephone_conjoint: @beneficiaire.telephone_conjoint } }
    end

    assert_redirected_to beneficiaire_url(Beneficiaire.last)
  end

  test "should show beneficiaire" do
    get beneficiaire_url(@beneficiaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_beneficiaire_url(@beneficiaire)
    assert_response :success
  end

  test "should update beneficiaire" do
    patch beneficiaire_url(@beneficiaire), params: { beneficiaire: { adresse: @beneficiaire.adresse, date_naissance: @beneficiaire.date_naissance, etat_civil: @beneficiaire.etat_civil, lieu_naissance: @beneficiaire.lieu_naissance, lieu_naissance_conjoint: @beneficiaire.lieu_naissance_conjoint, metier: @beneficiaire.metier, metier_conjoint: @beneficiaire.metier_conjoint, nbre_fille: @beneficiaire.nbre_fille, nbre_garcon: @beneficiaire.nbre_garcon, nbre_membre_famille: @beneficiaire.nbre_membre_famille, nom: @beneficiaire.nom, nom_conjoint: @beneficiaire.nom_conjoint, num_cnss: @beneficiaire.num_cnss, prenom: @beneficiaire.prenom, prenom_conjoint: @beneficiaire.prenom_conjoint, telephone: @beneficiaire.telephone, telephone_conjoint: @beneficiaire.telephone_conjoint } }
    assert_redirected_to beneficiaire_url(@beneficiaire)
  end

  test "should destroy beneficiaire" do
    assert_difference('Beneficiaire.count', -1) do
      delete beneficiaire_url(@beneficiaire)
    end

    assert_redirected_to beneficiaires_url
  end
end
