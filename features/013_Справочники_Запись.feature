
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Справочники - Запись
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Запись item Справочники "Валюты" (Валюты)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Валюты AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники Валюты" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники Валюты" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники Валюты" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники Валюты" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники Валюты" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники Валюты" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники Валюты" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники Валюты" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники Валюты" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники Валюты" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники Валюты" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники Валюты" exception

Scenario: Запись item Справочники "Отчеты" (ВариантыОтчетов)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ВариантыОтчетов AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ВариантыОтчетов" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ВариантыОтчетов" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ВариантыОтчетов" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ВариантыОтчетов" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ВариантыОтчетов" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ВариантыОтчетов" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ВариантыОтчетов" exception

Scenario: Запись item Справочники "Версии расширений" (ВерсииРасширений)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ВерсииРасширений AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ВерсииРасширений" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ВерсииРасширений" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ВерсииРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ВерсииРасширений" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ВерсииРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ВерсииРасширений" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ВерсииРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ВерсииРасширений" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ВерсииРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ВерсииРасширений" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ВерсииРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ВерсииРасширений" exception

Scenario: Запись item Справочники "Версии файлов" (ВерсииФайлов)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ВерсииФайлов AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ВерсииФайлов" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ВерсииФайлов" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ВерсииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ВерсииФайлов" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ВерсииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ВерсииФайлов" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ВерсииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ВерсииФайлов" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ВерсииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ВерсииФайлов" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ВерсииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ВерсииФайлов" exception

Scenario: Запись item group Справочники "Виды контактной информации" (ВидыКонтактнойИнформации)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ВидыКонтактнойИнформации AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined And CurrentDataSource.IsFolder";'	|
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
				Then I raise "Could not open existing item group Справочники ВидыКонтактнойИнформации" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item group Справочники ВидыКонтактнойИнформации" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item group Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item group Справочники ВидыКонтактнойИнформации" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item group Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item group Справочники ВидыКонтактнойИнформации" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item group Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemgroup Справочники ВидыКонтактнойИнформации" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item group Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemgroup Справочники ВидыКонтактнойИнформации" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element group Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element group Справочники ВидыКонтактнойИнформации" exception

Scenario: Запись item Справочники "Виды контактной информации" (ВидыКонтактнойИнформации)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ВидыКонтактнойИнформации AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined And Not CurrentDataSource.IsFolder";'	|
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
				Then I raise "Could not open existing item Справочники ВидыКонтактнойИнформации" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ВидыКонтактнойИнформации" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ВидыКонтактнойИнформации" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ВидыКонтактнойИнформации" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ВидыКонтактнойИнформации" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ВидыКонтактнойИнформации" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ВидыКонтактнойИнформации" exception

Scenario: Запись item Справочники "Внешние пользователи" (ВнешниеПользователи)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ВнешниеПользователи AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ВнешниеПользователи" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ВнешниеПользователи" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ВнешниеПользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ВнешниеПользователи" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ВнешниеПользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ВнешниеПользователи" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ВнешниеПользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ВнешниеПользователи" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ВнешниеПользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ВнешниеПользователи" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ВнешниеПользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ВнешниеПользователи" exception

Scenario: Запись item Справочники "Группы внешних пользователей" (ГруппыВнешнихПользователей)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ГруппыВнешнихПользователей AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ГруппыВнешнихПользователей" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ГруппыВнешнихПользователей" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ГруппыВнешнихПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ГруппыВнешнихПользователей" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ГруппыВнешнихПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ГруппыВнешнихПользователей" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ГруппыВнешнихПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ГруппыВнешнихПользователей" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ГруппыВнешнихПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ГруппыВнешнихПользователей" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ГруппыВнешнихПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ГруппыВнешнихПользователей" exception

Scenario: Запись item Справочники "Группы пользователей" (ГруппыПользователей)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ГруппыПользователей AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ГруппыПользователей" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ГруппыПользователей" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ГруппыПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ГруппыПользователей" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ГруппыПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ГруппыПользователей" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ГруппыПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ГруппыПользователей" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ГруппыПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ГруппыПользователей" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ГруппыПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ГруппыПользователей" exception

