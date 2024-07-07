def sum_negative_between_max_min(A):  
  
    N = len(A)
    max_idx = 0
    min_idx = 0
    max_val = A[0]
    min_val = A[0]
    
    # Находим максимальный и минимальный элементы
    for i in range(1, N):
        if A[i] > max_val:
            max_val = A[i]
            max_idx = i
        if A[i] < min_val:
            min_val = A[i]
            min_idx = i
    
    print(min_idx)
    print(max_idx)
    
    # Вычисляем сумму отрицательных элементов
    sum_negative = 0
    if min_idx < max_idx:
        for i in range(min_idx-1, max_idx):
            if A[i] < 0:
                print(A[i])
                sum_negative += A[i]
    else:
        for i in range(max_idx, min_idx+1):
            if A[i] < 0:
                print(A[i])
                sum_negative += A[i]
    
    return sum_negative

#Пример использования 1:
A = [-1, 2, -10, 4, -5, 5, -7, 8, -9]
print(sum_negative_between_max_min(A))  # Вывод: -22. Минимальное = -10, Максимальное = 8, Между ними -10, -5, -7

print('-----------------------------')

#Пример использования 2:
A = [-1, 2, -8, 14, -5, 5, -7, 8, -9]
print(sum_negative_between_max_min(A))  # Вывод: -21. Минимальное = -9, Максимальное = 14, Между ними -5, -7, -9
