
#language: en

@tree
@SmokeTest

Feature: Smoke tests - Документы - ФормаСписка
# Configuration Tutor
# Version: 1.0.0.1

Background:
	Given I launch TestClient opening script or connect the existing one
	And I close all client application windows

Scenario: Opening the List form Документы "Оплата" (ПоступлениеДС)

	
	If the warning is displayed then
		Then I raise "The list form could not be opened Документы ПоступлениеДС" exception
	If current form name is "ErrorWindow" Then
		Then I raise "The list form could not be opened Документы ПоступлениеДС" exception
	And I close current window
