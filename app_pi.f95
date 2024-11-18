! o valor de pi pode ser estimado utilizando pontos aleatórios no interior de um quadrado de lado unitário,
! vértice inferior esquerdo em (0, 0) e vértice superior direito em (1, 1). 
! A estimativa é dada por: pi aproximadamente 4 * (NPC / NPQ), onde NPC é o número de pontos no interior da
! restrição da circunferência de raio unitário no primeiro quadrante e NPQ é o número total de pontos no
! interior do quadrado.

! escreva um subprograma em fortran que gere aleatoriamente as coordenadas x, y de um ponto no interior
! do quadrado.

! escreva um programa em fortran que leia o número de pontos para ser utilizado na estimativa aproximada do valor
! valor de pi. Estime-o e apresente-o.

program app_pi

    use modulo_geometria
    use modulo_leitura
    use modulo_escrita

    implicit none

    integer :: npq
    real :: pi_estimado

    call ler_valor_inteiro('Digite o número de pontos para a estimativa de pi: ', npq)

    pi_estimado = estimar_valor_de_pi(npq)

    call exibir_texto_valor_real('Estimativa aproximada de pi:', pi_estimado)

end program app_pi
