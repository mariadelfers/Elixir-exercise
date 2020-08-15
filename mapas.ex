defmodule Mapas do
    def info do
        [
            %{ :nombre => "Luciano", :sexo => "M", :edad => 50},
            %{ nombre: "Fernanda", sexo: "F", edad: 22},
            %{ nombre: "Alondra", sexo: "F", edad: 15},
            %{ nombre: "Erick", sexo: "M", edad: 20},
            %{ nombre: "Abelardo", sexo: "M", edad: 22},
        ]
    end

    def suma_edades([]), do: 0
    def suma_edades([info_pers | resto]) do
        info_pers.edad + suma_edades(resto)
    end

    def suma_f([]), do: 0
    def suma_f([info_pers | resto]) do
        if (info_pers.sexo == "M") do
            suma_f(resto)
        else 
            info_pers.edad + suma_f(resto)    
        end
    end

    def suma_edad_dama([]), do: 0
    def suma_edad_dama([%{sexo: s} = info_pers |resto]) when s == "F" do
        info_pers.edad + suma_edad_dama(resto)
    end
    # Suma solo los que empiecen con 'E' en su nombre
    # def suma_edad_dama([_info_pers | resto]), do: suma_edad_dama(resto)
    # def suma_edad_dama([%{nombre: "E"<>_} = info_pers |resto]) when s == "F" do
    #     info_pers.edad + suma_edad_dama(resto)
    # end
end