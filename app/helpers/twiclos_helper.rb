module TwiclosHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_twiclos_path
    elsif action_name == 'edit'
      twiclo_path
    end
  end
end
