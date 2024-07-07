# Базовый класс
class Person:
 
    def __init__(self, name):
        self.__name = name
 
    @property
    def name(self):
        return self.__name
 
    def display_info(self):
        print(f"Name: {self.__name} ")
      
# Производный класс
class Employee(Person):
 
    def work(self):
        print(f"{self.name} works")
 
 # Производный класс
class Student(Person):
 
    def study(self):
        print(f"{self.name} studying")
        
# Тестовая программа
def main():
    
    print('case 1:')
    # Создание объекта базового класса
    person = Person("Персона")
    print(person.name)      # Доступ к свойствам базового класса: Name: Vasya
    person.display_info()   # Доступ к методу базовогоо класса: Name: Vasya 

    print('case 2:')
    
    # Создание объекта производного класса
    vasya = Employee("Vasya")
    print(vasya.name)       # Доступ к свойствам базового класса: Vasya
    vasya.display_info()    # Доступ к методу базового класса: Name: Vasya 
    vasya.work()            # Доступ к методу пртоизводного класса: Vasya works

    print('case 3:')
    
    # Создание объекта производного класса
    kolya = Student("Kolya")
    print(kolya.name)       # Доступ к свойствам базового класса: Kolya
    kolya.display_info()    # Доступ к методу базового класса: Name: Kolya 
    kolya.study()            # Доступ к методу пртоизводного класса: Kolya studying

if __name__ == "__main__":
    main()
    
    
 
 
