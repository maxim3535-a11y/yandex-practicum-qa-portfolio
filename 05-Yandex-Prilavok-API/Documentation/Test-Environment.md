# Тестовое окружение — Яндекс.Прилавок (API)

| Параметр | Значение |
|---|---|
| Продукт | API Яндекс.Прилавка |
| Инструмент | Postman |
| Тестовый стенд | `https://{id}.serverhub.praktikum-services.ru/` |
| Документация API | `https://{id}.serverhub.praktikum-services.ru/docs/` |

Идентификатор стенда формируется при запуске сервера в Практикуме и меняется между запусками. В материалах проекта используется шаблон `{id}`

## Объём тестирования

Проверялись следующие операции:

- `POST /api/v1/kits/{id}/products`
- `POST /fast-delivery/v3.1.1/calculate-delivery.xml`
- `GET /api/v1/orders/:id`
- `PUT /api/v1/orders/:id`
- `DELETE /api/v1/orders/:id`

Для создания предусловий использовались операции создания набора и корзины.
