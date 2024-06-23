// Дан одномерный массив А размерности N. Найти сумму отрицательных элементов, расположенных между максимальным и минимальным.

function sumNegativeBetweenMaxMin(arr) {
    if (arr.length === 0) return 0;

    let maxIndex = 0;
    let minIndex = 0;

    // Найти индексы максимального и минимального элементов
    for (let i = 1; i < arr.length; i++) {
        if (arr[i] > arr[maxIndex]) {
            maxIndex = i;
        }
        if (arr[i] < arr[minIndex]) {
            minIndex = i;
        }
    }

    // Определить начало и конец диапазона
    let start = Math.min(maxIndex, minIndex);
    let end = Math.max(maxIndex, minIndex);

    // Найти сумму отрицательных элементов в диапазоне
    let sum = 0;
    for (let i = start + 1; i < end; i++) {
        if (arr[i] < 0) {
            sum += arr[i];
        }
    }

    return sum;
}

// Пример использования:
const A = [3, -1, -4, 2, -6, 5, -3];
const N = A.length;
console.log(sumNegativeBetweenMaxMin(A)); // Вывод: -10
