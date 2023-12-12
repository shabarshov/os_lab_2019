1.

gcc -o without_mutex mutex.c -lpthread

// раскомментировал строчки, где используется mutex

gcc -o with_mutex mutex.c -lpthread

Без использования мьютекса:
Без использования мьютекса, несколько потоков могут одновременно читать и изменять значение переменной common. Это создает гонку данных, что может привести к непредсказуемым результатам. В результате, значение common в конце программы может быть неверным, так как несколько потоков могут перезаписывать его одновременно.

С использованием мьютекса:
С правильным использованием мьютекса, гарантируется, что только один поток имеет доступ к общей переменной в конкретный момент времени. Это предотвращает гонку данных, обеспечивая корректное и последовательное выполнение кода в критической секции. В результате, значение common в конце программы будет точным, и программа будет вести себя предсказуемо.

2.

gcc -o factorial factorial.c -lpthread

./factorial -k 10 --pnum=4 --mod=10

Thread 2 calculated partial result: 12

Thread 3 calculated partial result: 210

Thread 4 calculated partial result: 720

Thread 1 calculated partial result: 2

10! mod 10 = 0

./factorial -k 10 --pnum=4 --mod=11

Thread 1 calculated partial result: 2

Thread 2 calculated partial result: 12

Thread 3 calculated partial result: 210

Thread 4 calculated partial result: 720

10! mod 11 = 10

./factorial -k 10 --pnum=4 --mod=17

Thread 1 calculated partial result: 2

Thread 2 calculated partial result: 12

Thread 4 calculated partial result: 720

Thread 3 calculated partial result: 210

10! mod 17 = 14

./factorial -k 10 --pnum=2 --mod=17

Thread 1 calculated partial result: 120

Thread 2 calculated partial result: 30240

10! mod 17 = 14

P.S. 
Ещё можно добавить вывод итогового значения факториала, но я об этом подумал уже когда все сделал :D
В целом, правильность вычислений легко проверить, если просто перемножить результаты, которые получили потоки

3.

gcc -o deadlock deadlock.c -lpthread

./deadlock


Thread 1: Holding mutex1

Thread 2: Holding mutex2

...

...

...


Все зависает. Нужно самому завершать процесс
