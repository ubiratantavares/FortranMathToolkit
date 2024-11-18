program app_triangulo

    use modulo_geometria
    use modulo_triangulo

    implicit none
    
    type(Triangulo) :: tri
    type(Ponto2D), dimension(3) :: vertices
    integer :: i
    real :: lado1, lado2, lado3

    do i = 1, size(vertices)
        call ler_ponto("Digite as coordenadas do vertice: ", vertices(i))
    end do

    tri%pontos = vertices

    call lados(tri, lado1, lado2, lado3)

    if (forma(tri)) then
        print *, 'As coordenadas informadas formam um triângulo com as seguintes características: '
        print *, 'Lados (m): ', lado1, lado2, lado3 
        print *, 'Perímetro (m): ', perimetro(tri)
        print *, 'Area (m²): ', area(tri)
        if (eh_escaleno(tri)) then
            print *, 'Triângulo escaleno'
        end if
        if (eh_isosceles(tri)) then
            print *, 'Triângulo isóceles'
        end if
        if (eh_equilatero(tri)) then
            print *, 'Triângulo equilátero'
        end if
        if (eh_retangulo(tri)) then
            print *, 'Triângulo retângulo'
        end if
    else
        print *, 'As coordenadas informadas não formam um triângulo'
    end if
end program app_triangulo