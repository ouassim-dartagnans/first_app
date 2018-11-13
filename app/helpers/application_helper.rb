module ApplicationHelper
    def titre
        base_titre = "Premiere app de Wass"
        if @titre.nil?
            base_titre
        else
            "#{base_titre} | #{@titre}"
        end
    end
end
