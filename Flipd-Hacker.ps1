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
#    The Following Code was added by AP-Compiler Version [1.2] To Make this program independent of AP-Core Engine
#    GitHub: https://github.com/avdaredevil/AP-Compiler
# ==================================================================================================================|
$Script:PSHell=$(if($PSHell){$PSHell}elseif($PSScriptRoot){$PSScriptRoot}else{"."});
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gSW5wdXQtUHJvbXB0IHtwYXJhbShbVmFsaWRhdGVOb3ROdWxsb3JFbXB0eSgpXVtTdHJpbmddJFByb21wdCA9ICJFbnRlciBUZXh0IDogIikNCg0KICAgIFdyaXRlLWhvc3QgLW5vbmV3bGluZSAkUHJvbXB0DQogICAgJFJlUmVnWCA9ICdbXlx4MDEtXHgwOFx4MTAtXHg4MF0rJyMnW15cd1wuXScgW9CQLdGP0IHRkV0NCiAgICAkVHJTdHJpbmcgPSAiIg0KICAgICRpUG9zeCA9IFtDb25zb2xlXTo6Q3Vyc29yTGVmdA0KICAgICRpUG9zeSA9IFtDb25zb2xlXTo6Q3Vyc29yVG9wDQogICAgJEN2aXMgPSBbQ29uc29sZV06OkN1cnNvclZpc2libGUNCiAgICBbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkRmFsc2UNCiAgICAkQ291bnQgPSAxOyRTbGVlcCA9IDANCiAgICBXaGlsZSAoJFRydWUpIHsNCiAgICAgICAgaWYgKCRjb3VudCAtZ3QgNTAwKSB7JFNsZWVwID0gMTAwfQ0KICAgICAgICBpZiAoJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlKSB7JFN0b3JlID0gJEhvc3QuVUkuUmF3VUkuUmVhZEtleSgiSW5jbHVkZUtleURvd24sTm9FY2hvIik7JENvdW50PTA7JFNsZWVwPTB9IGVsc2UgeyRDb3VudCsrO1N0YXJ0LVNsZWVwIC1tICRTbGVlcDtjb250aW51ZX0NCiAgICAgICAgaWYgKEtleVByZXNzZWQgIn5+QmFja1NwYWNlfn4iICRTdG9yZSkge2lmICgkc3RvcmUuQ29udHJvbEtleVN0YXRlIC1tYXRjaCAiY3RybCIpIHskVHJTdHJpbmc9IiJ9IGVsc2UgeyRUclN0cmluZyA9ID86ICgkVHJTdHJpbmcuTGVuZ3RoIC1lcSAwKXsiIn17JFRyU3RyaW5nLnN1YnN0cmluZygwLCRUclN0cmluZy5MZW5ndGgtMSl9fX0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+flNwYWNlfn4iICRTdG9yZSkgeyRUclN0cmluZyArPSAiICJ9DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5Fc2NhcGV+fiIgJFN0b3JlKSB7JFRyU3RyaW5nPSIiO2JyZWFrfQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RU5URVJ+fiIgJFN0b3JlKSB7V3JpdGUtSG9zdCAiIjticmVha30gZWxzZSANCiAgICAgICAgeyRUclN0cmluZyArPSAkU3RvcmUuQ2hhcmFjdGVyIC1yZXBsYWNlICgkUmVSZWdYLCcnKX0NCiAgICAgICAgJHd0ID0gW0NvbnNvbGVdOjpCdWZmZXJXaWR0aCAtICRQcm9tcHQubGVuZ3RoIC0gMQ0KICAgICAgICBbQ29uc29sZV06OkN1cnNvcmxlZnQgPSAkaVBvc3gNCiAgICAgICAgW0NvbnNvbGVdOjpDdXJzb3JUb3AgPSAkaVBvc3kNCiAgICAgICAgaWYgKCR3dC0kVHJTdHJpbmcuTGVuZ3RoIC1sdCAwKSB7DQogICAgICAgICAgICAkdGI9IiINCiAgICAgICAgICAgICR0dD0iLi4uIiskVHJTdHJpbmcuc3Vic3RyaW5nKCRUclN0cmluZy5MZW5ndGgtJHd0KzMpDQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAkdGI9IiAiKigkd3QtJFRyU3RyaW5nLkxlbmd0aCkNCiAgICAgICAgICAgICR0dD0kVHJTdHJpbmcNCiAgICAgICAgfQ0KICAgICAgICAkZmNvbCA9IFtjb25zb2xlXTo6Rm9yZWdyb3VuZENvbG9yDQogICAgICAgIFdyaXRlLWhvc3QgLW5vbmV3bGluZSAtZiAkZkNvbCAkdHQkVGINCiAgICB9DQogICAgW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEN2aXMNCiAgICByZXR1cm4gJFRSU3RyaW5nDQp9CgpmdW5jdGlvbiBQcm9jZXNzLVRyYW5zcGFyZW5jeSB7cGFyYW0oW0FsaWFzKCJUcmFuc3BhcmVuY3kiLCJJbnZpc2liaWxpdHkiLCJpIiwidCIpXVtWYWxpZGF0ZVJhbmdlKDAsMTAwKV1baW50XSRUcmFucz0wLCBbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFByb2Nlc3MpDQoNCiAgICBpZiAoJFByb2Nlc3MgLW1hdGNoICJcLmV4ZSQiKSB7JFByb2Nlc3MgPSAkUHJvY2Vzcy5yZXBsYWNlKCIuZXhlIiwiIil9DQogICAgVHJ5IHsNCiAgICAgICAgaWYgKCRQcm9jZXNzLm5hbWUpIHskUHJvYyA9ICRQcm9jZXNzLm5hbWV9IGVsc2UgeyRQcm9jID0gKEdldC1Qcm9jZXNzICRQcm9jZXNzIC1FcnJvckFjdGlvbiBTdG9wKVswXS5uYW1lfQ0KICAgIH0gY2F0Y2ggew0KICAgICAgICBpZiAoW0ludF06OlRyeVBhcnNlKCRQcm9jZXNzLCBbcmVmXTMpKSB7JFByb2MgPSAoKEdldC1Qcm9jZXNzIHwgPyB7JF8uSUQgLWVxICRQcm9jZXNzfSlbMF0pLm5hbWV9DQogICAgfQ0KICAgIGlmICgkUHJvYyAtbm90TWF0Y2ggIlwuZXhlJCIpIHskUHJvYyA9ICIkUHJvYy5leGUifQ0KICAgIG5pcmNtZCB3aW4gdHJhbnMgcHJvY2VzcyAiJFByb2MiICgoMTAwLSRUcmFucykqMjU1LzEwMCkgfCBPdXQtTnVsbA0KfQoKZnVuY3Rpb24gUHN3LVByb21wdCB7cGFyYW0oW0FsaWFzKCJQcm9tcHQiKV1bU3RyaW5nXSRUZXh0ID0gIkVudGVyIFBhc3N3b3JkIDogIiwgW1N3aXRjaF0kU2hvd01hc2tlZFBzdywgW2NoYXJdJE1hc2s9IuKAoiIsIFtTd2l0Y2hdJEZvcmNlVmFsaWRhdGlvbiwgW3NjcmlwdGJsb2NrXSRWYWxpZGF0b3I9ezN9KQ0KDQogICAgV3JpdGUtaG9zdCAtbm9uZXdsaW5lICRUZXh0DQogICAgJFJlUmVnWCA9ICdbXlx4MDEtXHgwOFx4MTAtXHg4MF0rJyMnW15cd1wuXScNCiAgICAkUHN3ID0gIiINCiAgICAkQ3ZpcyA9IFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRGYWxzZQ0KICAgIGlmICghJFNob3dNYXNrZWRQc3cpIHskVmFsaWRhdG9yPXszfX0NCiAgICAkQ291bnQgPSAxOyRTbGVlcCA9IDANCiAgICBXaGlsZSAoJFRydWUpIHsNCiAgICAgICAgaWYgKCRjb3VudCAtZ3QgMjUwKSB7JFNsZWVwID0gMjUwfQ0KICAgICAgICAkVGVzdCA9ICYkVmFsaWRhdG9yDQogICAgICAgIGlmICgkSG9zdC5VSS5SYXdVSS5LZXlBdmFpbGFibGUpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5RG93bixOb0VjaG8iKTskQ291bnQ9MDskU2xlZXA9MH0gZWxzZSB7JENvdW50Kys7U3RhcnQtU2xlZXAgLW0gJFNsZWVwO2NvbnRpbnVlfQ0KICAgICAgICBpZiAoS2V5UHJlc3NlZCAifn5CYWNrU3BhY2V+fiIgJFN0b3JlKSB7aWYgKCRzdG9yZS5Db250cm9sS2V5U3RhdGUgLW1hdGNoICJjdHJsIikgeyRQc3c9IiJ9IGVsc2UgeyRQc3cgPSA/OiAoJFBzdy5MZW5ndGggLWVxIDApeyIifXskUHN3LnN1YnN0cmluZygwLCRQc3cuTGVuZ3RoLTEpfX19DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5TcGFjZX5+IiAkU3RvcmUpIHskUHN3ICs9ICIgIn0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+fkVzY2FwZX5+IiAkU3RvcmUpIHskcHN3PSIiO2JyZWFrfQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RU5URVJ+fiIgJFN0b3JlKSB7V3JpdGUtSG9zdCAiIjtpZiAoW2ludF0kVGVzdCAtbmUgMykge2lmICgkVGVzdCAtb3IgISRGb3JjZVZhbGlkYXRpb24pIHticmVha30gZWxzZSB7V3JpdGUtSG9zdCAtZiBZZWxsb3cgLU5vTmV3TGluZSAiTXVzdFR5cGUgaW4gYSB2YWxpZCBQYXNzd29yZC4uLiI7c3RhcnQtc2xlZXAgLXMgMjtDbGVhci1MaW5lO1tDb25zb2xlXTo6Q3Vyc29yVG9wLT0xfX1lbHNle2JyZWFrfX0gZWxzZSANCiAgICAgICAgeyRQc3cgKz0gJFN0b3JlLkNoYXJhY3RlciAtcmVwbGFjZSAoJFJlUmVnWCwnJyl9DQogICAgICAgIGlmICgkU2hvd01hc2tlZFBzdykgew0KICAgICAgICAgICAgJHd0ID0gW0NvbnNvbGVdOjpCdWZmZXJXaWR0aCAtICR0ZXh0Lmxlbmd0aCAtIDENCiAgICAgICAgICAgICRUZXN0ID0gJiRWYWxpZGF0b3INCiAgICAgICAgICAgIFtDb25zb2xlXTo6Q3Vyc29ybGVmdCA9ICR0ZXh0Lmxlbmd0aA0KICAgICAgICAgICAgaWYgKCR3dC0kUHN3Lkxlbmd0aCAtbHQgMCkgeyR0Yj0iIjskdHQ9IiRNYXNrIiooJHd0LTMpKyIuLi4ifSBlbHNlIHskdGI9IiAiKigkd3QtJFBzdy5MZW5ndGgpOyR0dD0iJE1hc2siKiRQc3cuTGVuZ3RofQ0KICAgICAgICAgICAgJGZjb2wgPSBbY29uc29sZV06OkZvcmVncm91bmRDb2xvcg0KICAgICAgICAgICAgaWYgKFtpbnRdJFRlc3QgLW5lIDMpIHsNCiAgICAgICAgICAgICAgICAkZkNvbCA9ID86KCRUZXN0KSB7Mn0geyJyZWQifQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgV3JpdGUtaG9zdCAtbm9uZXdsaW5lIC1mICRmQ29sICR0dCR0Yg0KICAgICAgICB9DQogICAgfQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRDdmlzDQogICAgcmV0dXJuICRwc3cNCn0KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJebGliOiguKikiICB7JEZpbGU9JE1hdGNoZXNbMV07JExpYj1BUC1Db252ZXJ0UGF0aCAiPExJQj4iOyh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZSIpIC1vciAodGVzdC1wYXRoIC10IGxlYWYgIiRMaWJcJEZpbGUuZGxsIil9DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzVGhydSkge3JldHVybiAkU3RhdH0NCn0KCmZ1bmN0aW9uIExvYWQtSlMtTGliIHtwYXJhbSgkSUUsIFtBbGlhcygiTGliIiwiTGlicyIsIkxpYnJhcnkiKV0kTGlicmFyaWVzID0gIkpRdWVyeSIsIFtTd2l0Y2hdJEdldFNyYykNCg0KICAgICRMaWJzID0gQHsgI1Rvb2xraXRzIGFuZCB0aGVpciBkb3dubG9hZHMNCiAgICAgICAgIkpRdWVyeSIgPSAiaHR0cDovL2FqYXguZ29vZ2xlYXBpcy5jb20vYWpheC9saWJzL2pxdWVyeS8xLjExLjAvanF1ZXJ5Lm1pbi5qcyINCiAgICB9DQogICAgZm9yZWFjaCAoJExpYiBpbiAkTGlicmFyaWVzKSB7DQogICAgICAgICREQiA9ICRMaWJzLiRMaWINCiAgICAgICAgaWYgKCEkREIpIHtjb250aW51ZX0NCiAgICAgICAgSW5qZWN0LUpTICRJRSAkREIgLUdldFNyYzokR2V0U3JjDQogICAgfQ0KfQoKZnVuY3Rpb24gQ2xlYXItTGluZSB7DQogICAgJE5tID0gW0NvbnNvbGVdOjpXaW5kb3dXaWR0aA0KICAgICR0ID0gW0NvbnNvbGVdOjpDdXJzb3JUb3A7W0NvbnNvbGVdOjpDdXJzb3JMZWZ0PTANCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmUgKCIgIiokTk0pDQogICAgW0NvbnNvbGVdOjpDdXJzb3JUb3A9JHQ7W0NvbnNvbGVdOjpDdXJzb3JMZWZ0PTANCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JywgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBpZiAoJHRleHQuY291bnQgLWd0IDEgLW9yICR0ZXh0LkdldFR5cGUoKS5OYW1lIC1tYXRjaCAiXFtcXSQiKSB7cmV0dXJuICRUZXh0IHw/eyIkXyJ9fCAlIHtXcml0ZS1BUCAkXyAtTm9TaWduOiROb1NpZ24gLVBsYWluVGV4dDokUGxhaW5UZXh0IC1BbGlnbiAkQWxpZ259fQ0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1ub3RtYXRjaCAiXigoPzxOTkw+eCl8KD88TlM+bnM/KSl7MCwyfSg/PHQ+XD4qKSg/PHM+WytcLSFcKlwjXSkoPzx3Pi4qKSIpIHtyZXR1cm4gJFRleHR9DQogICAgJHRiICA9ICIgICAgIiokTWF0Y2hlcy50Lmxlbmd0aDsNCiAgICAkQ29sID0gQHsnKyc9JzInOyctJz0nMTInOychJz0nMTQnOycqJz0nMyc7JyMnPSdEYXJrR3JheSd9WygkU2lnbiA9ICRNYXRjaGVzLlMpXQ0KICAgIGlmICghJENvbCkge1Rocm93ICJJbmNvcnJlY3QgU2lnbiBbJFNpZ25dIFBhc3NlZCEifQ0KICAgICRTaWduID0gJChpZiAoJE5vU2lnbiAtb3IgJE1hdGNoZXMuTlMpIHsiIn0gZWxzZSB7IlskU2lnbl0gIn0pDQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9ICIkdGIkU2lnbiQoJE1hdGNoZXMuVykiO2lmICghJERhdGEpIHtyZXR1cm59DQogICAgJERhdGEgPSBBbGlnbi1UZXh0IC1BbGlnbiAkQWxpZ24gIiR0YiRTaWduJCgkTWF0Y2hlcy5XKSINCiAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmU6JChbYm9vbF0kTWF0Y2hlcy5OTkwpIC1mICRDb2wgJERhdGENCiAgICBpZiAoJFBhc3NUaHJ1KSB7JERhdGF9DQp9CgpmdW5jdGlvbiBMb2FkLUZvcm1zIHsNCiAgICBpZiAoJEZvcm0pIHtyZXR1cm59DQogICAgQWRkLVR5cGUgLUFzc2VtYmx5TmFtZSBTeXN0ZW0uV2luZG93cy5Gb3Jtcw0KICAgICRTY3JpcHQ6Rm9ybSA9IE5ldy1PYmplY3Qgc3lzdGVtLldpbmRvd3MuRm9ybXMuRm9ybQ0KICAgICRGb3JtLlRleHQgPSAiRW50ZXIgSW5wdXQgZm9yIFF1ZXN0aW9uIjskRm9ybS5TaXplID0gIjU4OCwgMzcyIg0KICAgICRMYWJlbCA9IE5ldy1PYmplY3QgU3lzdGVtLldpbmRvd3MuRm9ybXMuTGFiZWw7JFRleHQgPSBOZXctT2JqZWN0IFN5c3RlbS5XaW5kb3dzLkZvcm1zLlRleHRCb3g7JEJUTiA9IE5ldy1PYmplY3QgU3lzdGVtLldpbmRvd3MuRm9ybXMuQnV0dG9uOyRCVE4uTmFtZSA9ICJleGl0cyI7JEJUTi5UZXh0ID0gIlN1Ym1pdCINCiAgICAkTGFiZWwuU2l6ZSA9ICI1NTEsIDEyNyI7JFRleHQuU2l6ZSA9ICI1NDgsIDE1OSI7JExhYmVsLkZvcmVDb2xvciA9ICJTbm93IjskQlROLmFkZF9jbGljayh7JEZvcm0uQ2xvc2UoKX0pOyRCVE4uTG9jYXRpb24gPSAiMjQxLCAzMDQiOyRCVE4uU2l6ZSA9ICI3NSwgMjMiDQogICAgJExhYmVsLkxvY2F0aW9uID0gIjksIDkiOyRUZXh0LkxvY2F0aW9uID0gIjksIDEzOSI7JExhYmVsLmFkZF9jbGljayh7VG8tQ2xpcGJvYXJkICgkRm9ybS5Db250cm9scy5GaW5kKCJRdWVzdGlvbiIsJHRydWUpWzBdLnRleHQpfSk7JFRleHQuYWRkX2NsaWNrKHtUby1DbGlwYm9hcmQgKCRGb3JtLkNvbnRyb2xzLkZpbmQoIkFuc3dlciIsJHRydWUpWzBdLnRleHQpfSkNCiAgICAkRm9ybS5NaW5pbWl6ZUJveCA9ICRGYWxzZTskRm9ybS5NYXhpbWl6ZUJveCA9ICRGYWxzZTskRm9ybS5XaW5kb3dTdGF0ZSA9ICJOb3JtYWwiDQogICAgJEZvcm0uU2hvd0luVGFza2JhciA9ICRGYWxzZTskRm9ybS5PcGFjaXR5ID0gMC44OyRGb3JtLlN0YXJ0UG9zaXRpb24gPSAiQ2VudGVyU2NyZWVuIjskVGV4dC5NYXJnaW49IjMsIDMsIDMsIDMiDQogICAgJEZvcm0uQmFja0NvbG9yID0gIk9yYW5nZSI7JEZvcm0uSWNvbiA9IFtzeXN0ZW0uZHJhd2luZy5pY29uXTo6RXh0cmFjdEFzc29jaWF0ZWRJY29uKCIkUFNIT01FXHBvd2Vyc2hlbGwuZXhlIikNCiAgICAkTGFiZWwuQmFja0NvbG9yID0gIk1hcm9vbiI7JFRleHQuQmFja0NvbG9yID0gIlBhbGVHb2xkZW5yb2QiDQogICAgJExhYmVsLkZvbnQgPSBOZXctT2JqZWN0IFN5c3RlbS5EcmF3aW5nLkZvbnQoIk1pY3Jvc29mdCBTYW5zIFNlcmlmIiwxMi4yNSxbU3lzdGVtLkRyYXdpbmcuRm9udFN0eWxlXTo6cmVndWxhcikNCiAgICAkVGV4dC5Gb250ID0gTmV3LU9iamVjdCBTeXN0ZW0uRHJhd2luZy5Gb250KCJNaWNyb3NvZnQgU2FucyBTZXJpZiIsMTEsW1N5c3RlbS5EcmF3aW5nLkZvbnRTdHlsZV06OlJlZ3VsYXIpDQogICAgJExhYmVsLlRleHRBbGlnbiA9ICJNaWRkbGVDZW50ZXIiOyRCVE4ubWFyZ2luPSIzLCAzLCAzLCAzIjskVGV4dC5NdWx0aUxpbmU9JFRydWUNCiAgICAkbGFiZWwuTmFtZSA9ICJRdWVzdGlvbiI7JFRleHQuTmFtZSA9ICJBbnN3ZXIiDQogICAgJEZvcm0uQ29udHJvbHMuQWRkKCRMYWJlbCk7JEZvcm0uQ29udHJvbHMuQWRkKCRUZXh0KTskRm9ybS5Db250cm9scy5BZGQoJEJUTikNCiAgICAkRm9ybS5BY2NlcHRCdXR0b24gPSAkQlRODQp9CgpmdW5jdGlvbiBBc2stT0UtUVNUTiB7cGFyYW0oJFEpDQoNCiAgICBMb2FkLUZvcm1zDQogICAgJEZvcm0uQ29udHJvbHMuRmluZCgiQW5zd2VyIiwkdHJ1ZSlbMF0udGV4dCA9ICIiDQogICAgJEZvcm0uQ29udHJvbHMuRmluZCgiUXVlc3Rpb24iLCR0cnVlKVswXS50ZXh0ID0gJFENCiAgICAkRm9ybS5TaG93RGlhbG9nKCkgfCBPdXQtTnVsbA0KICAgIHJldHVybiAkRm9ybS5Db250cm9scy5GaW5kKCJBbnN3ZXIiLCR0cnVlKVswXS50ZXh0DQp9CgpmdW5jdGlvbiBHZXQtV2hlcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bc3RyaW5nXSRGaWxlLCBbU3dpdGNoXSRBbGwpDQoNCiAgICBBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHt0aHJvdyAiTmVlZCBTeXMzMlx3aGVyZSB0byB3b3JrISI7cmV0dXJufQ0KICAgICRPdXQgPSB3aGVyZS5leGUgJGZpbGUgMj4kbnVsbA0KICAgIGlmICghJE91dCkge3JldHVybn0NCiAgICBpZiAoJEFsbCkge3JldHVybiAkT3V0fQ0KICAgIHJldHVybiBAKCRPdXQpWzBdDQp9CgpmdW5jdGlvbiBJbnZva2UtVGVybmFyeSB7cGFyYW0oW2Jvb2xdJGRlY2lkZXIsIFtzY3JpcHRibG9ja10kaWZ0cnVlLCBbc2NyaXB0YmxvY2tdJGlmZmFsc2UpDQoNCiAgICBpZiAoJGRlY2lkZXIpIHsgJiRpZnRydWV9IGVsc2UgeyAmJGlmZmFsc2UgfQ0KfQoKZnVuY3Rpb24gSU4tQ29kZS1EZWJ1Zy1Db25zb2xlIHtXcml0ZS1Ib3N0IC1mIHllbGxvdyAnW0FQLUNPTVBJTEVSXSBNb2R1bGUgW0lOLUNvZGUtRGVidWctQ29uc29sZV0gZGlzYWJsZWQgZm9yIHRoaXMgcHJvZ3JhbSd9CgpmdW5jdGlvbiBJbmplY3QtSlMge3BhcmFtKCRJRSwgW1ZhbGlkYXRlTm90TnVsbG9yRW1wdHkoKV1bQWxpYXMoIkRhdGEiLCJ1cmwiLCJ2YWx1ZSIpXVtTdHJpbmddJEZ1bmN0aW9uLCBbU3dpdGNoXSRHZXRTcmMpDQoNCiAgICAkRnVuY3Rpb24gPSAkRnVuY3Rpb24udHJpbSgpO2lmICghJEZ1bmN0aW9uKSB7V3JpdGUtU2NyaXB0ICIhRW1wdHkgSmF2YXNjcmlwdCBpcyBwb2ludGxlc3MgdG8gSW5qZWN0ISI7cmV0dXJufQ0KICAgIGlmICgkRnVuY3Rpb24gLW1hdGNoICJeaHR0cHM/XDovLyhcdytcLil7MCwxfSIpIHskU291cmNlID0gInVybCJ9IGVsc2UgeyRTb3VyY2UgPSAiVGV4dCJ9DQogICAgaWYgKCRHZXRTcmMgLWFuZCAkU291cmNlIC1lcSAidXJsIikgeyRGdW5jdGlvbiA9IGlybSAkRnVuY3Rpb247JFNvdXJjZSA9ICJUZXh0In0NCiAgICAkSGVhZCA9IEAoJElFLmRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCJoZWFkIikpWzBdDQogICAgJFNjcmlwdCA9ICRJRS5kb2N1bWVudC5jcmVhdGVFbGVtZW50KCdzY3JpcHQnKQ0KICAgICRTY3JpcHQudHlwZSA9ICd0ZXh0L2phdmFzY3JpcHQnDQogICAgJFNjcmlwdC4kKGlmICgkU291cmNlIC1lcSAidXJsIikgeyJzcmMifSBlbHNlIHsidGV4dCJ9KSA9ICRGdW5jdGlvbg0KICAgICRIZWFkLmFwcGVuZENoaWxkKCRzY3JpcHQpID4gJE51bGwNCn0KCmZ1bmN0aW9uIExvYWQtSW50ZXJuZXQge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kSUUsIFtJbnRdJEludGVydmFsID0gNTApDQoNCiAgICBXaGlsZSAoJElFLkJ1c3kpIHsNCiAgICAgICAgU3RhcnQtU2xlZXAgLW0gJEludGVydmFsDQogICAgfQ0KfQoKZnVuY3Rpb24gRXhlY3V0ZS1XZWJTY3JpcHQge3BhcmFtKCRJRSwgW1N0cmluZ10kU2NyaXB0LCBbVmFsaWRhdGVTZXQoIkphdmFTY3JpcHQiKV0kTGFuZ3VhZ2U9IkphdmFTY3JpcHQiKQ0KDQogICAgJElFLmRvY3VtZW50LnBhcmVudFdpbmRvdy5leGVjU2NyaXB0KCIkU2NyaXB0IiwkTGFuZ3VhZ2UudG9Mb3dlcigpKQ0KfQoKU2V0LUFsaWFzIGludiBQcm9jZXNzLVRyYW5zcGFyZW5jeQpTZXQtQWxpYXMgPzogSW52b2tlLVRlcm5hcnk=")))
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
