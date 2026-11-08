# CORRECTIONS.md — dk-medcom-carecommunication

Проєкт: medcomdk/dk-medcom-carecommunication
Базова гał diff гałку для аналізу: master
Гał diff гałку для публікації: https://github.com/admeduardovieira/dk-medcom-carecommunication

## Propіковані виправлення

| ID | Назва | Середність | Статус | Різик | Задіяні файли |
|----|-------|------------|--------|-------|---------------|
| REA-dkmedcom-001 | Немає sushi-config.yaml | P3 | PROPOSING | Низький | `sushi-config.yaml` (новий) |
| REA-dkmedcom-002 | Немає автоматизованих тестів для FSH/StructureDefinitions | P3 | PROPOSING | Середній | `test/` (новий) |
| REA-dkmedcom-003 | Issue #185: валідація UUID v4 не реалізована | P2 | PROPOSING | Низький | issue #185 |

## Деталі пропонованих виправлень

### REA-dkmedcom-001 — Немає sushi-config.yaml
**Проблема:** Немає файлу конфігурації збірки для SUSHI.
**Виправлення:** Додати sushi-config.yaml з id, canonical, name, version, fhirVersion, залежностями.
**Валідація:** Підтвердити, що SUSHI може обробити конфігурацію.

### REA-dkmedcom-002 — Немає автоматизованих тестів
**Проблема:** Немає тестів, що валідують профілі FSH.
**Виправлення:** Додати тести валідації FSH.
**Валідація:** Запустити тести; підтвердити, що профілі компілюються.

### REA-dkmedcom-003 — Валідація UUID v4 (Issue #185)
**Проблема:** Issue #185 вимагає валідації UUID v4. Потрібна інспекція коду для реалізації.
**Виправлення:** Реалізувати валідацію UUID v4 в відповідних інваріантах FSH або коді.
**Валідація:** Підтвердити, що значення UUID v4 проходять валідацію.

## Не реалізовано
Жодне не реалізоване в цьому виконанні; пропозиції для підтрижуючих.

## План публікації
- Fork: `admeduardovieira/dk-medcom-carecommunication` (вже існує).
- Жодних змін коду (тільки звіти аудиту).
- Ідентичність коміту: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PR до `medcomdk/dk-medcom-carecommunication` гał diff гałку `master`.
