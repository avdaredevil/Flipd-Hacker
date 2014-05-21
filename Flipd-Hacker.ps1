<#
|==============================================================================>|
   Flipd Test Passing Utility by APoorv Verma [AP] on 3/22/2014
|==============================================================================>|
      $) Web Scrapes website to get details of problems
      $) Awesome Powershell Based UI to allow for 0 dependency
      $) Ask the User for Password, questions to solve, and OE answers
      $) JavaScript Injections used for faster and more seamless integration
      $) Supports all types of problems I have ever come across
      $) Has gray area [unknown territory] support [won't crash]
      $) Rescue functions to let devloper complete the missing portions
|==============================================================================>|
#>
Param([Switch]$ShowIE)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gRXhlY3V0ZS1XZWJTY3JpcHQgewpwYXJhbSgkSUUsIFtTdHJpbmddJFNjcmlwdCwgW1ZhbGlkYXRlU2V0KCJKYXZhU2NyaXB0IildJExhbmd1YWdlPSJKYXZhU2NyaXB0IikNCg0KICAgICRJRS5kb2N1bWVudC5wYXJlbnRXaW5kb3cuZXhlY1NjcmlwdCgiJFNjcmlwdCIsJExhbmd1YWdlLnRvTG93ZXIoKSkNCn0KCmZ1bmN0aW9uIExvYWQtSlMtTGliIHsKcGFyYW0oJElFLCBbQWxpYXMoIkxpYiIsIkxpYnMiLCJMaWJyYXJ5IildJExpYnJhcmllcyA9ICJKUXVlcnkiLCBbU3dpdGNoXSRHZXRTcmMpDQoNCiAgICAkTGlicyA9IEB7ICNUb29sa2l0cyBhbmQgdGhlaXIgZG93bmxvYWRzDQogICAgICAgICJKUXVlcnkiID0gImh0dHA6Ly9hamF4Lmdvb2dsZWFwaXMuY29tL2FqYXgvbGlicy9qcXVlcnkvMS4xMS4wL2pxdWVyeS5taW4uanMiDQogICAgfQ0KICAgIGZvcmVhY2ggKCRMaWIgaW4gJExpYnJhcmllcykgew0KICAgICAgICAkREIgPSAkTGlicy4kTGliDQogICAgICAgIGlmICghJERCKSB7Y29udGludWV9DQogICAgICAgIEluamVjdC1KUyAkSUUgJERCIC1HZXRTcmM6JEdldFNyYw0KICAgIH0NCn0KCmZ1bmN0aW9uIElucHV0LVByb21wdCB7CnBhcmFtKFtWYWxpZGF0ZU5vdE51bGxvckVtcHR5KCldW1N0cmluZ10kUHJvbXB0ID0gIkVudGVyIFRleHQgOiAiKQ0KDQogICAgV3JpdGUtaG9zdCAtbm9uZXdsaW5lICRQcm9tcHQNCiAgICAkUmVSZWdYID0gJ1teXHgwMS1ceDA4XHgxMC1ceDgwXSsnIydbXlx3XC5dJyBb0JAt0Y/QgdGRXQ0KICAgICRUclN0cmluZyA9ICIiDQogICAgJEN2aXMgPSBbQ29uc29sZV06OkN1cnNvclZpc2libGUNCiAgICBbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkRmFsc2UNCiAgICAkQ291bnQgPSAxOyRTbGVlcCA9IDANCiAgICBXaGlsZSAoJFRydWUpIHsNCiAgICAgICAgaWYgKCRjb3VudCAtZ3QgNTAwKSB7JFNsZWVwID0gMTAwfQ0KICAgICAgICBpZiAoJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlKSB7JFN0b3JlID0gJEhvc3QuVUkuUmF3VUkuUmVhZEtleSgiSW5jbHVkZUtleVVwLE5vRWNobyIpOyRDb3VudD0wOyRTbGVlcD0wfSBlbHNlIHskQ291bnQrKztTdGFydC1TbGVlcCAtbSAkU2xlZXA7Y29udGludWV9DQogICAgICAgIGlmIChLZXlQcmVzc2VkICJ+fkJhY2tTcGFjZX5+IiAkU3RvcmUpIHtpZiAoJHN0b3JlLkNvbnRyb2xLZXlTdGF0ZSAtbWF0Y2ggImN0cmwiKSB7JFRyU3RyaW5nPSIifSBlbHNlIHskVHJTdHJpbmcgPSA/OiAoJFRyU3RyaW5nLkxlbmd0aCAtZXEgMCl7IiJ9eyRUclN0cmluZy5zdWJzdHJpbmcoMCwkVHJTdHJpbmcuTGVuZ3RoLTEpfX19DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5TcGFjZX5+IiAkU3RvcmUpIHskVHJTdHJpbmcgKz0gIiAifQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RXNjYXBlfn4iICRTdG9yZSkgeyRUclN0cmluZz0iIjticmVha30NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+fkVOVEVSfn4iICRTdG9yZSkge1dyaXRlLUhvc3QgIiI7YnJlYWt9IGVsc2UgDQogICAgICAgIHskVHJTdHJpbmcgKz0gJFN0b3JlLkNoYXJhY3RlciAtcmVwbGFjZSAoJFJlUmVnWCwnJyl9DQogICAgICAgICR3dCA9IFtDb25zb2xlXTo6QnVmZmVyV2lkdGggLSAkUHJvbXB0Lmxlbmd0aCAtIDENCiAgICAgICAgW0NvbnNvbGVdOjpDdXJzb3JsZWZ0ID0gJFByb21wdC5sZW5ndGgNCiAgICAgICAgaWYgKCR3dC0kVHJTdHJpbmcuTGVuZ3RoIC1sdCAwKSB7DQogICAgICAgICAgICAkdGI9IiINCiAgICAgICAgICAgICR0dD0iLi4uIiskVHJTdHJpbmcuc3Vic3RyaW5nKCRUclN0cmluZy5MZW5ndGgtJHd0KzMpDQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAkdGI9IiAiKigkd3QtJFRyU3RyaW5nLkxlbmd0aCkNCiAgICAgICAgICAgICR0dD0kVHJTdHJpbmcNCiAgICAgICAgfQ0KICAgICAgICAkZmNvbCA9IFtjb25zb2xlXTo6Rm9yZWdyb3VuZENvbG9yDQogICAgICAgIFdyaXRlLWhvc3QgLW5vbmV3bGluZSAtZiAkZkNvbCAkdHQkVGINCiAgICB9DQogICAgW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEN2aXMNCiAgICByZXR1cm4gJFRSU3RyaW5nDQp9CgpmdW5jdGlvbiBJbmplY3QtSlMgewpwYXJhbSgkSUUsIFtWYWxpZGF0ZU5vdE51bGxvckVtcHR5KCldW0FsaWFzKCJEYXRhIiwidXJsIiwidmFsdWUiKV1bU3RyaW5nXSRGdW5jdGlvbiwgW1N3aXRjaF0kR2V0U3JjKQ0KDQogICAgJEZ1bmN0aW9uID0gJEZ1bmN0aW9uLnRyaW0oKTtpZiAoISRGdW5jdGlvbikge1dyaXRlLVNjcmlwdCAiIUVtcHR5IEphdmFzY3JpcHQgaXMgcG9pbnRsZXNzIHRvIEluamVjdCEiO3JldHVybn0NCiAgICBpZiAoJEZ1bmN0aW9uIC1tYXRjaCAiXmh0dHBzP1w6Ly8oXHcrXC4pezAsMX0iKSB7JFNvdXJjZSA9ICJ1cmwifSBlbHNlIHskU291cmNlID0gIlRleHQifQ0KICAgIGlmICgkR2V0U3JjIC1hbmQgJFNvdXJjZSAtZXEgInVybCIpIHskRnVuY3Rpb24gPSBpcm0gJEZ1bmN0aW9uOyRTb3VyY2UgPSAiVGV4dCJ9DQogICAgJEhlYWQgPSBAKCRJRS5kb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgiaGVhZCIpKVswXQ0KICAgICRTY3JpcHQgPSAkSUUuZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnc2NyaXB0JykNCiAgICAkU2NyaXB0LnR5cGUgPSAndGV4dC9qYXZhc2NyaXB0Jw0KICAgICRTY3JpcHQuJChpZiAoJFNvdXJjZSAtZXEgInVybCIpIHsic3JjIn0gZWxzZSB7InRleHQifSkgPSAkRnVuY3Rpb24NCiAgICAkSGVhZC5hcHBlbmRDaGlsZCgkc2NyaXB0KSA+ICROdWxsDQp9CgpmdW5jdGlvbiBDbGVhci1MaW5lIHsKDQogICAgJE5tID0gJEhvc3QuVUkuUmF3VUkuV2luZG93U2l6ZS5XaWR0aC0xDQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lICIkKCgiYGIiKiROTSkrKCIgIiokTk0pKygiYGIiKiROTSkpIg0KfQoKZnVuY3Rpb24gTG9hZC1Gb3JtcyB7Cg0KICAgIGlmICgkRm9ybSkge3JldHVybn0NCiAgICBBZGQtVHlwZSAtQXNzZW1ibHlOYW1lIFN5c3RlbS5XaW5kb3dzLkZvcm1zDQogICAgJFNjcmlwdDpGb3JtID0gTmV3LU9iamVjdCBzeXN0ZW0uV2luZG93cy5Gb3Jtcy5Gb3JtDQogICAgJEZvcm0uVGV4dCA9ICJFbnRlciBJbnB1dCBmb3IgUXVlc3Rpb24iOyRGb3JtLlNpemUgPSAiNTg4LCAzNzIiDQogICAgJExhYmVsID0gTmV3LU9iamVjdCBTeXN0ZW0uV2luZG93cy5Gb3Jtcy5MYWJlbDskVGV4dCA9IE5ldy1PYmplY3QgU3lzdGVtLldpbmRvd3MuRm9ybXMuVGV4dEJveDskQlROID0gTmV3LU9iamVjdCBTeXN0ZW0uV2luZG93cy5Gb3Jtcy5CdXR0b247JEJUTi5OYW1lID0gImV4aXRzIjskQlROLlRleHQgPSAiU3VibWl0Ig0KICAgICRMYWJlbC5TaXplID0gIjU1MSwgMTI3IjskVGV4dC5TaXplID0gIjU0OCwgMTU5IjskTGFiZWwuRm9yZUNvbG9yID0gIlNub3ciOyRCVE4uYWRkX2NsaWNrKHskRm9ybS5DbG9zZSgpfSk7JEJUTi5Mb2NhdGlvbiA9ICIyNDEsIDMwNCI7JEJUTi5TaXplID0gIjc1LCAyMyINCiAgICAkTGFiZWwuTG9jYXRpb24gPSAiOSwgOSI7JFRleHQuTG9jYXRpb24gPSAiOSwgMTM5IjskTGFiZWwuYWRkX2NsaWNrKHtUby1DbGlwQm9hcmQgKCRGb3JtLkNvbnRyb2xzLkZpbmQoIlF1ZXN0aW9uIiwkdHJ1ZSlbMF0udGV4dCl9KTskVGV4dC5hZGRfY2xpY2soe1RvLUNsaXBCb2FyZCAoJEZvcm0uQ29udHJvbHMuRmluZCgiQW5zd2VyIiwkdHJ1ZSlbMF0udGV4dCl9KQ0KICAgICRGb3JtLk1pbmltaXplQm94ID0gJEZhbHNlOyRGb3JtLk1heGltaXplQm94ID0gJEZhbHNlOyRGb3JtLldpbmRvd1N0YXRlID0gIk5vcm1hbCINCiAgICAkRm9ybS5TaG93SW5UYXNrYmFyID0gJEZhbHNlOyRGb3JtLk9wYWNpdHkgPSAwLjg7JEZvcm0uU3RhcnRQb3NpdGlvbiA9ICJDZW50ZXJTY3JlZW4iOyRUZXh0Lk1hcmdpbj0iMywgMywgMywgMyINCiAgICAkRm9ybS5CYWNrQ29sb3IgPSAiT3JhbmdlIjskRm9ybS5JY29uID0gW3N5c3RlbS5kcmF3aW5nLmljb25dOjpFeHRyYWN0QXNzb2NpYXRlZEljb24oIiRQU0hPTUVccG93ZXJzaGVsbC5leGUiKQ0KICAgICRMYWJlbC5CYWNrQ29sb3IgPSAiTWFyb29uIjskVGV4dC5CYWNrQ29sb3IgPSAiUGFsZUdvbGRlbnJvZCINCiAgICAkTGFiZWwuRm9udCA9IE5ldy1PYmplY3QgU3lzdGVtLkRyYXdpbmcuRm9udCgiTWljcm9zb2Z0IFNhbnMgU2VyaWYiLDEyLjI1LFtTeXN0ZW0uRHJhd2luZy5Gb250U3R5bGVdOjpyZWd1bGFyKQ0KICAgICRUZXh0LkZvbnQgPSBOZXctT2JqZWN0IFN5c3RlbS5EcmF3aW5nLkZvbnQoIk1pY3Jvc29mdCBTYW5zIFNlcmlmIiwxMSxbU3lzdGVtLkRyYXdpbmcuRm9udFN0eWxlXTo6UmVndWxhcikNCiAgICAkTGFiZWwuVGV4dEFsaWduID0gIk1pZGRsZUNlbnRlciI7JEJUTi5tYXJnaW49IjMsIDMsIDMsIDMiOyRUZXh0Lk11bHRpTGluZT0kVHJ1ZQ0KICAgICRsYWJlbC5OYW1lID0gIlF1ZXN0aW9uIjskVGV4dC5OYW1lID0gIkFuc3dlciINCiAgICAkRm9ybS5Db250cm9scy5BZGQoJExhYmVsKTskRm9ybS5Db250cm9scy5BZGQoJFRleHQpOyRGb3JtLkNvbnRyb2xzLkFkZCgkQlROKQ0KICAgICRGb3JtLkFjY2VwdEJ1dHRvbiA9ICRCVE4NCn0KCmZ1bmN0aW9uIExvYWQtSW50ZXJuZXQgewpwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJElFLCBbSW50XSRJbnRlcnZhbCA9IDUwKQ0KDQogICAgV2hpbGUgKCRJRS5CdXN5KSB7DQogICAgICAgIFN0YXJ0LVNsZWVwIC1tICRJbnRlcnZhbA0KICAgIH0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHsKcGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJFRleHQpDQoNCiAgICAkYWNjICA9IEAoKCcrJywnMicpLCgnLScsJzEyJyksKCchJywnMTQnKSwoJyonLCczJykpDQogICAgJHRiICAgPSAnJzskZnVuYyAgID0gJGZhbHNlDQogICAgd2hpbGUgKCRUZXh0LmNoYXJzKDApIC1lcSAneCcpIHskZnVuYyA9ICR0cnVlOyAkVGV4dCA9ICRUZXh0LnN1YnN0cmluZygxKS50cmltKCl9DQogICAgd2hpbGUgKCRUZXh0LmNoYXJzKDApIC1lcSAnPicpIHskdGIgKz0gIiAgICAiOyAkVGV4dCA9ICRUZXh0LnN1YnN0cmluZygxKS50cmltKCl9DQogICAgJFNpZ24gPSAkVGV4dC5jaGFycygwKQ0KICAgICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKS5yZXBsYWNlKCcveFwnLCcnKS5yZXBsYWNlKCdbLl0nLCdbQ3VycmVudCBEaXJlY3RvcnldJykNCiAgICAkdmVycyA9ICRmYWxzZQ0KICAgIGZvcmVhY2ggKCRhciBpbiAkYWNjKSB7aWYgKCRhclswXSAtZXEgJHNpZ24pIHskdmVycyA9ICR0cnVlOyAkY2xyID0gJGFyWzFdOyAkU2lnbiA9ICJbJHtTaWdufV0gIn19DQogICAgaWYgKCEkdmVycykge1Rocm93ICJJbmNvcnJlY3QgU2lnbiBbJFNpZ25dIFBhc3NlZCEifQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZTokZnVuYyAtZiAkY2xyICR0YiRTaWduJFRleHQNCn0KCmZ1bmN0aW9uIFBzdy1Qcm9tcHQgewpwYXJhbShbQWxpYXMoIlByb21wdCIpXVtTdHJpbmddJFRleHQgPSAiRW50ZXIgUGFzc3dvcmQgOiAiLCBbU3dpdGNoXSRTaG93TWFza2VkUHN3LCBbY2hhcl0kTWFzaz0i4oCiIiwgW1N3aXRjaF0kRm9yY2VWYWxpZGF0aW9uLCBbc2NyaXB0YmxvY2tdJFZhbGlkYXRvcj17M30pDQoNCiAgICBXcml0ZS1ob3N0IC1ub25ld2xpbmUgJFRleHQNCiAgICAkUmVSZWdYID0gJ1teXHgwMS1ceDA4XHgxMC1ceDgwXSsnIydbXlx3XC5dJw0KICAgICRQc3cgPSAiIg0KICAgICRDdmlzID0gW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlDQogICAgW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEZhbHNlDQogICAgaWYgKCEkU2hvd01hc2tlZFBzdykgeyRWYWxpZGF0b3I9ezN9fQ0KICAgICRDb3VudCA9IDE7JFNsZWVwID0gMA0KICAgIFdoaWxlICgkVHJ1ZSkgew0KICAgICAgICBpZiAoJGNvdW50IC1ndCAyNTApIHskU2xlZXAgPSAyNTB9DQogICAgICAgICRUZXN0ID0gJiRWYWxpZGF0b3INCiAgICAgICAgaWYgKCRIb3N0LlVJLlJhd1VJLktleUF2YWlsYWJsZSkgeyRTdG9yZSA9ICRIb3N0LlVJLlJhd1VJLlJlYWRLZXkoIkluY2x1ZGVLZXlVcCxOb0VjaG8iKTskQ291bnQ9MDskU2xlZXA9MH0gZWxzZSB7JENvdW50Kys7U3RhcnQtU2xlZXAgLW0gJFNsZWVwO2NvbnRpbnVlfQ0KICAgICAgICBpZiAoS2V5UHJlc3NlZCAifn5CYWNrU3BhY2V+fiIgJFN0b3JlKSB7aWYgKCRzdG9yZS5Db250cm9sS2V5U3RhdGUgLW1hdGNoICJjdHJsIikgeyRQc3c9IiJ9IGVsc2UgeyRQc3cgPSA/OiAoJFBzdy5MZW5ndGggLWVxIDApeyIifXskUHN3LnN1YnN0cmluZygwLCRQc3cuTGVuZ3RoLTEpfX19DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5TcGFjZX5+IiAkU3RvcmUpIHskUHN3ICs9ICIgIn0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+fkVzY2FwZX5+IiAkU3RvcmUpIHskcHN3PSIiO2JyZWFrfQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RU5URVJ+fiIgJFN0b3JlKSB7V3JpdGUtSG9zdCAiIjtpZiAoW2ludF0kVGVzdCAtbmUgMykge2lmICgkVGVzdCAtb3IgISRGb3JjZVZhbGlkYXRpb24pIHticmVha30gZWxzZSB7V3JpdGUtSG9zdCAtZiBZZWxsb3cgLU5vTmV3TGluZSAiTXVzdFR5cGUgaW4gYSB2YWxpZCBQYXNzd29yZC4uLiI7c3RhcnQtc2xlZXAgLXMgMjtDbGVhci1MaW5lO1tDb25zb2xlXTo6Q3Vyc29yVG9wLT0xfX1lbHNle2JyZWFrfX0gZWxzZSANCiAgICAgICAgeyRQc3cgKz0gJFN0b3JlLkNoYXJhY3RlciAtcmVwbGFjZSAoJFJlUmVnWCwnJyl9DQogICAgICAgIGlmICgkU2hvd01hc2tlZFBzdykgew0KICAgICAgICAgICAgJHd0ID0gW0NvbnNvbGVdOjpCdWZmZXJXaWR0aCAtICR0ZXh0Lmxlbmd0aCAtIDENCiAgICAgICAgICAgICRUZXN0ID0gJiRWYWxpZGF0b3INCiAgICAgICAgICAgIFtDb25zb2xlXTo6Q3Vyc29ybGVmdCA9ICR0ZXh0Lmxlbmd0aA0KICAgICAgICAgICAgaWYgKCR3dC0kUHN3Lkxlbmd0aCAtbHQgMCkgeyR0Yj0iIjskdHQ9IiRNYXNrIiooJHd0LTMpKyIuLi4ifSBlbHNlIHskdGI9IiAiKigkd3QtJFBzdy5MZW5ndGgpOyR0dD0iJE1hc2siKiRQc3cuTGVuZ3RofQ0KICAgICAgICAgICAgJGZjb2wgPSBbY29uc29sZV06OkZvcmVncm91bmRDb2xvcg0KICAgICAgICAgICAgaWYgKFtpbnRdJFRlc3QgLW5lIDMpIHsNCiAgICAgICAgICAgICAgICAkZkNvbCA9ID86KCRUZXN0KSB7Mn0geyJyZWQifQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgV3JpdGUtaG9zdCAtbm9uZXdsaW5lIC1mICRmQ29sICR0dCR0Yg0KICAgICAgICB9DQogICAgfQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRDdmlzDQogICAgcmV0dXJuICRwc3cNCn0KCmZ1bmN0aW9uIElOLUNvZGUtRGVidWctQ29uc29sZSB7CnBhcmFtKFtBbGlhcygiQ21kIildW1N3aXRjaF0kRE9TKQ0KDQogICAgJEt0ID0gW0NvbnNvbGVdOjpDdXJzb3JUb3ANCiAgICB3aGlsZSAoJFRydWUpIHsNCiAgICAgICAgJENvZGUgPSBJbnB1dC1Qcm9tcHQgIkVudGVyIENvZGUgdG8gRXhlYyBbVHlwZSAnYnllJyB0byBxdWl0XSA6ICINCiAgICAgICAgaWYgKFtTdHJpbmddOjpJc051bGxPcldoaXRlU3BhY2UoJENvZGUpIC1vciAoJENvZGUgLWVxICJieWUiKSkge2JyZWFrfQ0KICAgICAgICBpZiAoJERvcykgeyRDb2RlID0gImNtZCAvYyAkQ29kZSJ9DQogICAgICAgIEludm9rZS1FeHByZXNzaW9uICRDb2RlDQogICAgICAgICRLdCA9IFtDb25zb2xlXTo6Q3Vyc29yVG9wDQogICAgfQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yTGVmdCA9IDANCiAgICBbQ29uc29sZV06OkN1cnNvclRvcCAgPSAkS3QrMQ0KfQo=")))
# ========================================END=OF=COMPILER===========================================================|
function Exeunt {$IE.Quit();exit}
write-AP "*Initializing Flipd"
[uri]$URL = "https://new.flipdclass.com"
$Script:IE  = New-Object -com InternetExplorer.Application
$IE.Visible=$ShowIE
write-AP "*Getting Credentials for Account"
$Script:User = Input-Prompt "Enter your Flipd Username : ";Clear-Line;[Console]::cursortop--;Clear-Line
if (!$Script:User) {Write-AP "!Username Prompt Cancelled";exeunt}
$Script:Psw = Psw-Prompt -Text "Enter flipd Password : " -ShowMaskedPsw -Mask 5 -ForceValidation -Validator {$Psw.Length -gt 6};Clear-Line;[Console]::cursortop--;Clear-Line
if (!$Script:Psw) {Write-AP "!Password Prompt Cancelled";exeunt}
$Script:Special=0
$InfoOrder = "Title","Duration","Watched","Progress","Due Date","Link","Description"
$IE.Navigate("${URL}courses");Load-Internet $IE
Load-JS-Lib $IE "JQuery" -GetSrc
function Login ([Switch]$Silent) {
    $WR = $False
    if (!$IE.document.getElementById("password")) {if (!$Silent) {Write-AP ">+Already Logged in."};$WR = $True}
    if (!$WR) {
        if (!$Silent) {Write-AP "*Logging in :)"}
        Execute-WebScript $IE "`$('#email').val('$User');`$('#password').val('$Psw');`$('form').submit();"
    }
    $Script:Req = iwr "${URL}login" -sessionVariable Ssh -body @{'email' = $User;'password' = $psw} -method Post -UserAgent "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 4.1; WOW64; Trident/6.0)"
    Load-Internet $IE;Start-Sleep -m 500
    $Script:Sesh = $ssh;rv ssh
    if (!$WR) {
        if ($IE.document.getElementById("password")) {Write-AP ">-Failed to Log In, Quitting.";exeunt}
        if (!$Silent) {Write-AP ">+Success [Logged in]"};rv psw -Scope script
    }
}
Login;Load-Internet $IE
Write-AP "*Extracting Page Information"
Inject-JS $IE "`$('.expand-desc').click()";Start-Sleep -m 50
while (!$IE.Document.documentElement.getElementsByClassName("title").item(0).ClassName) {
    # Special Case where the Page Just doesnt Fucking Load
    $Special++
    if ($Special -eq 1) {Write-AP ">*Trying to load missed elements."}
    if ($Special -gt 5) {Write-AP "-The Page just didn't load!";exeunt}
    if ($Special%2 -eq 1) {
        $IE.Navigate("${URL}logout");Load-Internet $IE;$IE.Navigate("${URL}courses");Login -Silent;Load-Internet $IE
    } else {$IE.refresh();Load-Internet $IE}
}
$IE.Document.documentElement.getElementsByClassName("right").item(0).ClassName = "Delete"
$Titles    = $IE.Document.documentElement.getElementsByClassName("title");if (!$Titles) {Write-AP "!Some Unknown Error happened dude! [No Problems/Videos Found]";exeunt}
$Durations = $IE.Document.documentElement.getElementsByClassName("left duration-icon")
$Congl     = $IE.Document.documentElement.getElementsByClassName("right")
$Dues      = $IE.Document.documentElement.getElementsByClassName("video-data")
$Links     = $IE.Document.documentElement.getElementsByClassName("thumb")
$Descs     = $IE.Document.documentElement.getElementsByClassName("description")
$PrbHash = @()
0..(@($Titles).length-1) | % {
    $Hash = @{"Title" = $Titles.item($_).innerText.trim()}
    $Hash.Duration = $Durations.item($_).innerText.trim()
    [bool]$Hash.Watched = $congl.item($_).innerHTML -match "has-tip watched"
    $Hash.Progress = $congl.item($_).innerText.replace(" ","")
    $Hash."Due Date" = $(try {$Dues.item($_).innerText.split("`n")[-1].split(",")[1].trim()} catch {"NONE"})
    $Hash.Link = $Links.item($_).href
    $Hash.Description = ($Descs.item($_).innertext -split ("https?:"))[0].trim()
    $PrbHash += ,[PSCustomObject]$Hash
}
Write-AP "*Information Found:"
Write-AP (">*Total Videos     : {0}" -f $PrbHash.count)
Write-AP (">*UnWatched Videos : {0}" -f @($PrbHash | ? {!$_.Watched}).count)
$Problems = $PrbHash | Select $InfoOrder | Out-GridView -PassThru -Title "Pick the Problems you want me to Solve!"
Write-AP (">*Videos to solve  : {0}" -f @($Problems).count)
#---------------------------------------------------SOLVING
function Load-Forms {
    if ($Form) {return}
    Add-Type -AssemblyName System.Windows.Forms
    $Script:Form = New-Object system.Windows.Forms.Form
    $Form.Text = "Enter Input for Question";$Form.Size = "588, 372"
    $Label = New-Object System.Windows.Forms.Label;$Text = New-Object System.Windows.Forms.TextBox;$BTN = New-Object System.Windows.Forms.Button;$BTN.Name = "exits";$BTN.Text = "Submit"
    $Label.Size = "551, 127";$Text.Size = "548, 159";$Label.ForeColor = "Snow";$BTN.add_click({$Form.Close()});$BTN.Location = "241, 304";$BTN.Size = "75, 23"
    $Label.Location = "9, 9";$Text.Location = "9, 139";$Label.add_click({To-ClipBoard ($Form.Controls.Find("Question",$true)[0].text)});$Text.add_click({To-ClipBoard ($Form.Controls.Find("Answer",$true)[0].text)})
    $Form.MinimizeBox = $False;$Form.MaximizeBox = $False;$Form.WindowState = "Normal"
    $Form.ShowInTaskbar = $False;$Form.Opacity = 0.8;$Form.StartPosition = "CenterScreen";$Text.Margin="3, 3, 3, 3"
    $Form.BackColor = "Orange";$Form.Icon = [system.drawing.icon]::ExtractAssociatedIcon("$PSHOME\powershell.exe")
    $Label.BackColor = "Maroon";$Text.BackColor = "PaleGoldenrod"
    $Label.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",12.25,[System.Drawing.FontStyle]::regular)
    $Text.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",11,[System.Drawing.FontStyle]::Regular)
    $Label.TextAlign = "MiddleCenter";$BTN.margin="3, 3, 3, 3";$Text.MultiLine=$True
    $label.Name = "Question";$Text.Name = "Answer"
    $Form.Controls.Add($Label);$Form.Controls.Add($Text);$Form.Controls.Add($BTN)
    $Form.AcceptButton = $BTN
}
function Ask-OE-QSTN ($Q) {
    Load-Forms
    $Form.Controls.Find("Answer",$true)[0].text = ""
    $Form.Controls.Find("Question",$true)[0].text = $Q
    $Form.ShowDialog() | Out-Null
    return $Form.Controls.Find("Answer",$true)[0].text
}
function Submit-Qstn ($IE) {
    $Submit = $IE.Document.documentElement.getElementsByClassName("submit ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only").item(0)
    $Submit.style = "display: inline-block;"
    $Submit.click()
}
function Normalize-QSTN ($TEXT) {
    return ($Text.replace("`n"," ").trim() -replace " +"," ")
}
function Get-Qstn ($IE) {
    Normalize-QSTN $IE.Document.documentElement.getElementsByClassName("question").item(0).innerText
}
function Next-Qstn ($IE) {
    Foreach ($e in $IE.Document.documentElement.getElementsByClassName("ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only")) {
        if ($e.innerText -eq "Next") {return $e}
    }
}
$NextAction = {
    $NextLink = Next-Qstn $IE
    if (!$NextLink) {continue A}
    $T = @(Get-Qstn $IE);$NextLink.click();$T += ,(Get-Qstn $IE)
    if ($T[0] -eq $T[1]) {continue A}
    $Script:SecCnt++;continue
}
foreach ($Prb in $Problems) {
    Write-AP ("*Opening WebPage" -f $Prb.Title)
    $IE.Navigate2($Prb.Link);Load-Internet $IE;if ($IE.LocationUrl -match "courses/(?<CourseID>\d+)/videos/(?<VideoID>\d+)") {}
    $AnsKey = irm -WebSession $sesh ("$URL/api/segments?video_id={0}&course_id={1}&section_id=" -f $Matches["VideoID","CourseID"])
    Write-AP (">+Grabbed Answer Key [{0}]" -f $Prb.Title)
    $Submissions = $IE.Document.documentElement.getElementsByClassName("action assess-segment")
    $AnsCnt = $IE.Document.documentElement.getElementsByClassName("answer-count")
    Write-AP (">*Need To solve {0} segments" -f @($Submissions).Count)
    $RatingCnt = 0
    :A foreach ($p in 0..(@($Submissions).Count-1)) {
        $q = $p+1
        $Alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        $Script:SecCnt = 0
        [int]$Qstns = $AnsCnt.item($p).innerText.split("/")[1].trim()
        if ($Qstns -eq 0) {Write-AP ">>*$q. Skipping, No Answers needed here";Continue A}
        $Submissions.item($p).click();Load-Internet $IE
        while ($True) {
            $PR = "$q($("$($Alpha[$SecCnt])".toLower()))"
            $QSTN = Get-Qstn $IE
            $AnsBlock = $AnsKey.segments.assessments | ? {(Normalize-QSTN $_.question) -eq $QSTN}
            if ($AnsBlock.count -gt 1 -and $AnsBlock[0].type -eq "rating") {$AnsBlock = $AnsBlock[$RatingCnt]}
            if ($AnsBlock.user_response -and ($AnsBlock)) {Write-AP ">>*$PR. Skipping, already Answered [UR]";if ($AnsBlock.type -eq "rating") {$RatingCnt++};$NextAction.Invoke()}
            if ($AnsBlock.type -eq "multiple") {
                Write-AP (">>+$PR. Solved with Answer {0} ""{1}""" -f $Alpha[$AnsBlock.correct_choice],$AnsBlock.choices[$AnsBlock.correct_choice].text)
                $IE.Document.getElementById("choice_$($AnsBlock.correct_choice)").click()
                Submit-Qstn $IE;$NextAction.Invoke()
            } elseif ($AnsBlock.type -eq "free") {
                Write-AP "x>>+$PR. Solving OE Question [Phase :"
                Write-Host -f Yellow -NoNewLine " OE-Prompt"
                $Essay = Ask-OE-QSTN $QSTN
                Write-Host -f Yellow -NoNewLine ", Inject"
                Execute-WebScript $IE "`$('.response').val('$Essay');"
                Write-Host -f 2 "]"
                Submit-Qstn $IE;$NextAction.Invoke()
            } elseif ($AnsBlock.type -eq "rating") {
                if ([bool]@($IE.Document.documentElement.getElementsByClassName("star selected"))) {Write-AP ">>*$PR. Skipping, already Answered [STARRED]";$NextAction.Invoke()}
                Execute-WebScript $IE "`$('.star').click();"
                Write-AP ">>+$PR. Gave 3 Star Rating!"
                Submit-Qstn $IE;$NextAction.Invoke()
                $RatingCnt++
            } elseif ($AnsBlock.type -eq "poll") {
                $IE.Document.getElementById("choice_1").click()
                Submit-Qstn $IE;$NextAction.Invoke()
            } elseif ($AnsBlock.type -eq "note") {
                Write-AP ">>+$PR. Note acknowleged sir!"
                Submit-Qstn $IE;$NextAction.Invoke()
            } else {
                Write-AP ">!SOME UNKNOWN TEST"
                $AnsBlock;In-Code-Debug-Console
                Submit-Qstn $IE;$NextAction.Invoke()
            }
            Write-AP "![!!] [!!!] CODE SHOULD NOT REACH HERE"
            break
        }
    }
}
$IE.Quit()
Write-AP "+Solved all Problems, You're Welcome!"