Scenario: Запись item group Справочники "Дополнительные отчеты и обработки" (ДополнительныеОтчетыИОбработки)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ДополнительныеОтчетыИОбработки AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined And CurrentDataSource.IsFolder";'	|
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
				Then I raise "Could not open existing item group Справочники ДополнительныеОтчетыИОбработки" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item group Справочники ДополнительныеОтчетыИОбработки" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item group Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item group Справочники ДополнительныеОтчетыИОбработки" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item group Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item group Справочники ДополнительныеОтчетыИОбработки" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item group Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemgroup Справочники ДополнительныеОтчетыИОбработки" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item group Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemgroup Справочники ДополнительныеОтчетыИОбработки" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element group Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element group Справочники ДополнительныеОтчетыИОбработки" exception

Scenario: Запись item Справочники "Дополнительные отчеты и обработки" (ДополнительныеОтчетыИОбработки)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ДополнительныеОтчетыИОбработки AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined And Not CurrentDataSource.IsFolder";'	|
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
				Then I raise "Could not open existing item Справочники ДополнительныеОтчетыИОбработки" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ДополнительныеОтчетыИОбработки" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ДополнительныеОтчетыИОбработки" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ДополнительныеОтчетыИОбработки" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ДополнительныеОтчетыИОбработки" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ДополнительныеОтчетыИОбработки" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ДополнительныеОтчетыИОбработки" exception

Scenario: Запись item group Справочники "Заметки" (Заметки)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Заметки AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined And CurrentDataSource.IsFolder";'	|
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
				Then I raise "Could not open existing item group Справочники Заметки" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item group Справочники Заметки" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item group Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item group Справочники Заметки" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item group Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item group Справочники Заметки" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item group Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemgroup Справочники Заметки" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item group Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemgroup Справочники Заметки" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element group Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element group Справочники Заметки" exception

Scenario: Запись item Справочники "Заметки" (Заметки)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Заметки AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined And Not CurrentDataSource.IsFolder";'	|
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
				Then I raise "Could not open existing item Справочники Заметки" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники Заметки" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники Заметки" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники Заметки" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники Заметки" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники Заметки" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники Заметки" exception

Scenario: Запись item Справочники "Идентификаторы объектов метаданных" (ИдентификаторыОбъектовМетаданных)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ИдентификаторыОбъектовМетаданных AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ИдентификаторыОбъектовМетаданных" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ИдентификаторыОбъектовМетаданных" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ИдентификаторыОбъектовМетаданных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ИдентификаторыОбъектовМетаданных" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ИдентификаторыОбъектовМетаданных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ИдентификаторыОбъектовМетаданных" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ИдентификаторыОбъектовМетаданных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ИдентификаторыОбъектовМетаданных" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ИдентификаторыОбъектовМетаданных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ИдентификаторыОбъектовМетаданных" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ИдентификаторыОбъектовМетаданных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ИдентификаторыОбъектовМетаданных" exception

Scenario: Запись item Справочники "Идентификаторы объектов расширений" (ИдентификаторыОбъектовРасширений)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ИдентификаторыОбъектовРасширений AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ИдентификаторыОбъектовРасширений" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ИдентификаторыОбъектовРасширений" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ИдентификаторыОбъектовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ИдентификаторыОбъектовРасширений" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ИдентификаторыОбъектовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ИдентификаторыОбъектовРасширений" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ИдентификаторыОбъектовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ИдентификаторыОбъектовРасширений" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ИдентификаторыОбъектовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ИдентификаторыОбъектовРасширений" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ИдентификаторыОбъектовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ИдентификаторыОбъектовРасширений" exception

Scenario: Запись item group Справочники "Графики работы" (Календари)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Календари AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined And CurrentDataSource.IsFolder";'	|
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
				Then I raise "Could not open existing item group Справочники Календари" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item group Справочники Календари" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item group Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item group Справочники Календари" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item group Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item group Справочники Календари" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item group Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemgroup Справочники Календари" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item group Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemgroup Справочники Календари" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element group Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element group Справочники Календари" exception

Scenario: Запись item Справочники "Графики работы" (Календари)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Календари AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined And Not CurrentDataSource.IsFolder";'	|
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
				Then I raise "Could not open existing item Справочники Календари" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники Календари" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники Календари" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники Календари" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники Календари" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники Календари" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники Календари" exception

Scenario: Запись item Справочники "Макеты печатных форм" (МакетыПечатныхФорм)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.МакетыПечатныхФорм AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники МакетыПечатныхФорм" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники МакетыПечатныхФорм" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники МакетыПечатныхФорм" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники МакетыПечатныхФорм" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники МакетыПечатныхФорм" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники МакетыПечатныхФорм" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники МакетыПечатныхФорм" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники МакетыПечатныхФорм" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники МакетыПечатныхФорм" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники МакетыПечатныхФорм" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники МакетыПечатныхФорм" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники МакетыПечатныхФорм" exception

