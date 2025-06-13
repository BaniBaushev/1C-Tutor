
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Отчеты - ФормаОбъекта
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Opening form Отчеты "Движения документа" (ДвиженияДокумента)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Отчеты ДвиженияДокумента" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Отчеты ДвиженияДокумента" exception
	And I close current window

Scenario: Opening form Отчеты "Длительность отложенного обновления" (ДлительностьОтложенногоОбновления)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Отчеты ДлительностьОтложенногоОбновления" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Отчеты ДлительностьОтложенногоОбновления" exception
	And I close current window

Scenario: Opening form Отчеты "Пользователи по подразделениям" (ПользователиПоПодразделениям)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Отчеты ПользователиПоПодразделениям" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Отчеты ПользователиПоПодразделениям" exception
	And I close current window

Scenario: Opening form Отчеты "Прогресс отложенного обновления" (ПрогрессОтложенногоОбновления)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Отчеты ПрогрессОтложенногоОбновления" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Отчеты ПрогрессОтложенногоОбновления" exception
	And I close current window

Scenario: Opening form Отчеты "Универсальный отчет" (УниверсальныйОтчет)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Отчеты УниверсальныйОтчет" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Отчеты УниверсальныйОтчет" exception
	And I close current window

Scenario: Opening form Отчеты "Участники групп пользователей" (УчастникиГруппПользователей)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Отчеты УчастникиГруппПользователей" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Отчеты УчастникиГруппПользователей" exception
	And I close current window

Scenario: Opening form Отчеты "Баланс учеников" (БалансУчеников)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Отчеты БалансУчеников" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Отчеты БалансУчеников" exception
	And I close current window

Scenario: Opening form Отчеты "Прибыль" (Прибыль)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Отчеты Прибыль" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Отчеты Прибыль" exception
	And I close current window
