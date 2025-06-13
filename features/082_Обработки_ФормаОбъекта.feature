
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Обработки - ФормаОбъекта
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Opening form Обработки "Автоматическое извлечение текстов" (АвтоматическоеИзвлечениеТекстов)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки АвтоматическоеИзвлечениеТекстов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки АвтоматическоеИзвлечениеТекстов" exception
	And I close current window

Scenario: Opening form Обработки "Активные пользователи" (АктивныеПользователи)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки АктивныеПользователи" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки АктивныеПользователи" exception
	And I close current window

Scenario: Opening form Обработки "Блокировка работы пользователей" (БлокировкаРаботыПользователей)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки БлокировкаРаботыПользователей" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки БлокировкаРаботыПользователей" exception
	And I close current window

Scenario: Opening form Обработки "Ввод контактной информации" (ВводКонтактнойИнформации)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ВводКонтактнойИнформации" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ВводКонтактнойИнформации" exception
	And I close current window

Scenario: Opening form Обработки "Групповое изменение реквизитов" (ГрупповоеИзменениеРеквизитов)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ГрупповоеИзменениеРеквизитов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ГрупповоеИзменениеРеквизитов" exception
	And I close current window

Scenario: Opening form Обработки "Журнал регистрации" (ЖурналРегистрации)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ЖурналРегистрации" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ЖурналРегистрации" exception
	And I close current window

Scenario: Opening form Обработки "Загрузка курсов валют" (ЗагрузкаКурсовВалют)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ЗагрузкаКурсовВалют" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ЗагрузкаКурсовВалют" exception
	And I close current window

Scenario: Opening form Обработки "Замена и объединение элементов" (ЗаменаИОбъединениеЭлементов)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ЗаменаИОбъединениеЭлементов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ЗаменаИОбъединениеЭлементов" exception
	And I close current window

Scenario: Opening form Обработки "Настройка резервного копирования" (НастройкаРезервногоКопированияИБ)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки НастройкаРезервногоКопированияИБ" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки НастройкаРезервногоКопированияИБ" exception
	And I close current window

Scenario: Opening form Обработки "Настройки пользователей" (НастройкиПользователей)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки НастройкиПользователей" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки НастройкиПользователей" exception
	And I close current window

Scenario: Opening form Обработки "Нерекомендуемая версия платформы" (НерекомендуемаяВерсияПлатформы)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки НерекомендуемаяВерсияПлатформы" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки НерекомендуемаяВерсияПлатформы" exception
	And I close current window

Scenario: Opening form Обработки "Описание обработчиков обновления" (ОписаниеОбработчиковОбновления)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ОписаниеОбработчиковОбновления" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ОписаниеОбработчиковОбновления" exception
	And I close current window

Scenario: Opening form Обработки "Перенос файлов" (ПереносФайлов)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ПереносФайлов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ПереносФайлов" exception
	And I close current window

Scenario: Opening form Обработки "Поиск и удаление дублей" (ПоискИУдалениеДублей)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ПоискИУдалениеДублей" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ПоискИУдалениеДублей" exception
	And I close current window

Scenario: Opening form Обработки "Полнотекстовый поиск" (ПолнотекстовыйПоискВДанных)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ПолнотекстовыйПоискВДанных" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ПолнотекстовыйПоискВДанных" exception
	And I close current window

Scenario: Opening form Обработки "Расширенный ввод контактной информации" (РасширенныйВводКонтактнойИнформации)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки РасширенныйВводКонтактнойИнформации" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки РасширенныйВводКонтактнойИнформации" exception
	And I close current window

Scenario: Opening form Обработки "Регламентные и фоновые задания" (РегламентныеИФоновыеЗадания)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки РегламентныеИФоновыеЗадания" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки РегламентныеИФоновыеЗадания" exception
	And I close current window

Scenario: Opening form Обработки "Резервное копирование ИБ" (РезервноеКопированиеИБ)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки РезервноеКопированиеИБ" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки РезервноеКопированиеИБ" exception
	And I close current window

Scenario: Opening form Обработки "Результаты обновления приложения" (РезультатыОбновленияПрограммы)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки РезультатыОбновленияПрограммы" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки РезультатыОбновленияПрограммы" exception
	And I close current window

Scenario: Opening form Обработки "Рекомендация по повышению скорости работы" (РекомендацияПоПовышениюСкоростиРаботы)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки РекомендацияПоПовышениюСкоростиРаботы" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки РекомендацияПоПовышениюСкоростиРаботы" exception
	And I close current window

Scenario: Opening form Обработки "Сдвиг границы итогов" (СдвигГраницыИтогов)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки СдвигГраницыИтогов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки СдвигГраницыИтогов" exception
	And I close current window

Scenario: Opening form Обработки "Удаление помеченных объектов" (УдалениеПомеченныхОбъектов)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки УдалениеПомеченныхОбъектов" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки УдалениеПомеченныхОбъектов" exception
	And I close current window

Scenario: Opening form Обработки "Управление итогами и агрегатами" (УправлениеИтогамиИАгрегатами)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки УправлениеИтогамиИАгрегатами" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки УправлениеИтогамиИАгрегатами" exception
	And I close current window

Scenario: Opening form Обработки "Результат работы" (РезультатРаботы)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки РезультатРаботы" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки РезультатРаботы" exception
	And I close current window

Scenario: Opening form Обработки "Показатели бизнеса" (ПоказателиБизнеса)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Обработки ПоказателиБизнеса" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Обработки ПоказателиБизнеса" exception
	And I close current window
