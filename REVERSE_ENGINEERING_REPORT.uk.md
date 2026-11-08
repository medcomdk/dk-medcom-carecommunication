# REVERSE_ENGINEERING_REPORT — dk-medcom-carecommunication

Примітка: переклад технічний, виконаний з автоматичною допомогою; рекомендується перегляд рідним мовцем перед використанням як нормативного довідника.

## A. Загальний діагноз

### Виявлена архітектура
Implementation Guide (IG) FHIR на основі SUSHI для Care Communication у Данії (MedCom). Структура:

- `input/fsh/*.fsh`: 20 файлів FSH, які визначають профілі, розширення, інваріанти та приклади екземплярів
- `input/fsh/Helpers/`: папка допоміжних функцій
- `sushi-config.yaml`: конфігурація SUSHI в корені (id: medcom.fhir.dk.carecommunication, версія 5.0.4, FHIR R4)
- `ig.ini`: конфігурація видавця IG
- `.github/workflows/publish.yaml` та `.github/workflows/status-of-pr.yaml`: наявний CI (виявлено під час аудиту)
- Ресурси опубліковано на simplifier.net та build.fhir.org

### Технології та залежності
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- Залежності: hl7.fhir.dk.core 3.4.0, medcom.fhir.dk.core 3.0.1, medcom.fhir.dk.messaging 4.0.2, medcom.fhir.dk.terminology 2.0.1, medcom.fhir.dk.messagedefinitions 1.0.0
- Немає автоматизованих тестів

### Стан обслуговування
Галуззова гілка: master. Репозиторій: https://github.com/medcomdk/dk-medcom-carecommunication. Активна історія з нещєвими PR (наприклад, PR #186 вже злито, PR #189 відкрито для корекції інваріанту UUID v4).

### Існуючі механізми тестування
Автоматизованих тестів не знайдено.

### Обмеження дослідження
- SUSHI не встановлено; збір IG не виконано.
- Issue #185 стосується валідації UUID v4; PR #189 відкрито для корекції інваріанту.

## B. Виявлені проблеми

| ID | Назва | Середність | Статус | Місцезнаходження |
|----|-------|------------|--------|------------------|
| REA-dkmedcom-002 | Немає автоматизованих тестів для FSH/StructureDefinitions | P3 | CONFIRMED | корінь репозиторію |
| REA-dkmedcom-003 | Issue #185: валідація UUID v4 не реалізована | P2 | ПРОБЛЕМА | issue #185, PR #189 відкрито |

### Деталі підтверджених проблем

**REA-dkmedcom-002 (P3, CONFIRMED):** Немає автоматизованих тестів для валідації профілів FHIR, визначених у FSH, або згенерованих StructureDefinitions.

### Деталі пробивної проблеми

**REA-dkmedcom-003 (P2, PROVÁBLE):** Issue #185 повідомляє про потребу в валідації UUID v4. PR #189 відкрито для корегування regex в `input/fsh/MedComCareCommunicationAttachmentID.fsh` для правильного обмеження версії 4 та варіанту 8/9/a/b UUID.

## C. Повторні проблеми
Issue #184 (клінічні рекомендації) повідомлено 02/11, все ще відкрите. PR #186 (Vena_Vena.json) вже закрито та злито.

## D. Невідомі помилки
Усі пункти розділу B — це недокументовані раніше проблеми.

## E. Продуктивність
Статичний збір IG через SUSHI. Немає операцій, чутливих до продуктивності.

## F. Технічні вдосконалення
- Додати тести FSH (REA-dkmedcom-002)
- Переглянути та злити PR #189 для корекції інваріанту UUID v4 (REA-dkmedcom-003)

## G. План виконання
Усі незалежні та низького ризику.

## H. Очікуваний результат
IG з автоматизованими тестами та інваріантом UUID v4 правильно валідованим.

**Інструменти, що використано:** git, gh, PowerShell, статичний огляд.  
**Обмеження:** SUSHI не встановлено. Issue #185/PR #189 вимагає перевірки компіляції FSH.  
**Середовище:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\dk-medcom-carecommunication` (клон upstream, галузкова гілка master).