Scenario: Запись item Справочники "Папки" (ПапкиФайлов)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ПапкиФайлов AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ПапкиФайлов" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ПапкиФайлов" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ПапкиФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ПапкиФайлов" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ПапкиФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ПапкиФайлов" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ПапкиФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ПапкиФайлов" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ПапкиФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ПапкиФайлов" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ПапкиФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ПапкиФайлов" exception

Scenario: Запись item Справочники "Пользователи" (Пользователи)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Пользователи AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники Пользователи" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники Пользователи" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники Пользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники Пользователи" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники Пользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники Пользователи" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники Пользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники Пользователи" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники Пользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники Пользователи" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники Пользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники Пользователи" exception

Scenario: Запись item Справочники "Пользовательские настройки отчетов" (ПользовательскиеНастройкиОтчетов)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ПользовательскиеНастройкиОтчетов AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ПользовательскиеНастройкиОтчетов" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ПользовательскиеНастройкиОтчетов" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ПользовательскиеНастройкиОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ПользовательскиеНастройкиОтчетов" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ПользовательскиеНастройкиОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ПользовательскиеНастройкиОтчетов" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ПользовательскиеНастройкиОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ПользовательскиеНастройкиОтчетов" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ПользовательскиеНастройкиОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ПользовательскиеНастройкиОтчетов" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ПользовательскиеНастройкиОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ПользовательскиеНастройкиОтчетов" exception

Scenario: Запись item Справочники "Предопределенные варианты отчетов" (ПредопределенныеВариантыОтчетов)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ПредопределенныеВариантыОтчетов AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ПредопределенныеВариантыОтчетов" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ПредопределенныеВариантыОтчетов" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ПредопределенныеВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ПредопределенныеВариантыОтчетов" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ПредопределенныеВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ПредопределенныеВариантыОтчетов" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ПредопределенныеВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ПредопределенныеВариантыОтчетов" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ПредопределенныеВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ПредопределенныеВариантыОтчетов" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ПредопределенныеВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ПредопределенныеВариантыОтчетов" exception

Scenario: Запись item Справочники "Предопределенные варианты отчетов расширений" (ПредопределенныеВариантыОтчетовРасширений)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ПредопределенныеВариантыОтчетовРасширений AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ПредопределенныеВариантыОтчетовРасширений" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ПредопределенныеВариантыОтчетовРасширений" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ПредопределенныеВариантыОтчетовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ПредопределенныеВариантыОтчетовРасширений" exception

Scenario: Запись item Справочники "Производственные календари" (ПроизводственныеКалендари)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ПроизводственныеКалендари AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ПроизводственныеКалендари" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ПроизводственныеКалендари" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ПроизводственныеКалендари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ПроизводственныеКалендари" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ПроизводственныеКалендари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ПроизводственныеКалендари" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ПроизводственныеКалендари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ПроизводственныеКалендари" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ПроизводственныеКалендари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ПроизводственныеКалендари" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ПроизводственныеКалендари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ПроизводственныеКалендари" exception

Scenario: Запись item Справочники "Страны мира" (СтраныМира)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.СтраныМира AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники СтраныМира" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники СтраныМира" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники СтраныМира" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники СтраныМира" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники СтраныМира" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники СтраныМира" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники СтраныМира" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники СтраныМира" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники СтраныМира" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники СтраныМира" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники СтраныМира" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники СтраныМира" exception

Scenario: Запись item Справочники "Тома хранения файлов" (ТомаХраненияФайлов)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ТомаХраненияФайлов AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ТомаХраненияФайлов" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ТомаХраненияФайлов" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ТомаХраненияФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ТомаХраненияФайлов" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ТомаХраненияФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ТомаХраненияФайлов" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ТомаХраненияФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ТомаХраненияФайлов" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ТомаХраненияФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ТомаХраненияФайлов" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ТомаХраненияФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ТомаХраненияФайлов" exception

Scenario: Запись item Справочники "Уровни языка" (УровниЯзыка)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.УровниЯзыка AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники УровниЯзыка" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники УровниЯзыка" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники УровниЯзыка" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники УровниЯзыка" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники УровниЯзыка" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники УровниЯзыка" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники УровниЯзыка" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники УровниЯзыка" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники УровниЯзыка" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники УровниЯзыка" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники УровниЯзыка" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники УровниЯзыка" exception

