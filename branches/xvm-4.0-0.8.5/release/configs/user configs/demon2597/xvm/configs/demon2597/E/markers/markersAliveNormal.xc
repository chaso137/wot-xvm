﻿/**
 * Options for alive without Alt markers.
 * Настройки маркеров для живых без Alt.
 */
{
"def": {
            // Текстовое поле с названием танка
    "vehicle": {
              "name": "Название танка",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -41,                       // положение по оси Y
              "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "$FieldFont",         //   название
                "size": 14,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": true,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 200,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 1                     //   размер
              },
              "format": "<font size='14'><font size='0{{clan}}'>[</font></font> {{vehicle}} <font size='14'><font size='0{{clan}}'>]</font></font>"         // формат текста. См. описание макросов в readme-ru.txt
            },
            // Текстовое поле с текущим здоровьем
    "hp": {
              "name": "Здоровье",             // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -19,                       // положение по оси Y
              "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,            // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "$FieldFont",         //   название
                "size": 13,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": true,                  //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 200,               //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 1                     //   размер
              },
              "format": "<font color='#FCFCFC'><font face='XVMSymbol' color='{{c:e}}'>\u0046</font></font> {{hp}} <font color='#FCFCFC'><font face='XVMSymbol' color='{{c:e}}'>\u0047</font></font>" // формат текста. См. описание макросов в readme-ru.txt
            },
            // Текстовое поле стоковой башни1
    "turret1": {
              "name": "Сток башня1",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 42,                         // положение по оси X
              "y": -34,                        // положение по оси Y
              "format": "<img src='xvmres://demon2597/img/{{turret}}.png' width='36' height='36'>"         // формат текста. См. описание макросов в readme-ru.txt
            },
            // Текстовое поле стоковой башни2
    "turret2": {
              "name": "Сток. башня2",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 42,                         // положение по оси X
              "y": -34,                       // положение по оси Y
              "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 33,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": null,          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 120,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 4                     //   размер
              },
              "format": "{{turret}}"         // формат текста. См. описание макросов в readme-ru.txt
            }
     },
  "damageText": {                     // всплывающий урон
            "visible": true,                  //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -95,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
            "font": {                         //   параметры шрифта
              "name": "$FieldFont",           //     название
              "size": 15,                     //     размер
              "align": "center",              //     выравнивание текста (left, center, right)
              "bold": true,                    //     обычный (false) или жирный (true)
              "italic": false                 //     обычный (false) или курсив (true)
            },
            "shadow": {                       //   параметры тени
              "alpha": 100,                   //     прозрачность
              "color": "0x000000",            //     цвет
              "angle": 45,                    //     угол смещения
              "strength": 200,                //     интенсивность
              "distance": 0,                  //     дистанция смещение
              "size": 2                       //     размер
            },
            "speed": 2,                       //   время отображения отлетающего урона
            "maxRange": 60,                   //   расстояние, на которое отлетает урон
            "damageMessage": "{{dmg}}"      //   текст при уроне (см. описание макросов в readme-ru.txt)
  },
  "ally": {
          "healthBar": {                      // индикатор здоровья
            "visible": true,                  //   false - не отображать
            "x": -31,                         //   положение по оси X
            "y": -37,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет основной (допускается использование динамического цвета, см. readme-ru.txt)
            "lcolor": null,                   //   цвет дополнительный (для градиента)
            "width": 60,                      //   ширина полосы здоровья
            "height": 3,                     //   высота полосы здоровья
            "border": {                       //   параметры подложки и рамки
              "alpha": 30,                    //     прозрачность
              "color": "0x000000",            //     цвет
              "size": 1                       //     размер рамки
            },
            "fill": {                         //   параметры оставшегося здоровья
              "alpha": 70                     //     прозрачность
            },                                //
            "damage": {                       //   параметры анимации отнимаемого здоровья
              "alpha": 80,                    //     прозрачность
              "color": "0xFFFFFF",                  //     цвет
              "fade": 1                       //     время затухания в секундах
            }
          },
          "vehicleIcon": {                    // иконка типа танка (тт/ст/лт/пт/арта)
            "visible": true,                  //   false - не отображать
            "showSpeaker": false,             //   true - Показывать спикер даже если visible=false
            "x": 0,                           //   положение по оси X
            "y": -16,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность
            "color": null,                    //   цвет (в данный момент не используется)
            "maxScale": 100,                  //   максимальный масштаб (по умолчанию 100)
            "scaleX": 0,                      //   смещение по оси X (?)
            "scaleY": 16,                     //   смещение по оси Y (?)
            "shadow": {                       //   параметры тени
              "alpha": 100,                   //     прозрачность
              "color": "0x000000",            //     цвет
              "angle": 45,                    //     угол смещения
              "strength": 120,                //     интенсивность
              "distance": 0,                  //     дистанция смещение
              "size": 1                       //     размер
            }
          },
          "contourIcon": {                    // иконки танка
            "visible": false,                 //   false - не отображать
            "x": 6,                           //   положение по оси X
            "y": -65,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": null,                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
            "amount": 0                       //   интенсивность цвета от 0 до 100. По умолчанию 0, т.е. выключено.
          },
          "clanIcon": {                       // Иконка игрока/клана
            "visible": false,                 //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -67,                         //   положение по оси Y
            "w": 16,                          //   ширина
            "h": 16,                          //   высота
            "alpha": 100                      //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
          },
          "actionMarker": {                   // маркеры "Нужна помощь" и "Атакую"
            "visible": true,                  //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -100,                         //   положение по оси Y
            "alpha": 100                      //   прозрачность
          },
          "levelIcon": {                      // уровень танка
            "visible": false,                 //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -21,                         //   положение по оси Y
            "alpha": 100                      //   прозрачность
          },
          "damageText": {                     // всплывающий урон
            "visible": true,                  //   false - не отображать
            "x": 0,                           //   положение по оси X
            "y": -95,                         //   положение по оси Y
            "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
            "color": "0xFFFFFF",                    //   цвет (допускается использование динамического цвета, см. readme-ru.txt)
            "font": {                         //   параметры шрифта
              "name": "$FieldFont",           //     название
              "size": 15,                     //     размер
              "align": "center",              //     выравнивание текста (left, center, right)
              "bold": false,                    //     обычный (false) или жирный (true)
              "italic": false                 //     обычный (false) или курсив (true)
            },
            "shadow": {                       //   параметры тени
              "alpha": 100,                   //     прозрачность
              "color": null,            //     цвет
              "angle": 45,                    //     угол смещения
              "strength": 300,                //     интенсивность
              "distance": 0,                  //     дистанция смещение
              "size": 6                       //     размер
            },
            "speed": 2,                       //   время отображения отлетающего урона
            "maxRange": 60,                   //   расстояние, на которое отлетает урон
            "damageMessage": "{{dmg}}"      //   текст при уроне (см. описание макросов в readme-ru.txt)
          },
          "damageTextPlayer": {
            "$ref": {"path":"damageText" }
          },
          "damageTextSquadman": {
            "$ref": {"path":"damageText" }
          },
          // Блок текстовых полей
          "textFields": [
            // Текстовое поле с названием танка
            ${"def.vehicle"},
            // Текстовое поле с текущим здоровьем
            ${"def.hp"},
            // Текстовое поле стоковой башни1
            ${"def.turret1"},
            // Текстовое поле стоковой башни2
            ${"def.turret2"},
            // Звезда
            {
              "name": "Звезда",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -61,                       // положение по оси Y
              "alpha": "{{a:hp-ratio}}",                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "0xFCFCFC",                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 17,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": "{{a:hp-ratio}}",                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 0,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 0                     //   размер
              },
              "format": "<font color='{{c:xeff}}'>\u0021</font>"         // формат текста. См. описание макросов в readme-ru.txt
            },
            // Щит 
            {
              "name": "Щит",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -65,                       // положение по оси Y
              "alpha": "{{a:hp-ratio}}",                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 26,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": "{{a:hp-ratio}}",                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 150,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 1                     //   размер
              },
              "format": "\u0043"         // формат текста. См. описание макросов в readme-ru.txt
            },
            // Щит внутр.
            {
              "name": "Щит внутр.",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -65,                       // положение по оси Y
              "alpha": "{{a:hp-ratio}}",                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "0x000000",                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 26,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": "{{a:hp-ratio}}",                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 0,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 0                     //   размер
              },
              "format": "\u0045"         // формат текста. См. описание макросов в readme-ru.txt
            },
            // Звезда норм
            {
              "name": "Звезда норм",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -56,                       // положение по оси Y
              "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "0xFCFCFC",                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 17,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 150,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 1                     //   размер
              },
              "format": "<font color='{{c:xeff}}'>\u0021</font>"         // формат текста. См. описание макросов в readme-ru.txt
            }
          ]
        },
  "enemy": {
          "healthBar": {                      // индикатор здоровья
            "$ref": {"path":"ally.healthBar" }
          },
          "vehicleIcon": {                    // иконка типа танка (тт/ст/лт/пт/арта)
            "$ref": {"path":"ally.vehicleIcon" }
          },
          "contourIcon": {                    // иконки танка
            "$ref": {"path":"ally.contourIcon" }
          },
          "clanIcon": {                       // Иконка игрока/клана
            "$ref": {"path":"ally.clanIcon" }
          },
          "actionMarker": {                   // маркеры "Нужна помощь" и "Атакую"
            "$ref": {"path":"ally.actionMarker" }
          },
          "levelIcon": {                      // уровень танка
            "$ref": {"path":"ally.levelIcon" }
          },
          "damageText": {
            "$ref": {"path":"ally.damageText" }
          },
          "damageTextPlayer": {
            "$ref": {"path":"damageText" }
          },
          "damageTextSquadman": {
            "$ref": {"path":"damageText" }
          },
          // Блок текстовых полей
          "textFields": [
            // Текстовое поле с названием танка
            ${"def.vehicle"},
            // Текстовое поле с текущим здоровьем
            ${"def.hp"},
            // Текстовое поле стоковой башни1
            ${"def.turret1"},
            // Текстовое поле стоковой башни2
            ${"def.turret2"},
            // Крест
            {
              "name": "Крест",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -61,                       // положение по оси Y
              "alpha": "{{a:hp-ratio}}",                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "0xFCFCFC",                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 17,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": "{{a:hp-ratio}}",                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 0,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 0                     //   размер
              },
              "format": "<font color='{{c:xeff}}'>\u0022</font>"         // формат текста. См. описание макросов в readme-ru.txt
            },
            // Прицел 
            {
              "name": "Прицел",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -71,                       // положение по оси Y
              "alpha": "{{a:hp-ratio}}",                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": null,                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 37,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": "{{a:hp-ratio}}",                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 150,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 1                     //   размер
              },
              "format": "\u0042"         // формат текста. См. описание макросов в readme-ru.txt
            },
            // Прицел внутр.
            {
              "name": "Прицел внутр.",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -71,                       // положение по оси Y
              "alpha": "{{a:hp-ratio}}",                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "0x000000",                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 37,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": "{{a:hp-ratio}}",                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 0,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 0                     //   размер
              },
              "format": "\u0044"         // формат текста. См. описание макросов в readme-ru.txt
            },
            // Крест норм
            {
              "name": "Крест норм",       // название текстового поля, ни на что не влияет
              "visible": true,                // false - не отображать
              "x": 0,                         // положение по оси X
              "y": -56,                       // положение по оси Y
              "alpha": 100,                   // прозрачность (допускается использование динамической прозрачности, см. readme-ru.txt)
              "color": "0xFCFCFC",                  // цвет (допускается использование динамического цвета, см. readme-ru.txt)
              "font": {                       // параметры шрифта
                "name": "XVMSymbol",         //   название
                "size": 17,                   //   размер
                "align": "center",            //   выравнивание текста (left, center, right)
                "bold": false,                 //   обычный (false) или жирный (true)
                "italic": false                 //     обычный (false) или курсив (true)
              },
              "shadow": {                     // параметры тени
                "alpha": 100,                 //   прозрачность
                "color": "0x000000",          //   цвет
                "angle": 45,                  //   угол смещения
                "strength": 150,              //   интенсивность
                "distance": 0,                //   дистанция смещение
                "size": 1                     //   размер
              },
              "format": "<font color='{{c:xeff}}'>\u0022</font>"         // формат текста. См. описание макросов в readme-ru.txt
            }
          ]
        }
}