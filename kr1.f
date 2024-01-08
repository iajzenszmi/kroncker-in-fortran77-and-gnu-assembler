PROGRAM KroneckerProduct
    IMPLICIT NONE
    DOUBLE PRECISION A(2,2), B(2,2), C(4,4)
    INTEGER I, J, K, L

    ! Initialize matrices A and B
    DATA A /1.0, 2.0, 3.0, 4.0/
    DATA B /5.0, 6.0, 7.0, 8.0/

    ! Compute Kronecker product
    DO I = 1, 2
        DO J = 1, 2
            DO K = 1, 2
                DO L = 1, 2
                    C(2*(I-1)+K, 2*(J-1)+L) = A(I,J) * B(K,L)
                END DO
            END DO
        END DO
    END DO

    ! Print the result
    PRINT *, 'Kronecker Product of A and B:'
    DO I = 1, 4
        PRINT *, (C(I, J), J = 1, 4)
    END DO

END PROGRAM KroneckerProduct
