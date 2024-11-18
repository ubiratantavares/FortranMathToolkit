module modulo_leitura
    implicit none
    
    contains

    subroutine ler_valor_real(mensagem, valor)
        implicit none
        character(len=*), intent(in) :: mensagem
        real, intent(out) :: valor
        print *, mensagem
        read *, valor
    end subroutine ler_valor_real

    subroutine ler_valor_inteiro(mensagem, valor)
        implicit none
        character(len=*), intent(in) :: mensagem
        integer, intent(out) :: valor
        print *, mensagem
        read *, valor
    end subroutine ler_valor_inteiro

    subroutine ler_valor_string(mensagem, valor)
        implicit none
        character(len=*), intent(in) :: mensagem
        character(len=50), intent(out) :: valor
        print *, mensagem
        read *, valor
    end subroutine ler_valor_string

end module modulo_leitura