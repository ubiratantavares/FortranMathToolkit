module calculo
    implicit none
contains

    subroutine calcular_velocidade_media_em_kilometros_por_hora(distancia_km, tempo_h, velocidade_media_km_por_h)
        implicit none
        real, intent(in) :: distancia_km
        real, intent(in) :: tempo_h
        real, intent(out) :: velocidade_media_km_por_h
        velocidade_media_km_por_h = distancia_km/tempo_h
    end subroutine calcular_velocidade_media_em_kilometros_por_hora

    subroutine calcular_distancia_em_kilometro(distancia_km, tempo_h, velocidade_media_km_por_h)
        implicit none
        real, intent(in) :: velocidade_media_km_por_h
        real, intent(in) :: tempo_h
        real, intent(out) :: distancia_km
        distancia_km = velocidade_media_km_por_h * tempo_h
    end subroutine calcular_distancia_em_kilometro

    subroutine calcular_tempo_em_hora(distancia_km, tempo_h, velocidade_media_km_por_h)
        implicit none
        real, intent(in) :: distancia_km
        real, intent(in) :: velocidade_media_km_por_h
        real, intent(out) :: tempo_h
        tempo_h = distancia_km / velocidade_media_km_por_h
    end subroutine calcular_tempo_em_hora

end module calculo

