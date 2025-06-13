
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Документы - Запись
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Запись item Документы "Оплата" (ПоступлениеДС)

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

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Документы ПоступлениеДС" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Документы ПоступлениеДС" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemДокументы ПоступлениеДС" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemДокументы ПоступлениеДС" exception

		* Posting document
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПровести'  attribute is present on the form Then
				And I click the button named 'ФормаПровести'
				If the warning is displayed then
					Then I raise "Failed to Posting document Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Posting document Документы ПоступлениеДС" exception

		* Cancel Posting the document
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаОтменаПроведения' attribute is present on the form Then
				And I click the button named 'ФормаОтменаПроведения'
				If the warning is displayed then
					Then I raise "Failed to Cancel Posting the document Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Cancel Posting the document Документы ПоступлениеДС" exception

		* Posting and close the document
			Then '$ЗаголовокФормы$' window is opened
			If ФормаПровестиИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаПровестиИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Posting and close the document Документы ПоступлениеДС" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Posting and close the document Документы ПоступлениеДС" exception

Scenario: Запись item Документы "Уроки" (Уроки)

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

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Документы Уроки" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Документы Уроки" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemДокументы Уроки" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemДокументы Уроки" exception

		* Posting document
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПровести'  attribute is present on the form Then
				And I click the button named 'ФормаПровести'
				If the warning is displayed then
					Then I raise "Failed to Posting document Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Posting document Документы Уроки" exception

		* Cancel Posting the document
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаОтменаПроведения' attribute is present on the form Then
				And I click the button named 'ФормаОтменаПроведения'
				If the warning is displayed then
					Then I raise "Failed to Cancel Posting the document Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Cancel Posting the document Документы Уроки" exception

		* Posting and close the document
			Then '$ЗаголовокФормы$' window is opened
			If ФормаПровестиИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаПровестиИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Posting and close the document Документы Уроки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Posting and close the document Документы Уроки" exception

Scenario: Запись item Документы "Дополнительные расходы" (ДополнительныеРасходы)

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

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Документы ДополнительныеРасходы" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Документы ДополнительныеРасходы" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemДокументы ДополнительныеРасходы" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemДокументы ДополнительныеРасходы" exception

		* Posting document
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПровести'  attribute is present on the form Then
				And I click the button named 'ФормаПровести'
				If the warning is displayed then
					Then I raise "Failed to Posting document Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Posting document Документы ДополнительныеРасходы" exception

		* Cancel Posting the document
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаОтменаПроведения' attribute is present on the form Then
				And I click the button named 'ФормаОтменаПроведения'
				If the warning is displayed then
					Then I raise "Failed to Cancel Posting the document Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Cancel Posting the document Документы ДополнительныеРасходы" exception

		* Posting and close the document
			Then '$ЗаголовокФормы$' window is opened
			If ФормаПровестиИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаПровестиИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Posting and close the document Документы ДополнительныеРасходы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Posting and close the document Документы ДополнительныеРасходы" exception
