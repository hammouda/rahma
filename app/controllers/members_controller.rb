class MembersController < ApplicationController
  def create
    @beneficiaire = Beneficiaire.find(params[:beneficiaire_id])
    @member = @beneficiaire.members.create(member_params)

    redirect_to beneficiaire_path(@beneficiaire)
  end

  private
  def member_params
    params.require(:member).permit(:nom, :prenom, :date_naissance, :age ,:sexe, :etat_medical, :remarque)

  end
end
