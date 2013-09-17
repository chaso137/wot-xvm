﻿/**
 * Настройки динамической прозрачности
 */
{
  "alpha": {
    // Динамическая прозрачность по оставшемуся здоровью. Значения от меньшего к большему.
    "hp": [
      { "value": 200,  "alpha": 100 },
      { "value": 400,  "alpha": 80 },
      { "value": 1000, "alpha": 60 },
      { "value": 9999, "alpha": 40 }
    ],
    // Динамическая прозрачность по проценту оставшегося здоровья. Значения от меньшего к большему.
    "hp_ratio": [
      { "value": 10,  "alpha": 100 },
      { "value": 25,  "alpha": 80 },
      { "value": 50,  "alpha": 60 },
      { "value": 101, "alpha": 40 }
    ],
    // Динамическая прозрачность по эффективности (только с xvm-stat). Значения от меньшего к большему.
    "eff": [
      { "value": 900,  "alpha": 100 },
      { "value": 1200, "alpha": 100 },
      { "value": 9999, "alpha": 100 }
    ],
    // Динамическая прозрачность по проценту побед (только с xvm-stat). Значения от меньшего к большему.
    "rating": [
      { "value": 49,  "alpha": 100 },
      { "value": 53,  "alpha": 100 },
      { "value": 101, "alpha": 100 }
    ],
    // Динамическая прозрачность по количеству кило-боев (только с xvm-stat). Значения от меньшего к большему.
    "kb": [
      { "value": 2,   "alpha": 100 },
      { "value": 10,  "alpha": 100 },
      { "value": 999, "alpha": 100 }
    ]
  }
}