// ### Описание кода:

// 1. **Базовый класс Animal**:
//    - Конструктор принимает имя животного и сохраняет его в свойстве name.
//    - Метод speak() выводит сообщение в консоль.

// 2. **Производный класс Dog**:
//    - Конструктор принимает имя и породу собаки, вызывает конструктор базового класса с именем и сохраняет породу в свойстве breed.
//    - Переопределяет метод speak(), чтобы он выводил сообщение о лае собаки.
//    - Добавляет новый метод fetch(), который выводит сообщение о том, что собака приносит предмет.

// 3. **Тестовая программа**:
//    - Создает экземпляры классов Animal и Dog.
//    - Вызывает методы этих экземпляров для демонстрации их работы.

// Этот пример демонстрирует основные принципы наследования и полиморфизма в объектно-ориентированном программировании на языке JavaScript.


class Animal {
    constructor(name) {
        this.name = name;
    }

    speak() {
        console.log(${this.name} makes a sound.);
    }
}

class Dog extends Animal {
    constructor(name, breed) {
        super(name);
        this.breed = breed;
    }

    speak() {
        console.log(${this.name} barks.);
    }

    fetch() {
        console.log(${this.name} is fetching.);
    }
}

function testClasses() {
    // Создание экземпляра базового класса
    const animal = new Animal('Generic Animal');
    animal.speak(); // Output: Generic Animal makes a sound.

    // Создание экземпляра производного класса
    const dog = new Dog('Rex', 'German Shepherd');
    dog.speak(); // Output: Rex barks.
    dog.fetch(); // Output: Rex is fetching.
}

// Запуск тестовой программы
testClasses();

// ### Как запустить программу:

// 1. Создайте файл index.js.
// 2. Скопируйте приведенный выше код в файл index.js.
// 3. Запустите программу с помощью команды node index.js в терминале (предварительно установив Node.js)
