
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Документы - Копирование
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Копирование item Документы "Оплата" (ПоступлениеДС)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Document.ПоступлениеДС AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And CurrentDataSource.Posted";'	|
			| 'QueryResult = Query.Execute();'						|
			| 'Selection = QueryResult.Select();'					|
			| 'While Selection.Next() Do'							|
			| 'Объект.ЗначениеНаСервере = GetURL(Selection.Ref);'	|
			| 'EndDo;'												|
		And I save 'Объект.ЗначениеНаСервере' in 'НавигационнаяСсылка' variable 

	If 'ValueIsFilled($НавигационнаяСсылка$)' then

		* Open form of an existing item
			Given I open hyperlink '$НавигационнаяСсылка$'
			If the warning is displayed then
				Then I raise "Could not open existing item Документы ПоступлениеДС" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Документы ПоступлениеДС" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Документы ПоступлениеДС" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Документы ПоступлениеДС" exception

Scenario: Копирование item Документы "Уроки" (Уроки)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Document.Уроки AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And CurrentDataSource.Posted";'	|
			| 'QueryResult = Query.Execute();'						|
			| 'Selection = QueryResult.Select();'					|
			| 'While Selection.Next() Do'							|
			| 'Объект.ЗначениеНаСервере = GetURL(Selection.Ref);'	|
			| 'EndDo;'												|
		And I save 'Объект.ЗначениеНаСервере' in 'НавигационнаяСсылка' variable 

	If 'ValueIsFilled($НавигационнаяСсылка$)' then

		* Open form of an existing item
			Given I open hyperlink '$НавигационнаяСсылка$'
			If the warning is displayed then
				Then I raise "Could not open existing item Документы Уроки" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Документы Уроки" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Документы Уроки" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Документы Уроки" exception

Scenario: Копирование item Документы "Дополнительные расходы" (ДополнительныеРасходы)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Document.ДополнительныеРасходы AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And CurrentDataSource.Posted";'	|
			| 'QueryResult = Query.Execute();'						|
			| 'Selection = QueryResult.Select();'					|
			| 'While Selection.Next() Do'							|
			| 'Объект.ЗначениеНаСервере = GetURL(Selection.Ref);'	|
			| 'EndDo;'												|
		And I save 'Объект.ЗначениеНаСервере' in 'НавигационнаяСсылка' variable 

	If 'ValueIsFilled($НавигационнаяСсылка$)' then

		* Open form of an existing item
			Given I open hyperlink '$НавигационнаяСсылка$'
			If the warning is displayed then
				Then I raise "Could not open existing item Документы ДополнительныеРасходы" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Документы ДополнительныеРасходы" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Документы ДополнительныеРасходы" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Документы ДополнительныеРасходы" exception
