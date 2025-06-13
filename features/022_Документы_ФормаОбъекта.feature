
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Документы - ФормаОбъекта
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Opening form Документы "Оплата" (ПоступлениеДС)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Документы ПоступлениеДС" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Документы ПоступлениеДС" exception
	And I close current window

Scenario: Opening form Документы "Уроки" (Уроки)

	
	If the warning is displayed then
		Then I raise "The main form could not be opened Документы Уроки" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The main form could not be opened Документы Уроки" exception
	And I close current window
