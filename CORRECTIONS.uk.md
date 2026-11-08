# CORRECTIONS.md — dk-medcom-carecommunication

Проєкт: medcomdk/dk-medcom-carecommunication
Базова галузова гілка для аналізу: master
Галузкова гілка для публікації: https://github.com/admeduardovieira/dk-medcom-carecommunication

## Пропоновані виправлення

| ID | Назва | Середність | Статус | Різик | Задіяні файли |
|----|-------|------------|--------|-------|---------------|
| REA-dkmedcom-002 | Немає автоматизованих тестів для FSH/StructureDefinitions | P3 | ПРОПОНУВАНО | Середній | `test/` (новий) |
| REA-dkmedcom-003 | Issue #185: валідація UUID v4 не реалізована | P2 | ПРОПОНУВАНО | Низький | `input/fsh/MedComCareCommunicationAttachmentID.fsh` |

## Деталі пропонованих виправлень

### REA-dkmedcom-002 — Немає автоматизованих тестів
**Проблема:** Немає тестів, що валідують профілі FSH.
**Виправлення:** Додати тести валідації FSH.
**Валідація:** Запустити тести; підтвердити, що профілі компілюються.

### REA-dkmedcom-003 — Валідація UUID v4 (Issue #185)
**Проблема:** Issue #185 вимагає валідації UUID v4. PR #189 відкрито для корегування regex в `input/fsh/MedComCareCommunicationAttachmentID.fsh` для правильного обмеження версії 4 та варіанту 8/9/a/b UUID.
**Виправлення:** Переглянути та злити PR #189; перевірити компіляцію FSH та валідацію профілів.
**Валідація:** Підтвердити, що значення UUID v4 проходять валідацію FSH; підтвердити, що UUID не-v4 відхиляються.

## Не реалізовано
Жодне не реалізоване в цьому виконанні; пропозиції для підтрижуючих.

## План публікації
- Fork: `admeduardovieira/dk-medcom-carecommunication` (вже існує).
- Жодних змін коду (тільки звіти аудиту).
- Ідентичність коміту: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PR до `medcomdk/dk-medcom-carecommunication` галузова гілка `master`.
