
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Регистры сведений - ФормаСписка
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Opening the List form Регистры сведений "Версии подсистем" (ВерсииПодсистем)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ВерсииПодсистем" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ВерсииПодсистем" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Длительные операции" (ДлительныеОперации)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ДлительныеОперации" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ДлительныеОперации" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Идентификаторы объектов версий расширений" (ИдентификаторыОбъектовВерсийРасширений)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ИдентификаторыОбъектовВерсийРасширений" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ИдентификаторыОбъектовВерсийРасширений" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Иерархия групп пользователей" (ИерархияГруппПользователей)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ИерархияГруппПользователей" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ИерархияГруппПользователей" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Курсы валют" (КурсыВалют)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений КурсыВалют" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений КурсыВалют" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Напоминания пользователя" (НапоминанияПользователя)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений НапоминанияПользователя" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений НапоминанияПользователя" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Настройки версионирования объектов" (НастройкиВерсионированияОбъектов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений НастройкиВерсионированияОбъектов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений НастройкиВерсионированияОбъектов" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Настройки очистки файлов" (НастройкиОчисткиФайлов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений НастройкиОчисткиФайлов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений НастройкиОчисткиФайлов" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Настройки синхронизации файлов" (НастройкиСинхронизацииФайлов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений НастройкиСинхронизацииФайлов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений НастройкиСинхронизацииФайлов" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Неудаленные объекты" (НеудаленныеОбъекты)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений НеудаленныеОбъекты" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений НеудаленныеОбъекты" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Обработчики обновления" (ОбработчикиОбновления)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ОбработчикиОбновления" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ОбработчикиОбновления" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Отправленные серверные оповещения" (ОтправленныеСерверныеОповещения)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ОтправленныеСерверныеОповещения" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ОтправленныеСерверныеОповещения" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Параметры работы версий расширений" (ПараметрыРаботыВерсийРасширений)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ПараметрыРаботыВерсийРасширений" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ПараметрыРаботыВерсийРасширений" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Параметры работы приложения" (ПараметрыРаботыПрограммы)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ПараметрыРаботыПрограммы" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ПараметрыРаботыПрограммы" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Периодические серверные оповещения" (ПериодическиеСерверныеОповещения)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ПериодическиеСерверныеОповещения" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ПериодическиеСерверныеОповещения" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Пользовательские макеты печати" (ПользовательскиеМакетыПечати)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ПользовательскиеМакетыПечати" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ПользовательскиеМакетыПечати" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Сведения о пользователях" (СведенияОПользователях)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений СведенияОПользователях" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений СведенияОПользователях" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Снимки отчетов" (СнимкиОтчетов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений СнимкиОтчетов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений СнимкиОтчетов" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Составы групп пользователей" (СоставыГруппПользователей)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений СоставыГруппПользователей" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений СоставыГруппПользователей" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Файлы в рабочем каталоге" (ФайлыВРабочемКаталоге)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ФайлыВРабочемКаталоге" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ФайлыВРабочемКаталоге" exception
	And I close current window

Scenario: Opening the List form Регистры сведений "Хранилище файлов" (ХранилищеФайлов)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Регистры сведений ХранилищеФайлов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Регистры сведений ХранилищеФайлов" exception
	And I close current window
