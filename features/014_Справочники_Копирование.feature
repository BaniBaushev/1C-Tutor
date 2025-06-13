
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Справочники - Копирование
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Копирование item Справочники "Валюты" (Валюты)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники Валюты" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники Валюты" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники Валюты" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники Валюты" exception

Scenario: Копирование item Справочники "Отчеты" (ВариантыОтчетов)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ВариантыОтчетов" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ВариантыОтчетов" exception

Scenario: Копирование item Справочники "Версии расширений" (ВерсииРасширений)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ВерсииРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ВерсииРасширений" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ВерсииРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ВерсииРасширений" exception

Scenario: Копирование item Справочники "Версии файлов" (ВерсииФайлов)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ВерсииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ВерсииФайлов" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ВерсииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ВерсииФайлов" exception

Scenario: Копирование item group Справочники "Виды контактной информации" (ВидыКонтактнойИнформации)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item group Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item group Справочники ВидыКонтактнойИнформации" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item group Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item group Справочники ВидыКонтактнойИнформации" exception

Scenario: Копирование item Справочники "Виды контактной информации" (ВидыКонтактнойИнформации)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ВидыКонтактнойИнформации" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ВидыКонтактнойИнформации" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ВидыКонтактнойИнформации" exception

Scenario: Копирование item Справочники "Внешние пользователи" (ВнешниеПользователи)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ВнешниеПользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ВнешниеПользователи" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ВнешниеПользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ВнешниеПользователи" exception

Scenario: Копирование item Справочники "Группы внешних пользователей" (ГруппыВнешнихПользователей)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ГруппыВнешнихПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ГруппыВнешнихПользователей" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ГруппыВнешнихПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ГруппыВнешнихПользователей" exception

Scenario: Копирование item Справочники "Группы пользователей" (ГруппыПользователей)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ГруппыПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ГруппыПользователей" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ГруппыПользователей" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ГруппыПользователей" exception

Scenario: Копирование item group Справочники "Дополнительные отчеты и обработки" (ДополнительныеОтчетыИОбработки)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item group Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item group Справочники ДополнительныеОтчетыИОбработки" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item group Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item group Справочники ДополнительныеОтчетыИОбработки" exception

Scenario: Копирование item Справочники "Дополнительные отчеты и обработки" (ДополнительныеОтчетыИОбработки)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ДополнительныеОтчетыИОбработки" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ДополнительныеОтчетыИОбработки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ДополнительныеОтчетыИОбработки" exception

Scenario: Копирование item group Справочники "Заметки" (Заметки)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item group Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item group Справочники Заметки" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item group Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item group Справочники Заметки" exception

Scenario: Копирование item Справочники "Заметки" (Заметки)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники Заметки" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники Заметки" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники Заметки" exception

Scenario: Копирование item Справочники "Идентификаторы объектов метаданных" (ИдентификаторыОбъектовМетаданных)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ИдентификаторыОбъектовМетаданных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ИдентификаторыОбъектовМетаданных" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ИдентификаторыОбъектовМетаданных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ИдентификаторыОбъектовМетаданных" exception

Scenario: Копирование item Справочники "Идентификаторы объектов расширений" (ИдентификаторыОбъектовРасширений)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ИдентификаторыОбъектовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ИдентификаторыОбъектовРасширений" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ИдентификаторыОбъектовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ИдентификаторыОбъектовРасширений" exception

Scenario: Копирование item group Справочники "Графики работы" (Календари)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item group Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item group Справочники Календари" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item group Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item group Справочники Календари" exception

Scenario: Копирование item Справочники "Графики работы" (Календари)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники Календари" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники Календари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники Календари" exception

Scenario: Копирование item Справочники "Макеты печатных форм" (МакетыПечатныхФорм)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники МакетыПечатныхФорм" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники МакетыПечатныхФорм" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники МакетыПечатныхФорм" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники МакетыПечатныхФорм" exception

