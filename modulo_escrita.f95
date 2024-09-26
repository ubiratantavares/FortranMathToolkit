module escrita
    implicit none
contains

    subroutine exibir_velocidade_media_em_kilometros_por_hora(valor)
        implicit none
        real, intent(in) :: valor
        print *, "Velocidade média: ", valor, " Km/h."
    end subroutine exibir_velocidade_media_em_kilometros_por_hora

    subroutine exibir_distancia_em_kilometro(valor)
        implicit none
        real, intent(in) :: valor
        print *, "Distância: ", valor, "Km."
    end subroutine exibir_distancia_em_kilometro

    subroutine exibir_tempo_em_hora(valor)
        implicit none
        real, intent(in) :: valor
        print *, "Tempo: ", valor, " h."
    end subroutine exibir_tempo_em_hora

end module escrita
