module modulo_triangulo

    use modulo_geometria
    
    implicit none

contains

    subroutine lados(tri, a, b, c)
        type(Triangulo), intent(in) :: tri
        real, intent(out) :: a, b, c
        a = distancia(tri%pontos(1), tri%pontos(2))
        b = distancia(tri%pontos(1), tri%pontos(3))
        c = distancia(tri%pontos(2), tri%pontos(3))
    end subroutine lados

    function forma(tri) result(valor)
        type(Triangulo), intent(in) :: tri
        real :: a, b, c
        logical :: valor

        call lados(tri, a, b, c)
        
        valor = (a < (b + c)) .and. (b < (a + c)) .and. (c < (a + b))
    end function forma

    function eh_escaleno(tri) result(resultado)
        type(Triangulo), intent(in) :: tri
        real :: a, b, c
        logical :: resultado
        call lados(tri, a, b, c)
        resultado = (a /= b) .and. (b /= c) .and. (a /= c)
    end function eh_escaleno

    function eh_isosceles(tri) result(valor)
        type(Triangulo), intent(in) :: tri
        real :: a, b, c
        logical :: valor

        call lados(tri, a, b, c)

        valor = (a == b) .or. (b == c) .or. (a == c)
    end function eh_isosceles

    function eh_equilatero(tri) result(valor)
        type(Triangulo), intent(in) :: tri
        real :: a, b, c
        logical :: valor

        call lados(tri, a, b, c)

        valor = (a == b) .and. (b == c)
    end function eh_equilatero

    function perimetro(tri) result (p)
        type(Triangulo), intent(in) :: tri
        real :: a, b, c, p

        call lados(tri, a, b, c)

        p = a + b + c
    end function perimetro

    function eh_maior(a, b) result(valor)
        real, intent(in) :: a, b
        logical :: valor
        valor = a > b
    end function eh_maior

    function eh_retangulo(tri) result(valor)
        type(Triangulo), intent(in) :: tri
        real :: a, b, c, max
        logical :: valor

        call lados(tri, a, b, c)

        if (eh_maior(a, b) .and. eh_maior(a, c)) then
            valor = a**2 == b**2 + c**2
        endif

        if (eh_maior(b, a) .and. eh_maior(b, c)) then
            valor = b**2 == a**2 + c**2
        endif

        if (eh_maior(c, a) .and. eh_maior(c, b)) then
            valor = c**2 == a**2 + b**2
        endif        
    end function eh_retangulo

    function area(tri) result(valor)
        type(Triangulo), intent(in) :: tri
        real :: a, b, c, sp, valor

        call lados(tri, a, b, c)

        sp = perimetro(tri)/2.

        valor = sqrt(sp * (sp - a) * (sp - b) * (sp - c))
    end function area

end module modulo_triangulo