Scenario: Запись item Справочники "Ученики" (Ученики)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Ученики AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники Ученики" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники Ученики" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники Ученики" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники Ученики" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники Ученики" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники Ученики" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники Ученики" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники Ученики" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники Ученики" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники Ученики" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники Ученики" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники Ученики" exception

Scenario: Запись item Справочники "Учетные записи синхронизации файлов" (УчетныеЗаписиСинхронизацииФайлов)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.УчетныеЗаписиСинхронизацииФайлов AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники УчетныеЗаписиСинхронизацииФайлов" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники УчетныеЗаписиСинхронизацииФайлов" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники УчетныеЗаписиСинхронизацииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники УчетныеЗаписиСинхронизацииФайлов" exception

Scenario: Запись item Справочники "Файлы" (Файлы)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Файлы AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники Файлы" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники Файлы" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники Файлы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники Файлы" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники Файлы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники Файлы" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники Файлы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники Файлы" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники Файлы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники Файлы" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники Файлы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники Файлы" exception

Scenario: Запись item Справочники "Хранилище двоичных данных" (ХранилищеДвоичныхДанных)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ХранилищеДвоичныхДанных AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ХранилищеДвоичныхДанных" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ХранилищеДвоичныхДанных" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ХранилищеДвоичныхДанных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ХранилищеДвоичныхДанных" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ХранилищеДвоичныхДанных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ХранилищеДвоичныхДанных" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ХранилищеДвоичныхДанных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ХранилищеДвоичныхДанных" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ХранилищеДвоичныхДанных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ХранилищеДвоичныхДанных" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ХранилищеДвоичныхДанных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ХранилищеДвоичныхДанных" exception

Scenario: Запись item Справочники "Часовые пояса" (ЧасовыеПояса)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.ЧасовыеПояса AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники ЧасовыеПояса" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники ЧасовыеПояса" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники ЧасовыеПояса" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники ЧасовыеПояса" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники ЧасовыеПояса" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники ЧасовыеПояса" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники ЧасовыеПояса" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники ЧасовыеПояса" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники ЧасовыеПояса" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники ЧасовыеПояса" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники ЧасовыеПояса" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники ЧасовыеПояса" exception

Scenario: Запись item Справочники "Тарифы" (Тарифы)

	* Search for a link to an existing item
		And I execute 1C:Enterprise script at server 
			| 'Query = Новый Query;'								|
			| 'Query.Text = "SELECT TOP 1 CurrentDataSource.Ref AS Ref FROM Catalog.Тарифы AS CurrentDataSource WHERE Not CurrentDataSource.DeletionMark And Not CurrentDataSource.Predefined";'	|
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
				Then I raise "Could not open existing item Справочники Тарифы" exception
			If current form name is "ErrorWindow" Then
				Then I raise "Could not open existing item Справочники Тарифы" exception
			And I save form header as 'ЗаголовокФормы' variable

		* Save an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать' attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save an existing item Справочники Тарифы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save an existing item Справочники Тарифы" exception

		* Reread an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаПеречитать' attribute is present on the form Then
				And I click the button named 'ФормаПеречитать'
				If the warning is displayed then
					Then I raise "Failed to Reread an existing item Справочники Тарифы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Reread an existing item Справочники Тарифы" exception

		* Mark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened'
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Mark to delete an existing item Справочники Тарифы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Mark to delete an existing itemСправочники Тарифы" exception

		* Unmark to delete an existing item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаУстановитьПометкуУдаления' attribute is present on the form Then
				And I click the button named 'ФормаУстановитьПометкуУдаления'
				If '1С:Предприятие' window is opened then
					And I click the button named 'Button0'
				If the warning is displayed then
					Then I raise "Failed to Unmark to delete an existing item Справочники Тарифы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Unmark to delete an existing itemСправочники Тарифы" exception

		* Save and close an existing element
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписатьИЗакрыть' attribute is present on the form Then
				And I click the button named 'ФормаЗаписатьИЗакрыть'
				If the warning is displayed then
					Then I raise "Failed to Save and close an existing element Справочники Тарифы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to Save and close an existing element Справочники Тарифы" exception
