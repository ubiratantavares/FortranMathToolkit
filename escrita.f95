module escrita

    implicit none

contains

    subroutine exibir_mensagem(mensagem, valor)
        implicit none
        character(len=*), intent(in) :: mensagem
        real, intent(in) :: valor
        print *, mensagem, valor
    end subroutine exibir_mensagem

end module escrita
