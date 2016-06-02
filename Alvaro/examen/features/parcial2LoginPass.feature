@todo
Feature: Como usuario de mi aplicacion yo quiero que

Scenario Outline: loggear a mi aplicacion

Given dado que mi nombre de usuario es <userName>
    And mi password  es <password>
When cuando  presiono login

Then aparece mi mensaje <message>

Examples:

| userName | password | message |
| alvaro | 147 | Welcome | 
| jorge | 369 | BienVenido |
| bruno | 258 | HOLAAA |