#------------------------------------------------------------------------------------------------------------
<#
$PrbHash = @()
    $HTMLDATA = "[^(\</)]+";$B4ENDTAG = "[^\>]+";$PAD="(`n| )+";$JUNK = "[^(\#\#)]+";$TEXT = "[/\d\w]+"
    $pattern = "\<h4($B4ENDTAG)?>$PAD(?<Title>$HTMLDATA)$PAD\</h4>$JUNK\<a (class=.thumb. )?href=.(?<Link>$TEXT). ?(class=.thumb.)?>$JUNK\<span class=""left duration-icon.>$PAD(?<Duration>$HTMLDATA)$PAD\</span>$JUNK"
    $pattern+= "\<span($B4ENDTAG)?(?<watched>has-tip watched)($B4ENDTAG)?>$JUNK\</span>$PAD(?<attempted>\d+)$PAD/$PAD(?<questions>\d+)$PAD\</span>${JUNK}(Due on \w+, (?<DueDate>($HTMLDATA|  ))|No Due Date)$HTMLDATA\</p>$JUNK"
    $pattern+= "\<p class=.description.>$PAD(?<Description>[^`n]+)$B4ENDTAG$PAD\</p>"
0..(@($Problems).length-1) | % {
    $tmp = $IE.Document.documentElement.getElementsByClassName("video").item($_).innerHTML
    if ($TMP -match $Pattern) {
        $Hash = @{};
        $InfoOrder | % {iex "`$Hash.`$_ = $(if ($_ -eq 'watched') {'[bool]'})`$Matches.`$_"}
        $PrbHash += ,[PSCustomObject]$Hash
    }
}
#>
