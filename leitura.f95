module leitura
    implicit none
contains

    subroutine ler_valor_real(mensagem, valor)
        implicit none
        character(len=*), intent(in) :: mensagem
        real, intent(out) :: valor
        print *, mensagem
        read *, valor
    end subroutine ler_valor_real

end module leitura