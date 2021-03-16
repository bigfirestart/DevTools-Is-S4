**Цель работы** - изучить используемую IDE, выделить основные элементы среды, которые автоматизируют определенные процессы при разработке.

# Xcode
Для выполнения данной работы была выбрана среда разработки xcode

## 1) Скачать и установить Xcode
Скачиваем последнюю версию xcode с AppStore или сайта apple.com
Для лабораторной работы создадим консольный проект

 ![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-03-15%20%D0%B2%2021.19.32.png)
 
 ## 2) Настройка
 Xcode даёт нам выбор из двух языков swift и objectiveC, выберем swift
 ![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-03-15%20%D0%B2%2021.21.25.png)
 
 ## 3) Базовый проект
 Точкой входа в приложение swift является файл main.swift, поэтому добавим наш код именно туда 
 ![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-03-16%20%D0%B2%2011.13.16.png)
 
 ## 4)Тесты
 Добавим unit тесты в наш проект
 ![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-03-15%20%D0%B2%2021.30.51.png)
 
 ![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-03-15%20%D0%B2%2021.31.03.png)
 
 Не забудем так же добавить файл main.swift в сборку наших тестов
  
 ![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-03-15%20%D0%B2%2021.37.13.png)

 Итоговый прогресс тестов покажется в аналогичной вкладке (запуск тестов производится комбинацией cmd+U)
 
 ![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202021-03-15%20%D0%B2%2021.59.19.png)
 
 ## 5)Xcode CLI
 ### Команды cli xcode бывают 5 видов:
 - xcodebuild
   #### Основная команда для xcode позовляющая создавать различные сченарии для сборки, отладки и архивирования ios и  macos приложений 
   $ xcodebuild test project MyAppProject.xcodeproj -scheme MyApp -destination 'platform = OS X, arch = x86_64'  -destination 'platform = Simulator, name = iPhone, OS = 10.2' <br />
   **Clean**: <br />
   $ xcodebuild clean -workspace Bookshop.xcworkspace -scheme bookshop_dev_scheme <br />
   $ xcodebuild clean -project Bookshop.xcodeproj -scheme bookshop_dev_scheme <br />
   **Build**: <br />
   $ xcodebuild build -workspace Bookshop.xcworkspace -scheme bookshop_dev_scheme <br />
   **Archive**: <br />
   $ xcodebuild archive -workspace Bookshop.xcworkspace -scheme bookshop_dev_scheme -archivePath ~/Downloads/bookshop_dev.xcarchive <br />
   **Create .ipa**: <br />
   $ xcodebuild -exportArchive -archivePath ~/Downloads/bookshop_dev.scarchive -exportPath ~/Downloads -exportOptionsPlist ~/Downloads/ExportOptions.plist <br />
 - xcode-select
   #### Позволяет выбирать версию xcode, с который вы будете работать 
   $ sudo xcode-select - переключатель /Applications/Xcode-beta.app/
 - xcrun
   #### Мы можем выполнять большинство командных инструментов Xcode, используя xcrun. Самый полезный инструмент, который можно использовать с xcrun, - это simctl для управления симуляторами с помощью командной строки. Мы можем создавать, редактировать, стирать и удалять симулятор с помощью командной строки, используя simctl, например, мы можем создать
   $ xcrun simctl создать 'iPhone 7' \ 
    com.apple.CoreSimulator.SimDeviceType.iPhone-7 \ 
    com.apple.CoreSimulator.SimRuntime.iOS-10-3
 - xcscontrol
   #### Xcode Server - это система непрерывной интеграции, предоставляемая Apple. Мы можем использовать xcscontrol для управления такими действиями сервера Xcode, как запуск, остановка, перезапуск сервера. Мы можем сбросить Xcode Server, используя
   $ sudo xcrun xcscontrol - сброс
 - xctest
   #### XCTest можно выполнить с помощью xcodebuild, однако есть и другие инструменты, которые мы можем использовать для запуска наших модульных тестов. Мы можем использовать xctest для запуска модульных тестов.
   
   $ xcrun xctest [-XCTest all | <TestCaseClassName / testMethodName>] <путь к тестируемому объекту>
   
   
## Snippets
В xcode есть встроенный механизм создания снипеттов </br>
Выбираем нужный нам код нажимаем правой кнопкой мыши и выбираем Create Code Snippet

![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/5.png)
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/5_1.png)

Теперь мы можем найти наш сниппен в аналогичной панели 
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/5_2.png)

Чтобы добавить параметры используем <# #>
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/5_3.png)
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/5_4.png)
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/5_5.png)


## 6) HotKeys
Наиболее распространённые горячие клавиши хорошо демонстрируются на изображении, найденым мной в интернете
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/6.png)

## 7) Doc
В xcode так же есть встроенная система комментирования и подсказок <br>
Чтобы создать комментарий к своему коду нужно добавить однострочный или многострочный комментарий перед методом, так же многострочный комментарий поддерживает Markdown
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/7.png)
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/7_1.png)
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/7_2.png)

## 8) Theaming
Xcode включает в себя довольно общирный набор интсрументов кастомизации <br>
Чтобы создать свою тему переходим: Xcode -> Preferances -> Theaming -> +
![](https://github.com/bigfirestart/DevTools-Is-S4/blob/main/lab1/sources/9.png)




