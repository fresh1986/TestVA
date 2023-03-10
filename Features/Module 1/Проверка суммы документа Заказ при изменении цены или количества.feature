#language: ru


Функционал: проверка расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены

Как Менеджер по продажам я хочу
проверить расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены 
чтобы корректно рассчитывались суммы заказа 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены

* Открытие документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я активизирую поле с именем "Покупатель"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от *'
* Редактирование цены/количества
	И я запоминаю значение таблицы "Товары" как "$ТоварыДо$"
		| 'Цена' |
		| 'Количество' |
		| 'Сумма' |
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар'   | 'Цена'  |
		| '50'         | '2 750,00' | 'Ряженка' | '55,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И я запоминаю значение поля "Цена" как "$ЦенаДо$"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '50,00'
	И я запоминаю значение поля "Цена" как "$ЦенаПосле$"
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И я запоминаю значение поля "Количество" как "$КоличествоДо$"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
	И я запоминаю значение поля "Количество" как "$КоличествоПосле$"
	И в таблице "Товары" я завершаю редактирование строки
	
	
	
		
		
		
		
	