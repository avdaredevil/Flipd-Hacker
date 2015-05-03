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
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gSW5wdXQtUHJvbXB0IHtwYXJhbShbVmFsaWRhdGVOb3ROdWxsb3JFbXB0eSgpXVtTdHJpbmddJFByb21wdCA9ICJFbnRlciBUZXh0IDogIikNCg0KICAgIFdyaXRlLWhvc3QgLW5vbmV3bGluZSAkUHJvbXB0DQogICAgJFJlUmVnWCA9ICdbXlx4MDEtXHgwOFx4MTAtXHg4MF0rJyMnW15cd1wuXScgW9CQLdGP0IHRkV0NCiAgICAkVHJTdHJpbmcgPSAiIg0KICAgICRDdmlzID0gW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlDQogICAgW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEZhbHNlDQogICAgJENvdW50ID0gMTskU2xlZXAgPSAwDQogICAgV2hpbGUgKCRUcnVlKSB7DQogICAgICAgIGlmICgkY291bnQgLWd0IDUwMCkgeyRTbGVlcCA9IDEwMH0NCiAgICAgICAgaWYgKCRIb3N0LlVJLlJhd1VJLktleUF2YWlsYWJsZSkgeyRTdG9yZSA9ICRIb3N0LlVJLlJhd1VJLlJlYWRLZXkoIkluY2x1ZGVLZXlVcCxOb0VjaG8iKTskQ291bnQ9MDskU2xlZXA9MH0gZWxzZSB7JENvdW50Kys7U3RhcnQtU2xlZXAgLW0gJFNsZWVwO2NvbnRpbnVlfQ0KICAgICAgICBpZiAoS2V5UHJlc3NlZCAifn5CYWNrU3BhY2V+fiIgJFN0b3JlKSB7aWYgKCRzdG9yZS5Db250cm9sS2V5U3RhdGUgLW1hdGNoICJjdHJsIikgeyRUclN0cmluZz0iIn0gZWxzZSB7JFRyU3RyaW5nID0gPzogKCRUclN0cmluZy5MZW5ndGggLWVxIDApeyIifXskVHJTdHJpbmcuc3Vic3RyaW5nKDAsJFRyU3RyaW5nLkxlbmd0aC0xKX19fQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+U3BhY2V+fiIgJFN0b3JlKSB7JFRyU3RyaW5nICs9ICIgIn0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+fkVzY2FwZX5+IiAkU3RvcmUpIHskVHJTdHJpbmc9IiI7YnJlYWt9DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5FTlRFUn5+IiAkU3RvcmUpIHtXcml0ZS1Ib3N0ICIiO2JyZWFrfSBlbHNlIA0KICAgICAgICB7JFRyU3RyaW5nICs9ICRTdG9yZS5DaGFyYWN0ZXIgLXJlcGxhY2UgKCRSZVJlZ1gsJycpfQ0KICAgICAgICAkd3QgPSBbQ29uc29sZV06OkJ1ZmZlcldpZHRoIC0gJFByb21wdC5sZW5ndGggLSAxDQogICAgICAgIFtDb25zb2xlXTo6Q3Vyc29ybGVmdCA9ICRQcm9tcHQubGVuZ3RoDQogICAgICAgIGlmICgkd3QtJFRyU3RyaW5nLkxlbmd0aCAtbHQgMCkgew0KICAgICAgICAgICAgJHRiPSIiDQogICAgICAgICAgICAkdHQ9Ii4uLiIrJFRyU3RyaW5nLnN1YnN0cmluZygkVHJTdHJpbmcuTGVuZ3RoLSR3dCszKQ0KICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgJHRiPSIgIiooJHd0LSRUclN0cmluZy5MZW5ndGgpDQogICAgICAgICAgICAkdHQ9JFRyU3RyaW5nDQogICAgICAgIH0NCiAgICAgICAgJGZjb2wgPSBbY29uc29sZV06OkZvcmVncm91bmRDb2xvcg0KICAgICAgICBXcml0ZS1ob3N0IC1ub25ld2xpbmUgLWYgJGZDb2wgJHR0JFRiDQogICAgfQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRDdmlzDQogICAgcmV0dXJuICRUUlN0cmluZw0KfQoKZnVuY3Rpb24gUHJvY2Vzcy1UcmFuc3BhcmVuY3kge3BhcmFtKFtBbGlhcygiVHJhbnNwYXJlbmN5IiwiSW52aXNpYmlsaXR5IiwiaSIsInQiKV1bVmFsaWRhdGVSYW5nZSgwLDEwMCldW2ludF0kVHJhbnM9MCwgW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSRQcm9jZXNzKQ0KDQogICAgaWYgKCRQcm9jZXNzIC1tYXRjaCAiXC5leGUkIikgeyRQcm9jZXNzID0gJFByb2Nlc3MucmVwbGFjZSgiLmV4ZSIsIiIpfQ0KICAgIFRyeSB7DQogICAgICAgIGlmICgkUHJvY2Vzcy5uYW1lKSB7JFByb2MgPSAkUHJvY2Vzcy5uYW1lfSBlbHNlIHskUHJvYyA9IChHZXQtUHJvY2VzcyAkUHJvY2VzcyAtRXJyb3JBY3Rpb24gU3RvcClbMF0ubmFtZX0NCiAgICB9IGNhdGNoIHsNCiAgICAgICAgaWYgKFtJbnRdOjpUcnlQYXJzZSgkUHJvY2VzcywgW3JlZl0zKSkgeyRQcm9jID0gKChHZXQtUHJvY2VzcyB8ID8geyRfLklEIC1lcSAkUHJvY2Vzc30pWzBdKS5uYW1lfQ0KICAgIH0NCiAgICBpZiAoJFByb2MgLW5vdE1hdGNoICJcLmV4ZSQiKSB7JFByb2MgPSAiJFByb2MuZXhlIn0NCiAgICBuaXJjbWQgd2luIHRyYW5zIHByb2Nlc3MgIiRQcm9jIiAoKDEwMC0kVHJhbnMpKjI1NS8xMDApIHwgT3V0LU51bGwNCn0KCmZ1bmN0aW9uIFBzdy1Qcm9tcHQge3BhcmFtKFtBbGlhcygiUHJvbXB0IildW1N0cmluZ10kVGV4dCA9ICJFbnRlciBQYXNzd29yZCA6ICIsIFtTd2l0Y2hdJFNob3dNYXNrZWRQc3csIFtjaGFyXSRNYXNrPSLigKIiLCBbU3dpdGNoXSRGb3JjZVZhbGlkYXRpb24sIFtzY3JpcHRibG9ja10kVmFsaWRhdG9yPXszfSkNCg0KICAgIFdyaXRlLWhvc3QgLW5vbmV3bGluZSAkVGV4dA0KICAgICRSZVJlZ1ggPSAnW15ceDAxLVx4MDhceDEwLVx4ODBdKycjJ1teXHdcLl0nDQogICAgJFBzdyA9ICIiDQogICAgJEN2aXMgPSBbQ29uc29sZV06OkN1cnNvclZpc2libGUNCiAgICBbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkRmFsc2UNCiAgICBpZiAoISRTaG93TWFza2VkUHN3KSB7JFZhbGlkYXRvcj17M319DQogICAgJENvdW50ID0gMTskU2xlZXAgPSAwDQogICAgV2hpbGUgKCRUcnVlKSB7DQogICAgICAgIGlmICgkY291bnQgLWd0IDI1MCkgeyRTbGVlcCA9IDI1MH0NCiAgICAgICAgJFRlc3QgPSAmJFZhbGlkYXRvcg0KICAgICAgICBpZiAoJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlKSB7JFN0b3JlID0gJEhvc3QuVUkuUmF3VUkuUmVhZEtleSgiSW5jbHVkZUtleVVwLE5vRWNobyIpOyRDb3VudD0wOyRTbGVlcD0wfSBlbHNlIHskQ291bnQrKztTdGFydC1TbGVlcCAtbSAkU2xlZXA7Y29udGludWV9DQogICAgICAgIGlmIChLZXlQcmVzc2VkICJ+fkJhY2tTcGFjZX5+IiAkU3RvcmUpIHtpZiAoJHN0b3JlLkNvbnRyb2xLZXlTdGF0ZSAtbWF0Y2ggImN0cmwiKSB7JFBzdz0iIn0gZWxzZSB7JFBzdyA9ID86ICgkUHN3Lkxlbmd0aCAtZXEgMCl7IiJ9eyRQc3cuc3Vic3RyaW5nKDAsJFBzdy5MZW5ndGgtMSl9fX0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+flNwYWNlfn4iICRTdG9yZSkgeyRQc3cgKz0gIiAifQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RXNjYXBlfn4iICRTdG9yZSkgeyRwc3c9IiI7YnJlYWt9DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5FTlRFUn5+IiAkU3RvcmUpIHtXcml0ZS1Ib3N0ICIiO2lmIChbaW50XSRUZXN0IC1uZSAzKSB7aWYgKCRUZXN0IC1vciAhJEZvcmNlVmFsaWRhdGlvbikge2JyZWFrfSBlbHNlIHtXcml0ZS1Ib3N0IC1mIFllbGxvdyAtTm9OZXdMaW5lICJNdXN0VHlwZSBpbiBhIHZhbGlkIFBhc3N3b3JkLi4uIjtzdGFydC1zbGVlcCAtcyAyO0NsZWFyLUxpbmU7W0NvbnNvbGVdOjpDdXJzb3JUb3AtPTF9fWVsc2V7YnJlYWt9fSBlbHNlIA0KICAgICAgICB7JFBzdyArPSAkU3RvcmUuQ2hhcmFjdGVyIC1yZXBsYWNlICgkUmVSZWdYLCcnKX0NCiAgICAgICAgaWYgKCRTaG93TWFza2VkUHN3KSB7DQogICAgICAgICAgICAkd3QgPSBbQ29uc29sZV06OkJ1ZmZlcldpZHRoIC0gJHRleHQubGVuZ3RoIC0gMQ0KICAgICAgICAgICAgJFRlc3QgPSAmJFZhbGlkYXRvcg0KICAgICAgICAgICAgW0NvbnNvbGVdOjpDdXJzb3JsZWZ0ID0gJHRleHQubGVuZ3RoDQogICAgICAgICAgICBpZiAoJHd0LSRQc3cuTGVuZ3RoIC1sdCAwKSB7JHRiPSIiOyR0dD0iJE1hc2siKigkd3QtMykrIi4uLiJ9IGVsc2UgeyR0Yj0iICIqKCR3dC0kUHN3Lkxlbmd0aCk7JHR0PSIkTWFzayIqJFBzdy5MZW5ndGh9DQogICAgICAgICAgICAkZmNvbCA9IFtjb25zb2xlXTo6Rm9yZWdyb3VuZENvbG9yDQogICAgICAgICAgICBpZiAoW2ludF0kVGVzdCAtbmUgMykgew0KICAgICAgICAgICAgICAgICRmQ29sID0gPzooJFRlc3QpIHsyfSB7InJlZCJ9DQogICAgICAgICAgICB9DQogICAgICAgICAgICBXcml0ZS1ob3N0IC1ub25ld2xpbmUgLWYgJGZDb2wgJHR0JHRiDQogICAgICAgIH0NCiAgICB9DQogICAgW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEN2aXMNCiAgICByZXR1cm4gJHBzdw0KfQoKZnVuY3Rpb24gTG9hZC1KUy1MaWIge3BhcmFtKCRJRSwgW0FsaWFzKCJMaWIiLCJMaWJzIiwiTGlicmFyeSIpXSRMaWJyYXJpZXMgPSAiSlF1ZXJ5IiwgW1N3aXRjaF0kR2V0U3JjKQ0KDQogICAgJExpYnMgPSBAeyAjVG9vbGtpdHMgYW5kIHRoZWlyIGRvd25sb2Fkcw0KICAgICAgICAiSlF1ZXJ5IiA9ICJodHRwOi8vYWpheC5nb29nbGVhcGlzLmNvbS9hamF4L2xpYnMvanF1ZXJ5LzEuMTEuMC9qcXVlcnkubWluLmpzIg0KICAgIH0NCiAgICBmb3JlYWNoICgkTGliIGluICRMaWJyYXJpZXMpIHsNCiAgICAgICAgJERCID0gJExpYnMuJExpYg0KICAgICAgICBpZiAoISREQikge2NvbnRpbnVlfQ0KICAgICAgICBJbmplY3QtSlMgJElFICREQiAtR2V0U3JjOiRHZXRTcmMNCiAgICB9DQp9CgpmdW5jdGlvbiBDbGVhci1MaW5lIHsNCiAgICAkTm0gPSAkSG9zdC5VSS5SYXdVSS5XaW5kb3dTaXplLldpZHRoLTENCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmUgIiQoKCJgYiIqJE5NKSsoIiAiKiROTSkrKCJgYiIqJE5NKSkiDQp9CgpmdW5jdGlvbiBXcml0ZS1BUCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JykNCg0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1tYXRjaCAiXltcK1wtXCFcKnhcPiBdKyQiKSB7cmV0dXJufQ0KICAgICRhY2MgID0gQCgoJysnLCcyJyksKCctJywnMTInKSwoJyEnLCcxNCcpLCgnKicsJzMnKSkNCiAgICAkdGIgICA9ICcnOyRmdW5jICAgPSAkZmFsc2UNCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICd4JykgeyRmdW5jID0gJHRydWU7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICc+JykgeyR0YiArPSAiICAgICI7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICAkU2lnbiA9ICRUZXh0LmNoYXJzKDApDQogICAgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpLnJlcGxhY2UoJy94XCcsJycpLnJlcGxhY2UoJ1suXScsJ1tDdXJyZW50IERpcmVjdG9yeV0nKQ0KICAgICR2ZXJzID0gJGZhbHNlDQogICAgZm9yZWFjaCAoJGFyIGluICRhY2MpIHtpZiAoJGFyWzBdIC1lcSAkc2lnbikgeyR2ZXJzID0gJHRydWU7ICRjbHIgPSAkYXJbMV07ICRTaWduID0gIlske1NpZ259XSAifX0NCiAgICBpZiAoISR2ZXJzKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9IEFsaWduLVRleHQgLUFsaWduICRBbGlnbiAkdGIkKGlmICghJE5vU2lnbikgeyRTaWdufSkkVGV4dA0KICAgIGlmICgkUGxhaW5UZXh0KSB7cmV0dXJuICREYXRhfQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZTokZnVuYyAtZiAkY2xyICREYXRhDQp9CgpmdW5jdGlvbiBMb2FkLUZvcm1zIHsNCiAgICBpZiAoJEZvcm0pIHtyZXR1cm59DQogICAgQWRkLVR5cGUgLUFzc2VtYmx5TmFtZSBTeXN0ZW0uV2luZG93cy5Gb3Jtcw0KICAgICRTY3JpcHQ6Rm9ybSA9IE5ldy1PYmplY3Qgc3lzdGVtLldpbmRvd3MuRm9ybXMuRm9ybQ0KICAgICRGb3JtLlRleHQgPSAiRW50ZXIgSW5wdXQgZm9yIFF1ZXN0aW9uIjskRm9ybS5TaXplID0gIjU4OCwgMzcyIg0KICAgICRMYWJlbCA9IE5ldy1PYmplY3QgU3lzdGVtLldpbmRvd3MuRm9ybXMuTGFiZWw7JFRleHQgPSBOZXctT2JqZWN0IFN5c3RlbS5XaW5kb3dzLkZvcm1zLlRleHRCb3g7JEJUTiA9IE5ldy1PYmplY3QgU3lzdGVtLldpbmRvd3MuRm9ybXMuQnV0dG9uOyRCVE4uTmFtZSA9ICJleGl0cyI7JEJUTi5UZXh0ID0gIlN1Ym1pdCINCiAgICAkTGFiZWwuU2l6ZSA9ICI1NTEsIDEyNyI7JFRleHQuU2l6ZSA9ICI1NDgsIDE1OSI7JExhYmVsLkZvcmVDb2xvciA9ICJTbm93IjskQlROLmFkZF9jbGljayh7JEZvcm0uQ2xvc2UoKX0pOyRCVE4uTG9jYXRpb24gPSAiMjQxLCAzMDQiOyRCVE4uU2l6ZSA9ICI3NSwgMjMiDQogICAgJExhYmVsLkxvY2F0aW9uID0gIjksIDkiOyRUZXh0LkxvY2F0aW9uID0gIjksIDEzOSI7JExhYmVsLmFkZF9jbGljayh7VG8tQ2xpcEJvYXJkICgkRm9ybS5Db250cm9scy5GaW5kKCJRdWVzdGlvbiIsJHRydWUpWzBdLnRleHQpfSk7JFRleHQuYWRkX2NsaWNrKHtUby1DbGlwQm9hcmQgKCRGb3JtLkNvbnRyb2xzLkZpbmQoIkFuc3dlciIsJHRydWUpWzBdLnRleHQpfSkNCiAgICAkRm9ybS5NaW5pbWl6ZUJveCA9ICRGYWxzZTskRm9ybS5NYXhpbWl6ZUJveCA9ICRGYWxzZTskRm9ybS5XaW5kb3dTdGF0ZSA9ICJOb3JtYWwiDQogICAgJEZvcm0uU2hvd0luVGFza2JhciA9ICRGYWxzZTskRm9ybS5PcGFjaXR5ID0gMC44OyRGb3JtLlN0YXJ0UG9zaXRpb24gPSAiQ2VudGVyU2NyZWVuIjskVGV4dC5NYXJnaW49IjMsIDMsIDMsIDMiDQogICAgJEZvcm0uQmFja0NvbG9yID0gIk9yYW5nZSI7JEZvcm0uSWNvbiA9IFtzeXN0ZW0uZHJhd2luZy5pY29uXTo6RXh0cmFjdEFzc29jaWF0ZWRJY29uKCIkUFNIT01FXHBvd2Vyc2hlbGwuZXhlIikNCiAgICAkTGFiZWwuQmFja0NvbG9yID0gIk1hcm9vbiI7JFRleHQuQmFja0NvbG9yID0gIlBhbGVHb2xkZW5yb2QiDQogICAgJExhYmVsLkZvbnQgPSBOZXctT2JqZWN0IFN5c3RlbS5EcmF3aW5nLkZvbnQoIk1pY3Jvc29mdCBTYW5zIFNlcmlmIiwxMi4yNSxbU3lzdGVtLkRyYXdpbmcuRm9udFN0eWxlXTo6cmVndWxhcikNCiAgICAkVGV4dC5Gb250ID0gTmV3LU9iamVjdCBTeXN0ZW0uRHJhd2luZy5Gb250KCJNaWNyb3NvZnQgU2FucyBTZXJpZiIsMTEsW1N5c3RlbS5EcmF3aW5nLkZvbnRTdHlsZV06OlJlZ3VsYXIpDQogICAgJExhYmVsLlRleHRBbGlnbiA9ICJNaWRkbGVDZW50ZXIiOyRCVE4ubWFyZ2luPSIzLCAzLCAzLCAzIjskVGV4dC5NdWx0aUxpbmU9JFRydWUNCiAgICAkbGFiZWwuTmFtZSA9ICJRdWVzdGlvbiI7JFRleHQuTmFtZSA9ICJBbnN3ZXIiDQogICAgJEZvcm0uQ29udHJvbHMuQWRkKCRMYWJlbCk7JEZvcm0uQ29udHJvbHMuQWRkKCRUZXh0KTskRm9ybS5Db250cm9scy5BZGQoJEJUTikNCiAgICAkRm9ybS5BY2NlcHRCdXR0b24gPSAkQlRODQp9CgpmdW5jdGlvbiBBc2stT0UtUVNUTiB7cGFyYW0oJFEpDQoNCiAgICBMb2FkLUZvcm1zDQogICAgJEZvcm0uQ29udHJvbHMuRmluZCgiQW5zd2VyIiwkdHJ1ZSlbMF0udGV4dCA9ICIiDQogICAgJEZvcm0uQ29udHJvbHMuRmluZCgiUXVlc3Rpb24iLCR0cnVlKVswXS50ZXh0ID0gJFENCiAgICAkRm9ybS5TaG93RGlhbG9nKCkgfCBPdXQtTnVsbA0KICAgIHJldHVybiAkRm9ybS5Db250cm9scy5GaW5kKCJBbnN3ZXIiLCR0cnVlKVswXS50ZXh0DQp9CgpmdW5jdGlvbiBJbnZva2UtVGVybmFyeSB7cGFyYW0oW2Jvb2xdJGRlY2lkZXIsIFtzY3JpcHRibG9ja10kaWZ0cnVlLCBbc2NyaXB0YmxvY2tdJGlmZmFsc2UpDQoNCiAgICBpZiAoJGRlY2lkZXIpIHsgJiRpZnRydWV9IGVsc2UgeyAmJGlmZmFsc2UgfQ0KfQoKZnVuY3Rpb24gSU4tQ29kZS1EZWJ1Zy1Db25zb2xlIHtXcml0ZS1Ib3N0IC1mIHllbGxvdyAnW0FQLUNPTVBJTEVSXSBNb2R1bGUgW0lOLUNvZGUtRGVidWctQ29uc29sZV0gZGlzYWJsZWQgZm9yIHRoaXMgcHJvZ3JhbSd9CgpmdW5jdGlvbiBJbmplY3QtSlMge3BhcmFtKCRJRSwgW1ZhbGlkYXRlTm90TnVsbG9yRW1wdHkoKV1bQWxpYXMoIkRhdGEiLCJ1cmwiLCJ2YWx1ZSIpXVtTdHJpbmddJEZ1bmN0aW9uLCBbU3dpdGNoXSRHZXRTcmMpDQoNCiAgICAkRnVuY3Rpb24gPSAkRnVuY3Rpb24udHJpbSgpO2lmICghJEZ1bmN0aW9uKSB7V3JpdGUtU2NyaXB0ICIhRW1wdHkgSmF2YXNjcmlwdCBpcyBwb2ludGxlc3MgdG8gSW5qZWN0ISI7cmV0dXJufQ0KICAgIGlmICgkRnVuY3Rpb24gLW1hdGNoICJeaHR0cHM/XDovLyhcdytcLil7MCwxfSIpIHskU291cmNlID0gInVybCJ9IGVsc2UgeyRTb3VyY2UgPSAiVGV4dCJ9DQogICAgaWYgKCRHZXRTcmMgLWFuZCAkU291cmNlIC1lcSAidXJsIikgeyRGdW5jdGlvbiA9IGlybSAkRnVuY3Rpb247JFNvdXJjZSA9ICJUZXh0In0NCiAgICAkSGVhZCA9IEAoJElFLmRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCJoZWFkIikpWzBdDQogICAgJFNjcmlwdCA9ICRJRS5kb2N1bWVudC5jcmVhdGVFbGVtZW50KCdzY3JpcHQnKQ0KICAgICRTY3JpcHQudHlwZSA9ICd0ZXh0L2phdmFzY3JpcHQnDQogICAgJFNjcmlwdC4kKGlmICgkU291cmNlIC1lcSAidXJsIikgeyJzcmMifSBlbHNlIHsidGV4dCJ9KSA9ICRGdW5jdGlvbg0KICAgICRIZWFkLmFwcGVuZENoaWxkKCRzY3JpcHQpID4gJE51bGwNCn0KCmZ1bmN0aW9uIExvYWQtSW50ZXJuZXQge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kSUUsIFtJbnRdJEludGVydmFsID0gNTApDQoNCiAgICBXaGlsZSAoJElFLkJ1c3kpIHsNCiAgICAgICAgU3RhcnQtU2xlZXAgLW0gJEludGVydmFsDQogICAgfQ0KfQoKZnVuY3Rpb24gRXhlY3V0ZS1XZWJTY3JpcHQge3BhcmFtKCRJRSwgW1N0cmluZ10kU2NyaXB0LCBbVmFsaWRhdGVTZXQoIkphdmFTY3JpcHQiKV0kTGFuZ3VhZ2U9IkphdmFTY3JpcHQiKQ0KDQogICAgJElFLmRvY3VtZW50LnBhcmVudFdpbmRvdy5leGVjU2NyaXB0KCIkU2NyaXB0IiwkTGFuZ3VhZ2UudG9Mb3dlcigpKQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzdGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3N0aHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKU2V0LUFsaWFzIGludiBQcm9jZXNzLVRyYW5zcGFyZW5jeQpTZXQtQWxpYXMgPzogSW52b2tlLVRlcm5hcnk=")))
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
        Start-Sleep -m 500
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
