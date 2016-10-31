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
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gSW5wdXQtUHJvbXB0IHtwYXJhbShbVmFsaWRhdGVOb3ROdWxsb3JFbXB0eSgpXVtTdHJpbmddJFByb21wdCA9ICJFbnRlciBUZXh0IDogIikNCg0KICAgIFdyaXRlLWhvc3QgLW5vbmV3bGluZSAkUHJvbXB0DQogICAgJFJlUmVnWCA9ICdbXlx4MDEtXHgwOFx4MTAtXHg4MF0rJyMnW15cd1wuXScgW9CQLdGP0IHRkV0NCiAgICAkVHJTdHJpbmcgPSAiIg0KICAgICRpUG9zeCA9IFtDb25zb2xlXTo6Q3Vyc29yTGVmdA0KICAgICRpUG9zeSA9IFtDb25zb2xlXTo6Q3Vyc29yVG9wDQogICAgJEN2aXMgPSBbQ29uc29sZV06OkN1cnNvclZpc2libGUNCiAgICBbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkRmFsc2UNCiAgICAkQ291bnQgPSAxOyRTbGVlcCA9IDANCiAgICBXaGlsZSAoJFRydWUpIHsNCiAgICAgICAgaWYgKCRjb3VudCAtZ3QgNTAwKSB7JFNsZWVwID0gMTAwfQ0KICAgICAgICBpZiAoJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlKSB7JFN0b3JlID0gJEhvc3QuVUkuUmF3VUkuUmVhZEtleSgiSW5jbHVkZUtleURvd24sTm9FY2hvIik7JENvdW50PTA7JFNsZWVwPTB9IGVsc2UgeyRDb3VudCsrO1N0YXJ0LVNsZWVwIC1tICRTbGVlcDtjb250aW51ZX0NCiAgICAgICAgaWYgKEtleVByZXNzZWQgIn5+QmFja1NwYWNlfn4iICRTdG9yZSkge2lmICgkc3RvcmUuQ29udHJvbEtleVN0YXRlIC1tYXRjaCAiY3RybCIpIHskVHJTdHJpbmc9IiJ9IGVsc2UgeyRUclN0cmluZyA9ID86ICgkVHJTdHJpbmcuTGVuZ3RoIC1lcSAwKXsiIn17JFRyU3RyaW5nLnN1YnN0cmluZygwLCRUclN0cmluZy5MZW5ndGgtMSl9fX0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+flNwYWNlfn4iICRTdG9yZSkgeyRUclN0cmluZyArPSAiICJ9DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5Fc2NhcGV+fiIgJFN0b3JlKSB7JFRyU3RyaW5nPSIiO2JyZWFrfQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RU5URVJ+fiIgJFN0b3JlKSB7V3JpdGUtSG9zdCAiIjticmVha30gZWxzZSANCiAgICAgICAgeyRUclN0cmluZyArPSAkU3RvcmUuQ2hhcmFjdGVyIC1yZXBsYWNlICgkUmVSZWdYLCcnKX0NCiAgICAgICAgJHd0ID0gW0NvbnNvbGVdOjpCdWZmZXJXaWR0aCAtICRQcm9tcHQubGVuZ3RoIC0gMQ0KICAgICAgICBbQ29uc29sZV06OkN1cnNvcmxlZnQgPSAkaVBvc3gNCiAgICAgICAgW0NvbnNvbGVdOjpDdXJzb3JUb3AgPSAkaVBvc3kNCiAgICAgICAgaWYgKCR3dC0kVHJTdHJpbmcuTGVuZ3RoIC1sdCAwKSB7DQogICAgICAgICAgICAkdGI9IiINCiAgICAgICAgICAgICR0dD0iLi4uIiskVHJTdHJpbmcuc3Vic3RyaW5nKCRUclN0cmluZy5MZW5ndGgtJHd0KzMpDQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAkdGI9IiAiKigkd3QtJFRyU3RyaW5nLkxlbmd0aCkNCiAgICAgICAgICAgICR0dD0kVHJTdHJpbmcNCiAgICAgICAgfQ0KICAgICAgICAkZmNvbCA9IFtjb25zb2xlXTo6Rm9yZWdyb3VuZENvbG9yDQogICAgICAgIFdyaXRlLWhvc3QgLW5vbmV3bGluZSAtZiAkZkNvbCAkdHQkVGINCiAgICB9DQogICAgW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEN2aXMNCiAgICByZXR1cm4gJFRSU3RyaW5nDQp9CgpmdW5jdGlvbiBQcm9jZXNzLVRyYW5zcGFyZW5jeSB7cGFyYW0oW0FsaWFzKCJUcmFuc3BhcmVuY3kiLCJJbnZpc2liaWxpdHkiLCJpIiwidCIpXVtWYWxpZGF0ZVJhbmdlKDAsMTAwKV1baW50XSRUcmFucz0wLCBbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFByb2Nlc3MpDQoNCiAgICBpZiAoJFByb2Nlc3MgLW1hdGNoICJcLmV4ZSQiKSB7JFByb2Nlc3MgPSAkUHJvY2Vzcy5yZXBsYWNlKCIuZXhlIiwiIil9DQogICAgVHJ5IHsNCiAgICAgICAgaWYgKCRQcm9jZXNzLm5hbWUpIHskUHJvYyA9ICRQcm9jZXNzLm5hbWV9IGVsc2UgeyRQcm9jID0gKEdldC1Qcm9jZXNzICRQcm9jZXNzIC1FcnJvckFjdGlvbiBTdG9wKVswXS5uYW1lfQ0KICAgIH0gY2F0Y2ggew0KICAgICAgICBpZiAoW0ludF06OlRyeVBhcnNlKCRQcm9jZXNzLCBbcmVmXTMpKSB7JFByb2MgPSAoKEdldC1Qcm9jZXNzIHwgPyB7JF8uSUQgLWVxICRQcm9jZXNzfSlbMF0pLm5hbWV9DQogICAgfQ0KICAgIGlmICgkUHJvYyAtbm90TWF0Y2ggIlwuZXhlJCIpIHskUHJvYyA9ICIkUHJvYy5leGUifQ0KICAgIG5pcmNtZCB3aW4gdHJhbnMgcHJvY2VzcyAiJFByb2MiICgoMTAwLSRUcmFucykqMjU1LzEwMCkgfCBPdXQtTnVsbA0KfQoKZnVuY3Rpb24gUHN3LVByb21wdCB7cGFyYW0oW0FsaWFzKCJQcm9tcHQiKV1bU3RyaW5nXSRUZXh0ID0gIkVudGVyIFBhc3N3b3JkIDogIiwgW1N3aXRjaF0kU2hvd01hc2tlZFBzdywgW2NoYXJdJE1hc2s9IuKAoiIsIFtTd2l0Y2hdJEZvcmNlVmFsaWRhdGlvbiwgW3NjcmlwdGJsb2NrXSRWYWxpZGF0b3I9ezN9KQ0KDQogICAgV3JpdGUtaG9zdCAtbm9uZXdsaW5lICRUZXh0DQogICAgJFJlUmVnWCA9ICdbXlx4MDEtXHgwOFx4MTAtXHg4MF0rJyMnW15cd1wuXScNCiAgICAkUHN3ID0gIiINCiAgICAkQ3ZpcyA9IFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRGYWxzZQ0KICAgIGlmICghJFNob3dNYXNrZWRQc3cpIHskVmFsaWRhdG9yPXszfX0NCiAgICAkQ291bnQgPSAxOyRTbGVlcCA9IDANCiAgICBXaGlsZSAoJFRydWUpIHsNCiAgICAgICAgaWYgKCRjb3VudCAtZ3QgMjUwKSB7JFNsZWVwID0gMjUwfQ0KICAgICAgICAkVGVzdCA9ICYkVmFsaWRhdG9yDQogICAgICAgIGlmICgkSG9zdC5VSS5SYXdVSS5LZXlBdmFpbGFibGUpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5RG93bixOb0VjaG8iKTskQ291bnQ9MDskU2xlZXA9MH0gZWxzZSB7JENvdW50Kys7U3RhcnQtU2xlZXAgLW0gJFNsZWVwO2NvbnRpbnVlfQ0KICAgICAgICBpZiAoS2V5UHJlc3NlZCAifn5CYWNrU3BhY2V+fiIgJFN0b3JlKSB7aWYgKCRzdG9yZS5Db250cm9sS2V5U3RhdGUgLW1hdGNoICJjdHJsIikgeyRQc3c9IiJ9IGVsc2UgeyRQc3cgPSA/OiAoJFBzdy5MZW5ndGggLWVxIDApeyIifXskUHN3LnN1YnN0cmluZygwLCRQc3cuTGVuZ3RoLTEpfX19DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5TcGFjZX5+IiAkU3RvcmUpIHskUHN3ICs9ICIgIn0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+fkVzY2FwZX5+IiAkU3RvcmUpIHskcHN3PSIiO2JyZWFrfQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RU5URVJ+fiIgJFN0b3JlKSB7V3JpdGUtSG9zdCAiIjtpZiAoW2ludF0kVGVzdCAtbmUgMykge2lmICgkVGVzdCAtb3IgISRGb3JjZVZhbGlkYXRpb24pIHticmVha30gZWxzZSB7V3JpdGUtSG9zdCAtZiBZZWxsb3cgLU5vTmV3TGluZSAiTXVzdFR5cGUgaW4gYSB2YWxpZCBQYXNzd29yZC4uLiI7c3RhcnQtc2xlZXAgLXMgMjtDbGVhci1MaW5lO1tDb25zb2xlXTo6Q3Vyc29yVG9wLT0xfX1lbHNle2JyZWFrfX0gZWxzZSANCiAgICAgICAgeyRQc3cgKz0gJFN0b3JlLkNoYXJhY3RlciAtcmVwbGFjZSAoJFJlUmVnWCwnJyl9DQogICAgICAgIGlmICgkU2hvd01hc2tlZFBzdykgew0KICAgICAgICAgICAgJHd0ID0gW0NvbnNvbGVdOjpCdWZmZXJXaWR0aCAtICR0ZXh0Lmxlbmd0aCAtIDENCiAgICAgICAgICAgICRUZXN0ID0gJiRWYWxpZGF0b3INCiAgICAgICAgICAgIFtDb25zb2xlXTo6Q3Vyc29ybGVmdCA9ICR0ZXh0Lmxlbmd0aA0KICAgICAgICAgICAgaWYgKCR3dC0kUHN3Lkxlbmd0aCAtbHQgMCkgeyR0Yj0iIjskdHQ9IiRNYXNrIiooJHd0LTMpKyIuLi4ifSBlbHNlIHskdGI9IiAiKigkd3QtJFBzdy5MZW5ndGgpOyR0dD0iJE1hc2siKiRQc3cuTGVuZ3RofQ0KICAgICAgICAgICAgJGZjb2wgPSBbY29uc29sZV06OkZvcmVncm91bmRDb2xvcg0KICAgICAgICAgICAgaWYgKFtpbnRdJFRlc3QgLW5lIDMpIHsNCiAgICAgICAgICAgICAgICAkZkNvbCA9ID86KCRUZXN0KSB7Mn0geyJyZWQifQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgV3JpdGUtaG9zdCAtbm9uZXdsaW5lIC1mICRmQ29sICR0dCR0Yg0KICAgICAgICB9DQogICAgfQ0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRDdmlzDQogICAgcmV0dXJuICRwc3cNCn0KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJebGliOiguKikiICB7JEZpbGU9JE1hdGNoZXNbMV07JExpYj1BUC1Db252ZXJ0UGF0aCAiPExJQj4iOyh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZSIpIC1vciAodGVzdC1wYXRoIC10IGxlYWYgIiRMaWJcJEZpbGUuZGxsIil9DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzVGhydSkge3JldHVybiAkU3RhdH0NCn0KCmZ1bmN0aW9uIExvYWQtSlMtTGliIHtwYXJhbSgkSUUsIFtBbGlhcygiTGliIiwiTGlicyIsIkxpYnJhcnkiKV0kTGlicmFyaWVzID0gIkpRdWVyeSIsIFtTd2l0Y2hdJEdldFNyYykNCg0KICAgICRMaWJzID0gQHsgI1Rvb2xraXRzIGFuZCB0aGVpciBkb3dubG9hZHMNCiAgICAgICAgIkpRdWVyeSIgPSAiaHR0cDovL2FqYXguZ29vZ2xlYXBpcy5jb20vYWpheC9saWJzL2pxdWVyeS8xLjExLjAvanF1ZXJ5Lm1pbi5qcyINCiAgICB9DQogICAgZm9yZWFjaCAoJExpYiBpbiAkTGlicmFyaWVzKSB7DQogICAgICAgICREQiA9ICRMaWJzLiRMaWINCiAgICAgICAgaWYgKCEkREIpIHtjb250aW51ZX0NCiAgICAgICAgSW5qZWN0LUpTICRJRSAkREIgLUdldFNyYzokR2V0U3JjDQogICAgfQ0KfQoKZnVuY3Rpb24gQ2xlYXItTGluZSB7DQogICAgJE5tID0gW0NvbnNvbGVdOjpXaW5kb3dXaWR0aA0KICAgICR0ID0gW0NvbnNvbGVdOjpDdXJzb3JUb3A7W0NvbnNvbGVdOjpDdXJzb3JMZWZ0PTANCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmUgKCIgIiokTk0pDQogICAgW0NvbnNvbGVdOjpDdXJzb3JUb3A9JHQ7W0NvbnNvbGVdOjpDdXJzb3JMZWZ0PTANCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JywgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBpZiAoJHRleHQuY291bnQgLWd0IDEgLW9yICR0ZXh0LkdldFR5cGUoKS5OYW1lIC1tYXRjaCAiXFtcXSQiKSB7cmV0dXJuICRUZXh0IHw/eyIkXyJ9fCAlIHtXcml0ZS1BUCAkXyAtTm9TaWduOiROb1NpZ24gLVBsYWluVGV4dDokUGxhaW5UZXh0IC1BbGlnbiAkQWxpZ259fQ0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1ub3RtYXRjaCAiXigoPzxOTkw+eCl8KD88TlM+bnM/KSl7MCwyfSg/PHQ+XD4qKSg/PHM+WytcLSFcKlwjXEBdKSg/PHc+LiopIikge3JldHVybiAkVGV4dH0NCiAgICAkdGIgID0gIiAgICAiKiRNYXRjaGVzLnQubGVuZ3RoOw0KICAgICRDb2wgPSBAeycrJz0nMic7Jy0nPScxMic7JyEnPScxNCc7JyonPSczJzsnIyc9J0RhcmtHcmF5JzsnQCc9J0dyYXknfVsoJFNpZ24gPSAkTWF0Y2hlcy5TKV0NCiAgICBpZiAoISRDb2wpIHtUaHJvdyAiSW5jb3JyZWN0IFNpZ24gWyRTaWduXSBQYXNzZWQhIn0NCiAgICAkU2lnbiA9ICQoaWYgKCROb1NpZ24gLW9yICRNYXRjaGVzLk5TKSB7IiJ9IGVsc2UgeyJbJFNpZ25dICJ9KQ0KICAgIEFQLVJlcXVpcmUgImZ1bmN0aW9uOkFsaWduLVRleHQiIHtmdW5jdGlvbiBHbG9iYWw6QWxpZ24tVGV4dCgkYWxpZ24sJHRleHQpIHskdGV4dH19DQogICAgJERhdGEgPSAiJHRiJFNpZ24kKCRNYXRjaGVzLlcpIjtpZiAoISREYXRhKSB7cmV0dXJufQ0KICAgICREYXRhID0gQWxpZ24tVGV4dCAtQWxpZ24gJEFsaWduICIkdGIkU2lnbiQoJE1hdGNoZXMuVykiDQogICAgaWYgKCRQbGFpblRleHQpIHtyZXR1cm4gJERhdGF9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiQoW2Jvb2xdJE1hdGNoZXMuTk5MKSAtZiAkQ29sICREYXRhDQogICAgaWYgKCRQYXNzVGhydSkgeyREYXRhfQ0KfQoKZnVuY3Rpb24gTG9hZC1Gb3JtcyB7DQogICAgaWYgKCRGb3JtKSB7cmV0dXJufQ0KICAgIEFkZC1UeXBlIC1Bc3NlbWJseU5hbWUgU3lzdGVtLldpbmRvd3MuRm9ybXMNCiAgICAkU2NyaXB0OkZvcm0gPSBOZXctT2JqZWN0IHN5c3RlbS5XaW5kb3dzLkZvcm1zLkZvcm0NCiAgICAkRm9ybS5UZXh0ID0gIkVudGVyIElucHV0IGZvciBRdWVzdGlvbiI7JEZvcm0uU2l6ZSA9ICI1ODgsIDM3MiINCiAgICAkTGFiZWwgPSBOZXctT2JqZWN0IFN5c3RlbS5XaW5kb3dzLkZvcm1zLkxhYmVsOyRUZXh0ID0gTmV3LU9iamVjdCBTeXN0ZW0uV2luZG93cy5Gb3Jtcy5UZXh0Qm94OyRCVE4gPSBOZXctT2JqZWN0IFN5c3RlbS5XaW5kb3dzLkZvcm1zLkJ1dHRvbjskQlROLk5hbWUgPSAiZXhpdHMiOyRCVE4uVGV4dCA9ICJTdWJtaXQiDQogICAgJExhYmVsLlNpemUgPSAiNTUxLCAxMjciOyRUZXh0LlNpemUgPSAiNTQ4LCAxNTkiOyRMYWJlbC5Gb3JlQ29sb3IgPSAiU25vdyI7JEJUTi5hZGRfY2xpY2soeyRGb3JtLkNsb3NlKCl9KTskQlROLkxvY2F0aW9uID0gIjI0MSwgMzA0IjskQlROLlNpemUgPSAiNzUsIDIzIg0KICAgICRMYWJlbC5Mb2NhdGlvbiA9ICI5LCA5IjskVGV4dC5Mb2NhdGlvbiA9ICI5LCAxMzkiOyRMYWJlbC5hZGRfY2xpY2soe1RvLUNsaXBib2FyZCAoJEZvcm0uQ29udHJvbHMuRmluZCgiUXVlc3Rpb24iLCR0cnVlKVswXS50ZXh0KX0pOyRUZXh0LmFkZF9jbGljayh7VG8tQ2xpcGJvYXJkICgkRm9ybS5Db250cm9scy5GaW5kKCJBbnN3ZXIiLCR0cnVlKVswXS50ZXh0KX0pDQogICAgJEZvcm0uTWluaW1pemVCb3ggPSAkRmFsc2U7JEZvcm0uTWF4aW1pemVCb3ggPSAkRmFsc2U7JEZvcm0uV2luZG93U3RhdGUgPSAiTm9ybWFsIg0KICAgICRGb3JtLlNob3dJblRhc2tiYXIgPSAkRmFsc2U7JEZvcm0uT3BhY2l0eSA9IDAuODskRm9ybS5TdGFydFBvc2l0aW9uID0gIkNlbnRlclNjcmVlbiI7JFRleHQuTWFyZ2luPSIzLCAzLCAzLCAzIg0KICAgICRGb3JtLkJhY2tDb2xvciA9ICJPcmFuZ2UiOyRGb3JtLkljb24gPSBbc3lzdGVtLmRyYXdpbmcuaWNvbl06OkV4dHJhY3RBc3NvY2lhdGVkSWNvbigiJFBTSE9NRVxwb3dlcnNoZWxsLmV4ZSIpDQogICAgJExhYmVsLkJhY2tDb2xvciA9ICJNYXJvb24iOyRUZXh0LkJhY2tDb2xvciA9ICJQYWxlR29sZGVucm9kIg0KICAgICRMYWJlbC5Gb250ID0gTmV3LU9iamVjdCBTeXN0ZW0uRHJhd2luZy5Gb250KCJNaWNyb3NvZnQgU2FucyBTZXJpZiIsMTIuMjUsW1N5c3RlbS5EcmF3aW5nLkZvbnRTdHlsZV06OnJlZ3VsYXIpDQogICAgJFRleHQuRm9udCA9IE5ldy1PYmplY3QgU3lzdGVtLkRyYXdpbmcuRm9udCgiTWljcm9zb2Z0IFNhbnMgU2VyaWYiLDExLFtTeXN0ZW0uRHJhd2luZy5Gb250U3R5bGVdOjpSZWd1bGFyKQ0KICAgICRMYWJlbC5UZXh0QWxpZ24gPSAiTWlkZGxlQ2VudGVyIjskQlROLm1hcmdpbj0iMywgMywgMywgMyI7JFRleHQuTXVsdGlMaW5lPSRUcnVlDQogICAgJGxhYmVsLk5hbWUgPSAiUXVlc3Rpb24iOyRUZXh0Lk5hbWUgPSAiQW5zd2VyIg0KICAgICRGb3JtLkNvbnRyb2xzLkFkZCgkTGFiZWwpOyRGb3JtLkNvbnRyb2xzLkFkZCgkVGV4dCk7JEZvcm0uQ29udHJvbHMuQWRkKCRCVE4pDQogICAgJEZvcm0uQWNjZXB0QnV0dG9uID0gJEJUTg0KfQoKZnVuY3Rpb24gQXNrLU9FLVFTVE4ge3BhcmFtKCRRKQ0KDQogICAgTG9hZC1Gb3Jtcw0KICAgICRGb3JtLkNvbnRyb2xzLkZpbmQoIkFuc3dlciIsJHRydWUpWzBdLnRleHQgPSAiIg0KICAgICRGb3JtLkNvbnRyb2xzLkZpbmQoIlF1ZXN0aW9uIiwkdHJ1ZSlbMF0udGV4dCA9ICRRDQogICAgJEZvcm0uU2hvd0RpYWxvZygpIHwgT3V0LU51bGwNCiAgICByZXR1cm4gJEZvcm0uQ29udHJvbHMuRmluZCgiQW5zd2VyIiwkdHJ1ZSlbMF0udGV4dA0KfQoKZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGwNCiAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgaWYgKCRBbGwpIHtyZXR1cm4gJE91dH0NCiAgICByZXR1cm4gQCgkT3V0KVswXQ0KfQoKZnVuY3Rpb24gSW52b2tlLVRlcm5hcnkge3BhcmFtKFtib29sXSRkZWNpZGVyLCBbc2NyaXB0YmxvY2tdJGlmdHJ1ZSwgW3NjcmlwdGJsb2NrXSRpZmZhbHNlKQ0KDQogICAgaWYgKCRkZWNpZGVyKSB7ICYkaWZ0cnVlfSBlbHNlIHsgJiRpZmZhbHNlIH0NCn0KCmZ1bmN0aW9uIElOLUNvZGUtRGVidWctQ29uc29sZSB7V3JpdGUtSG9zdCAtZiB5ZWxsb3cgJ1tBUC1DT01QSUxFUl0gTW9kdWxlIFtJTi1Db2RlLURlYnVnLUNvbnNvbGVdIGRpc2FibGVkIGZvciB0aGlzIHByb2dyYW0nfQoKZnVuY3Rpb24gSW5qZWN0LUpTIHtwYXJhbSgkSUUsIFtWYWxpZGF0ZU5vdE51bGxvckVtcHR5KCldW0FsaWFzKCJEYXRhIiwidXJsIiwidmFsdWUiKV1bU3RyaW5nXSRGdW5jdGlvbiwgW1N3aXRjaF0kR2V0U3JjKQ0KDQogICAgJEZ1bmN0aW9uID0gJEZ1bmN0aW9uLnRyaW0oKTtpZiAoISRGdW5jdGlvbikge1dyaXRlLVNjcmlwdCAiIUVtcHR5IEphdmFzY3JpcHQgaXMgcG9pbnRsZXNzIHRvIEluamVjdCEiO3JldHVybn0NCiAgICBpZiAoJEZ1bmN0aW9uIC1tYXRjaCAiXmh0dHBzP1w6Ly8oXHcrXC4pezAsMX0iKSB7JFNvdXJjZSA9ICJ1cmwifSBlbHNlIHskU291cmNlID0gIlRleHQifQ0KICAgIGlmICgkR2V0U3JjIC1hbmQgJFNvdXJjZSAtZXEgInVybCIpIHskRnVuY3Rpb24gPSBpcm0gJEZ1bmN0aW9uOyRTb3VyY2UgPSAiVGV4dCJ9DQogICAgJEhlYWQgPSBAKCRJRS5kb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgiaGVhZCIpKVswXQ0KICAgICRTY3JpcHQgPSAkSUUuZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnc2NyaXB0JykNCiAgICAkU2NyaXB0LnR5cGUgPSAndGV4dC9qYXZhc2NyaXB0Jw0KICAgICRTY3JpcHQuJChpZiAoJFNvdXJjZSAtZXEgInVybCIpIHsic3JjIn0gZWxzZSB7InRleHQifSkgPSAkRnVuY3Rpb24NCiAgICAkSGVhZC5hcHBlbmRDaGlsZCgkc2NyaXB0KSA+ICROdWxsDQp9CgpmdW5jdGlvbiBMb2FkLUludGVybmV0IHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJElFLCBbSW50XSRJbnRlcnZhbCA9IDUwKQ0KDQogICAgV2hpbGUgKCRJRS5CdXN5KSB7DQogICAgICAgIFN0YXJ0LVNsZWVwIC1tICRJbnRlcnZhbA0KICAgIH0NCn0KCmZ1bmN0aW9uIEV4ZWN1dGUtV2ViU2NyaXB0IHtwYXJhbSgkSUUsIFtTdHJpbmddJFNjcmlwdCwgW1ZhbGlkYXRlU2V0KCJKYXZhU2NyaXB0IildJExhbmd1YWdlPSJKYXZhU2NyaXB0IikNCg0KICAgICRJRS5kb2N1bWVudC5wYXJlbnRXaW5kb3cuZXhlY1NjcmlwdCgiJFNjcmlwdCIsJExhbmd1YWdlLnRvTG93ZXIoKSkNCn0KClNldC1BbGlhcyBpbnYgUHJvY2Vzcy1UcmFuc3BhcmVuY3kKU2V0LUFsaWFzID86IEludm9rZS1UZXJuYXJ5")))
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