Scenario: Копирование item Справочники "Папки" (ПапкиФайлов)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ПапкиФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ПапкиФайлов" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ПапкиФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ПапкиФайлов" exception

Scenario: Копирование item Справочники "Пользователи" (Пользователи)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники Пользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники Пользователи" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники Пользователи" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники Пользователи" exception

Scenario: Копирование item Справочники "Пользовательские настройки отчетов" (ПользовательскиеНастройкиОтчетов)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ПользовательскиеНастройкиОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ПользовательскиеНастройкиОтчетов" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ПользовательскиеНастройкиОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ПользовательскиеНастройкиОтчетов" exception

Scenario: Копирование item Справочники "Предопределенные варианты отчетов" (ПредопределенныеВариантыОтчетов)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ПредопределенныеВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ПредопределенныеВариантыОтчетов" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ПредопределенныеВариантыОтчетов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ПредопределенныеВариантыОтчетов" exception

Scenario: Копирование item Справочники "Предопределенные варианты отчетов расширений" (ПредопределенныеВариантыОтчетовРасширений)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ПредопределенныеВариантыОтчетовРасширений" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ПредопределенныеВариантыОтчетовРасширений" exception

Scenario: Копирование item Справочники "Производственные календари" (ПроизводственныеКалендари)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ПроизводственныеКалендари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ПроизводственныеКалендари" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ПроизводственныеКалендари" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ПроизводственныеКалендари" exception

Scenario: Копирование item Справочники "Страны мира" (СтраныМира)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники СтраныМира" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники СтраныМира" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники СтраныМира" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники СтраныМира" exception

Scenario: Копирование item Справочники "Тома хранения файлов" (ТомаХраненияФайлов)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ТомаХраненияФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ТомаХраненияФайлов" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ТомаХраненияФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ТомаХраненияФайлов" exception

Scenario: Копирование item Справочники "Уровни языка" (УровниЯзыка)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники УровниЯзыка" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники УровниЯзыка" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники УровниЯзыка" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники УровниЯзыка" exception

Scenario: Копирование item Справочники "Ученики" (Ученики)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники Ученики" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники Ученики" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники Ученики" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники Ученики" exception

Scenario: Копирование item Справочники "Учетные записи синхронизации файлов" (УчетныеЗаписиСинхронизацииФайлов)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники УчетныеЗаписиСинхронизацииФайлов" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники УчетныеЗаписиСинхронизацииФайлов" exception

Scenario: Копирование item Справочники "Файлы" (Файлы)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники Файлы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники Файлы" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники Файлы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники Файлы" exception

Scenario: Копирование item Справочники "Хранилище двоичных данных" (ХранилищеДвоичныхДанных)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ХранилищеДвоичныхДанных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ХранилищеДвоичныхДанных" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ХранилищеДвоичныхДанных" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ХранилищеДвоичныхДанных" exception

Scenario: Копирование item Справочники "Часовые пояса" (ЧасовыеПояса)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники ЧасовыеПояса" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники ЧасовыеПояса" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники ЧасовыеПояса" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники ЧасовыеПояса" exception

Scenario: Копирование item Справочники "Тарифы" (Тарифы)

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

		* Create a new item by copying
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаСкопировать'  attribute is present on the form Then
				And I click the button named 'ФормаСкопировать'
				If the warning is displayed then
					Then I raise "Failed to copy an existing item Справочники Тарифы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to copy an existing item Справочники Тарифы" exception
				And I save form header as 'ЗаголовокФормы'  variable

		* Save a new item
			Then '$ЗаголовокФормы$' window is opened
			If 'ФормаЗаписать'attribute is present on the form Then
				And I click the button named 'ФормаЗаписать'
				If the warning is displayed then
					Then I raise "Failed to save new item Справочники Тарифы" exception
				If current form name is "ErrorWindow" Then
					Then I raise "Failed to save new item Справочники Тарифы" exception
