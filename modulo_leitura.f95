module leitura
    implicit none
contains

    subroutine ler_distancia_em_kilometro(valor)
        implicit none
        real, intent(out) :: valor
        print *, "Informe a distância em kilômetros: "
        read *, valor
    end subroutine ler_distancia_em_kilometro

    subroutine ler_tempo_em_hora(valor)
        implicit none
        real, intent(out) :: valor
        print *, "Informe o tempo em horas: "
        read *, valor 
    end subroutine ler_tempo_em_hora

    subroutine ler_velocidade_media_em_kilometro_por_hora(valor)
        implicit none
        real, intent(out) :: valor
        print *, "Informe a velocidade média em kilometros por hora: "
        read *, valor
    end subroutine ler_velocidade_media_em_kilometro_por_hora

end module leitura