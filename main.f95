program app

    use leitura
    use calculo
    use escrita

    implicit none

    real :: distancia, tempo, velocidade_media
    integer :: opcao

    do
        ! Exibe o menu de opções
        print *, 'Menu de Opções:'
        print *, '1 - Calcular Velocidade Média'
        print *, '2 - Calcular Distância'
        print *, '3 - Calcular Tempo'
        print *, '0 - Sair'
        print *, 'Escolha uma opção:'
        read *, opcao

        select case (opcao)
            case (1) ! Calcular Velocidade Média
                call ler_distancia_em_kilometro(distancia)
                call ler_tempo_em_hora(tempo)
                call calcular_velocidade_media_em_kilometros_por_hora(distancia, tempo, velocidade_media)
                call exibir_velocidade_media_em_kilometros_por_hora(velocidade_media)

            case (2) ! Calcular Distância
                call ler_velocidade_media_em_kilometro_por_hora(velocidade_media)
                call ler_tempo_em_hora(tempo)
                call calcular_distancia_em_kilometro(distancia, tempo, velocidade_media)
                call exibir_distancia_em_kilometro(distancia)

            case (3) ! Calcular Tempo
                call ler_distancia_em_kilometro(distancia)
                call ler_velocidade_media_em_kilometro_por_hora(velocidade_media)
                call calcular_tempo_em_hora(distancia, tempo, velocidade_media)
                call exibir_tempo_em_hora(tempo)

            case (0) ! Sair do programa
                print *, 'Saindo do programa...'
                exit

            case default
                print *, 'Opção inválida. Tente novamente.'

        end select
    end do

end program app

