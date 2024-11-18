module modulo_escrita
    implicit none
contains

    subroutine exibir_texto_valor_real(texto, valor)
        implicit none
        character(len=*), intent(in) :: texto
        real, intent(in) :: valor
        print *, texto, valor
    end subroutine exibir_texto_valor_real

    subroutine exibir_texto_valor_string(texto, valor)
        implicit none
        character(len=*), intent(in) :: texto
        character(len=*), intent(in) :: valor
        print *, texto, valor
    end subroutine exibir_texto_valor_string
    
    subroutine exibir_texto_valor_inteiro(texto, valor)
        implicit none
        character(len=*), intent(in) :: texto
        integer, intent(in) :: valor
        print *, texto, valor
    end subroutine exibir_texto_valor_inteiro

    subroutine exibir_texto(texto)
        implicit none
        character(len=*), intent(in) :: texto
        print *, texto
    end subroutine exibir_texto

end module modulo_escrita
