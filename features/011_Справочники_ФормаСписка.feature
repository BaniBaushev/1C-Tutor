
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Справочники - ФормаСписка
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Opening the List form Справочники "Валюты" (Валюты)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники Валюты" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники Валюты" exception
	And I close current window

Scenario: Opening the List form Справочники "Отчеты" (ВариантыОтчетов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ВариантыОтчетов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ВариантыОтчетов" exception
	And I close current window

Scenario: Opening the List form Справочники "Версии расширений" (ВерсииРасширений)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ВерсииРасширений" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ВерсииРасширений" exception
	And I close current window

Scenario: Opening the List form Справочники "Версии файлов" (ВерсииФайлов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ВерсииФайлов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ВерсииФайлов" exception
	And I close current window

Scenario: Opening the List form Справочники "Виды контактной информации" (ВидыКонтактнойИнформации)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ВидыКонтактнойИнформации" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ВидыКонтактнойИнформации" exception
	And I close current window

Scenario: Opening the List form Справочники "Внешние пользователи" (ВнешниеПользователи)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ВнешниеПользователи" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ВнешниеПользователи" exception
	And I close current window

Scenario: Opening the List form Справочники "Группы внешних пользователей" (ГруппыВнешнихПользователей)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ГруппыВнешнихПользователей" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ГруппыВнешнихПользователей" exception
	And I close current window

Scenario: Opening the List form Справочники "Группы пользователей" (ГруппыПользователей)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ГруппыПользователей" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ГруппыПользователей" exception
	And I close current window

Scenario: Opening the List form Справочники "Дополнительные отчеты и обработки" (ДополнительныеОтчетыИОбработки)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ДополнительныеОтчетыИОбработки" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ДополнительныеОтчетыИОбработки" exception
	And I close current window

Scenario: Opening the List form Справочники "Идентификаторы объектов метаданных" (ИдентификаторыОбъектовМетаданных)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ИдентификаторыОбъектовМетаданных" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ИдентификаторыОбъектовМетаданных" exception
	And I close current window

Scenario: Opening the List form Справочники "Идентификаторы объектов расширений" (ИдентификаторыОбъектовРасширений)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ИдентификаторыОбъектовРасширений" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ИдентификаторыОбъектовРасширений" exception
	And I close current window

Scenario: Opening the List form Справочники "Графики работы" (Календари)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники Календари" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники Календари" exception
	And I close current window

Scenario: Opening the List form Справочники "Папки" (ПапкиФайлов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ПапкиФайлов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ПапкиФайлов" exception
	And I close current window

Scenario: Opening the List form Справочники "Пользователи" (Пользователи)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники Пользователи" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники Пользователи" exception
	And I close current window

Scenario: Opening the List form Справочники "Производственные календари" (ПроизводственныеКалендари)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ПроизводственныеКалендари" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ПроизводственныеКалендари" exception
	And I close current window

Scenario: Opening the List form Справочники "Страны мира" (СтраныМира)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники СтраныМира" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники СтраныМира" exception
	And I close current window

Scenario: Opening the List form Справочники "Тома хранения файлов" (ТомаХраненияФайлов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники ТомаХраненияФайлов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники ТомаХраненияФайлов" exception
	And I close current window

Scenario: Opening the List form Справочники "Файлы" (Файлы)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Справочники Файлы" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Справочники Файлы" exception
	And I close current window
