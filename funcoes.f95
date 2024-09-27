module funcoes
    implicit none
contains

    function sao_iguais(a, b) result(resultado)
        integer, intent(in) :: a, b
        logical :: resultado
        resultado = a == b
    end function sao_iguais

    function sao_diferentes(a, b) result(resultado)
        integer, intent(in) :: a, b
        logical :: resultado
        resultado = a /= b
    end function sao_diferentes

    function eh_maior(a, b) result(resultado)
        integer, intent(in) :: a, b
        logical :: resultado
        resultado = a > b
    end function eh_maior

    function eh_menor(a, b) result(resultado)
        integer, intent(in) :: a, b
        logical :: resultado
        resultado = a < b
    end function eh_menor

    function maior(a, b) result(resultado)
        integer, intent(in) :: a, b
        integer :: resultado
        if (eh_maior(a, b)) then
            resultado = a
        else
            resultado = b
        endif
    end function maior

    function menor(a, b) result(resultado)
        integer, intent(in) :: a, b
        integer :: resultado
        if (eh_menor(a, b)) then
            resultado = a
        else
            resultado = b
        endif
    end function menor

    function pode_formar_triangulo(a, b, c) result(eh_triangulo)
        real, intent(in) :: a, b, c
        logical :: eh_triangulo
        eh_triangulo = (a < (b + c)) .and. (b < (a + c)) .and. (c < (a + b))
    end function pode_formar_triangulo

    function calcular_perimetro_de_triangulo(a, b, c) result (resultado)
        real, intent(in) :: a, b, c
        real :: resultado
        resultado = a + b + c
    end function calcular_perimetro_de_triangulo

    function calcular_semiperimetro_de_triangulo(a, b, c) result(resultado)
        real, intent(in) :: a, b, c
        real :: resultado
        resultado = calcular_perimetro_de_triangulo(a, b, c) / 2.0
    end function calcular_semiperimetro_de_triangulo

    function calcular_area_de_triangulo(a, b, c) result(resultado)
        real, intent(in) :: a, b, c
        real :: p ! semi-perimetro
        real :: resultado 
        p = calcular_semiperimetro_de_triangulo(a, b, c)
        resultado = sqrt(p * (p - a) * (p - b) * (p - c))
    end function calcular_area_de_triangulo

    function eh_par(a) result(resultado)
        integer, intent(in) :: a
        logical :: resultado
        resultado = mod(a, 2) == 0
    end function eh_par

    function eh_primo(a) result(resultado)
        integer, intent(in) :: a
        integer :: i
        logical :: resultado
        resultado  = .true.
        do i = 2, a - 1
            if (mod(a, i) == 0) then
                resultado = .false.
                exit
            end if
        end do
    end function eh_primo

    function mdc(a, b) result(resultado)
        integer, intent(in) :: a, b
        integer :: resultado
        integer :: temp_a, temp_b

        temp_a = abs(a)
        temp_b = abs(b)

        ! Algoritmo de Euclides
        do while (temp_b /= 0)
            temp_a = temp_a - temp_b * (temp_a / temp_b)
            temp_a = temp_b
            temp_b = temp_a - temp_b * (temp_a / temp_b)
        end do

        resultado = temp_a

    end function mdc

    function mmc(a, b) result(resultado)
        integer, intent(in) :: a, b
        integer :: resultado

        resultado = abs(a * b) / mdc(a, b)

    end function mmc

    function potencia(a, b) result(resultado)
        integer, intent(in) :: a, b
        integer :: i
        integer :: resultado
        resultado = 1 
        do i = 1, b
            resultado = resultado * a
        end do
    end function potencia

    recursive function fatorial(a) result(resultado)
        integer, intent(in) :: a
        integer :: resultado
        if (a == 0) then
            resultado = 1
        else
            resultado = a * fatorial(a - 1)
        end if
    end function fatorial

    function pi() result(resultado)
        implicit none
        real :: resultado
        resultado = acos(-1.0)
    end function pi

    function converter_angulo_de_graus_para_radianos(a) result(resultado)
        implicit none
        real, intent(in) :: a
        real :: resultado
        resultado = a * (pi() / 180.0)
    end function converter_angulo_de_graus_para_radianos

    function divisao(a, b) result(resultado)
        implicit none
        real, intent(in) :: a, b
        real :: resultado
        resultado = a / b
    end function divisao

    function multiplicacao(a, b) result(resultado)
        implicit none
        real, intent(in) :: a, b
        real :: resultado
        resultado = a * b
    end function multiplicacao

end module funcoes
