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
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gRXhlY3V0ZS1XZWJTY3JpcHQgewpwYXJhbSgkSUUsIFtTdHJpbmddJFNjcmlwdCwgW1ZhbGlkYXRlU2V0KCJKYXZhU2NyaXB0IildJExhbmd1YWdlPSJKYXZhU2NyaXB0IikNCg0KICAgICRJRS5kb2N1bWVudC5wYXJlbnRXaW5kb3cuZXhlY1NjcmlwdCgiJFNjcmlwdCIsJExhbmd1YWdlLnRvTG93ZXIoKSkNCn0KCmZ1bmN0aW9uIExvYWQtSlMtTGliIHsKcGFyYW0oJElFLCBbQWxpYXMoIkxpYiIsIkxpYnMiLCJMaWJyYXJ5IildJExpYnJhcmllcyA9ICJKUXVlcnkiLCBbU3dpdGNoXSRHZXRTcmMpDQoNCiAgICAkTGlicyA9IEB7ICNUb29sa2l0cyBhbmQgdGhlaXIgZG93bmxvYWRzDQogICAgICAgICJKUXVlcnkiID0gImh0dHA6Ly9hamF4Lmdvb2dsZWFwaXMuY29tL2FqYXgvbGlicy9qcXVlcnkvMS4xMS4wL2pxdWVyeS5taW4uanMiDQogICAgfQ0KICAgIGZvcmVhY2ggKCRMaWIgaW4gJExpYnJhcmllcykgew0KICAgICAgICAkREIgPSAkTGlicy4kTGliDQogICAgICAgIGlmICghJERCKSB7Y29udGludWV9DQogICAgICAgIEluamVjdC1KUyAkSUUgJERCIC1HZXRTcmM6JEdldFNyYw0KICAgIH0NCn0KCmZ1bmN0aW9uIEluamVjdC1KUyB7CnBhcmFtKCRJRSwgW1ZhbGlkYXRlTm90TnVsbG9yRW1wdHkoKV1bQWxpYXMoIkRhdGEiLCJ1cmwiLCJ2YWx1ZSIpXVtTdHJpbmddJEZ1bmN0aW9uLCBbU3dpdGNoXSRHZXRTcmMpDQoNCiAgICAkRnVuY3Rpb24gPSAkRnVuY3Rpb24udHJpbSgpO2lmICghJEZ1bmN0aW9uKSB7V3JpdGUtU2NyaXB0ICIhRW1wdHkgSmF2YXNjcmlwdCBpcyBwb2ludGxlc3MgdG8gSW5qZWN0ISI7cmV0dXJufQ0KICAgIGlmICgkRnVuY3Rpb24gLW1hdGNoICJeaHR0cHM/XDovLyhcdytcLil7MCwxfSIpIHskU291cmNlID0gInVybCJ9IGVsc2UgeyRTb3VyY2UgPSAiVGV4dCJ9DQogICAgaWYgKCRHZXRTcmMgLWFuZCAkU291cmNlIC1lcSAidXJsIikgeyRGdW5jdGlvbiA9IGlybSAkRnVuY3Rpb247JFNvdXJjZSA9ICJUZXh0In0NCiAgICAkSGVhZCA9IEAoJElFLmRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCJoZWFkIikpWzBdDQogICAgJFNjcmlwdCA9ICRJRS5kb2N1bWVudC5jcmVhdGVFbGVtZW50KCdzY3JpcHQnKQ0KICAgICRTY3JpcHQudHlwZSA9ICd0ZXh0L2phdmFzY3JpcHQnDQogICAgJFNjcmlwdC4kKGlmICgkU291cmNlIC1lcSAidXJsIikgeyJzcmMifSBlbHNlIHsidGV4dCJ9KSA9ICRGdW5jdGlvbg0KICAgICRIZWFkLmFwcGVuZENoaWxkKCRzY3JpcHQpID4gJE51bGwNCn0KCmZ1bmN0aW9uIENsZWFyLUxpbmUgewoNCiAgICAkTm0gPSAkSG9zdC5VSS5SYXdVSS5XaW5kb3dTaXplLldpZHRoLTENCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmUgIiQoKCJgYiIqJE5NKSsoIiAiKiROTSkrKCJgYiIqJE5NKSkiDQp9CgpmdW5jdGlvbiBMb2FkLUZvcm1zIHsKDQogICAgaWYgKCRGb3JtKSB7cmV0dXJufQ0KICAgIEFkZC1UeXBlIC1Bc3NlbWJseU5hbWUgU3lzdGVtLldpbmRvd3MuRm9ybXMNCiAgICAkU2NyaXB0OkZvcm0gPSBOZXctT2JqZWN0IHN5c3RlbS5XaW5kb3dzLkZvcm1zLkZvcm0NCiAgICAkRm9ybS5UZXh0ID0gIkVudGVyIElucHV0IGZvciBRdWVzdGlvbiI7JEZvcm0uU2l6ZSA9ICI1ODgsIDM3MiINCiAgICAkTGFiZWwgPSBOZXctT2JqZWN0IFN5c3RlbS5XaW5kb3dzLkZvcm1zLkxhYmVsOyRUZXh0ID0gTmV3LU9iamVjdCBTeXN0ZW0uV2luZG93cy5Gb3Jtcy5UZXh0Qm94OyRCVE4gPSBOZXctT2JqZWN0IFN5c3RlbS5XaW5kb3dzLkZvcm1zLkJ1dHRvbjskQlROLk5hbWUgPSAiZXhpdHMiOyRCVE4uVGV4dCA9ICJTdWJtaXQiDQogICAgJExhYmVsLlNpemUgPSAiNTUxLCAxMjciOyRUZXh0LlNpemUgPSAiNTQ4LCAxNTkiOyRMYWJlbC5Gb3JlQ29sb3IgPSAiU25vdyI7JEJUTi5hZGRfY2xpY2soeyRGb3JtLkNsb3NlKCl9KTskQlROLkxvY2F0aW9uID0gIjI0MSwgMzA0IjskQlROLlNpemUgPSAiNzUsIDIzIg0KICAgICRMYWJlbC5Mb2NhdGlvbiA9ICI5LCA5IjskVGV4dC5Mb2NhdGlvbiA9ICI5LCAxMzkiOyRMYWJlbC5hZGRfY2xpY2soe1RvLUNsaXBCb2FyZCAoJEZvcm0uQ29udHJvbHMuRmluZCgiUXVlc3Rpb24iLCR0cnVlKVswXS50ZXh0KX0pOyRUZXh0LmFkZF9jbGljayh7VG8tQ2xpcEJvYXJkICgkRm9ybS5Db250cm9scy5GaW5kKCJBbnN3ZXIiLCR0cnVlKVswXS50ZXh0KX0pDQogICAgJEZvcm0uTWluaW1pemVCb3ggPSAkRmFsc2U7JEZvcm0uTWF4aW1pemVCb3ggPSAkRmFsc2U7JEZvcm0uV2luZG93U3RhdGUgPSAiTm9ybWFsIg0KICAgICRGb3JtLlNob3dJblRhc2tiYXIgPSAkRmFsc2U7JEZvcm0uT3BhY2l0eSA9IDAuODskRm9ybS5TdGFydFBvc2l0aW9uID0gIkNlbnRlclNjcmVlbiI7JFRleHQuTWFyZ2luPSIzLCAzLCAzLCAzIg0KICAgICRGb3JtLkJhY2tDb2xvciA9ICJPcmFuZ2UiOyRGb3JtLkljb24gPSBbc3lzdGVtLmRyYXdpbmcuaWNvbl06OkV4dHJhY3RBc3NvY2lhdGVkSWNvbigiJFBTSE9NRVxwb3dlcnNoZWxsLmV4ZSIpDQogICAgJExhYmVsLkJhY2tDb2xvciA9ICJNYXJvb24iOyRUZXh0LkJhY2tDb2xvciA9ICJQYWxlR29sZGVucm9kIg0KICAgICRMYWJlbC5Gb250ID0gTmV3LU9iamVjdCBTeXN0ZW0uRHJhd2luZy5Gb250KCJNaWNyb3NvZnQgU2FucyBTZXJpZiIsMTIuMjUsW1N5c3RlbS5EcmF3aW5nLkZvbnRTdHlsZV06OnJlZ3VsYXIpDQogICAgJFRleHQuRm9udCA9IE5ldy1PYmplY3QgU3lzdGVtLkRyYXdpbmcuRm9udCgiTWljcm9zb2Z0IFNhbnMgU2VyaWYiLDExLFtTeXN0ZW0uRHJhd2luZy5Gb250U3R5bGVdOjpSZWd1bGFyKQ0KICAgICRMYWJlbC5UZXh0QWxpZ24gPSAiTWlkZGxlQ2VudGVyIjskQlROLm1hcmdpbj0iMywgMywgMywgMyI7JFRleHQuTXVsdGlMaW5lPSRUcnVlDQogICAgJGxhYmVsLk5hbWUgPSAiUXVlc3Rpb24iOyRUZXh0Lk5hbWUgPSAiQW5zd2VyIg0KICAgICRGb3JtLkNvbnRyb2xzLkFkZCgkTGFiZWwpOyRGb3JtLkNvbnRyb2xzLkFkZCgkVGV4dCk7JEZvcm0uQ29udHJvbHMuQWRkKCRCVE4pDQogICAgJEZvcm0uQWNjZXB0QnV0dG9uID0gJEJUTg0KfQoKZnVuY3Rpb24gTG9hZC1JbnRlcm5ldCB7CnBhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kSUUsIFtJbnRdJEludGVydmFsID0gNTApDQoNCiAgICBXaGlsZSAoJElFLkJ1c3kpIHsNCiAgICAgICAgU3RhcnQtU2xlZXAgLW0gJEludGVydmFsDQogICAgfQ0KfQoKZnVuY3Rpb24gV3JpdGUtQVAgewpwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ10kVGV4dCkNCg0KICAgICRhY2MgID0gQCgoJysnLCcyJyksKCctJywnMTInKSwoJyEnLCcxNCcpLCgnKicsJzMnKSkNCiAgICAkdGIgICA9ICcnOyRmdW5jICAgPSAkZmFsc2UNCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICd4JykgeyRmdW5jID0gJHRydWU7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICc+JykgeyR0YiArPSAiICAgICI7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICAkU2lnbiA9ICRUZXh0LmNoYXJzKDApDQogICAgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpLnJlcGxhY2UoJy94XCcsJycpLnJlcGxhY2UoJ1suXScsJ1tDdXJyZW50IERpcmVjdG9yeV0nKQ0KICAgICR2ZXJzID0gJGZhbHNlDQogICAgZm9yZWFjaCAoJGFyIGluICRhY2MpIHtpZiAoJGFyWzBdIC1lcSAkc2lnbikgeyR2ZXJzID0gJHRydWU7ICRjbHIgPSAkYXJbMV07ICRTaWduID0gIlske1NpZ259XSAifX0NCiAgICBpZiAoISR2ZXJzKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiRmdW5jIC1mICRjbHIgJHRiJFNpZ24kVGV4dA0KfQoKZnVuY3Rpb24gUHN3LVByb21wdCB7CnBhcmFtKFtBbGlhcygiUHJvbXB0IildW1N0cmluZ10kVGV4dCA9ICJFbnRlciBQYXNzd29yZCA6ICIsIFtTd2l0Y2hdJFNob3dNYXNrZWRQc3csIFtjaGFyXSRNYXNrPSLigKIiLCBbU3dpdGNoXSRGb3JjZVZhbGlkYXRpb24sIFtzY3JpcHRibG9ja10kVmFsaWRhdG9yPXszfSkNCg0KICAgIFdyaXRlLWhvc3QgLW5vbmV3bGluZSAkVGV4dA0KICAgICRSZVJlZ1ggPSAnW15ceDAxLVx4MDhceDEwLVx4ODBdKycjJ1teXHdcLl0nDQogICAgJFBzdyA9ICIiDQogICAgJEN2aXMgPSBbQ29uc29sZV06OkN1cnNvclZpc2libGUNCiAgICBbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkRmFsc2UNCiAgICBpZiAoISRTaG93TWFza2VkUHN3KSB7JFZhbGlkYXRvcj17M319DQogICAgJENvdW50ID0gMTskU2xlZXAgPSAwDQogICAgV2hpbGUgKCRUcnVlKSB7DQogICAgICAgIGlmICgkY291bnQgLWd0IDI1MCkgeyRTbGVlcCA9IDI1MH0NCiAgICAgICAgJFRlc3QgPSAmJFZhbGlkYXRvcg0KICAgICAgICBpZiAoJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlKSB7JFN0b3JlID0gJEhvc3QuVUkuUmF3VUkuUmVhZEtleSgiSW5jbHVkZUtleVVwLE5vRWNobyIpOyRDb3VudD0wOyRTbGVlcD0wfSBlbHNlIHskQ291bnQrKztTdGFydC1TbGVlcCAtbSAkU2xlZXA7Y29udGludWV9DQogICAgICAgIGlmIChLZXlQcmVzc2VkICJ+fkJhY2tTcGFjZX5+IiAkU3RvcmUpIHtpZiAoJHN0b3JlLkNvbnRyb2xLZXlTdGF0ZSAtbWF0Y2ggImN0cmwiKSB7JFBzdz0iIn0gZWxzZSB7JFBzdyA9ID86ICgkUHN3Lkxlbmd0aCAtZXEgMCl7IiJ9eyRQc3cuc3Vic3RyaW5nKDAsJFBzdy5MZW5ndGgtMSl9fX0NCiAgICAgICAgZWxzZWlmIChLZXlQcmVzc2VkICJ+flNwYWNlfn4iICRTdG9yZSkgeyRQc3cgKz0gIiAifQ0KICAgICAgICBlbHNlaWYgKEtleVByZXNzZWQgIn5+RXNjYXBlfn4iICRTdG9yZSkgeyRwc3c9IiI7YnJlYWt9DQogICAgICAgIGVsc2VpZiAoS2V5UHJlc3NlZCAifn5FTlRFUn5+IiAkU3RvcmUpIHtXcml0ZS1Ib3N0ICIiO2lmIChbaW50XSRUZXN0IC1uZSAzKSB7aWYgKCRUZXN0IC1vciAhJEZvcmNlVmFsaWRhdGlvbikge2JyZWFrfSBlbHNlIHtXcml0ZS1Ib3N0IC1mIFllbGxvdyAtTm9OZXdMaW5lICJNdXN0VHlwZSBpbiBhIHZhbGlkIFBhc3N3b3JkLi4uIjtzdGFydC1zbGVlcCAtcyAyO0NsZWFyLUxpbmU7W0NvbnNvbGVdOjpDdXJzb3JUb3AtPTF9fWVsc2V7YnJlYWt9fSBlbHNlIA0KICAgICAgICB7JFBzdyArPSAkU3RvcmUuQ2hhcmFjdGVyIC1yZXBsYWNlICgkUmVSZWdYLCcnKX0NCiAgICAgICAgaWYgKCRTaG93TWFza2VkUHN3KSB7DQogICAgICAgICAgICAkd3QgPSBbQ29uc29sZV06OkJ1ZmZlcldpZHRoIC0gJHRleHQubGVuZ3RoIC0gMQ0KICAgICAgICAgICAgJFRlc3QgPSAmJFZhbGlkYXRvcg0KICAgICAgICAgICAgW0NvbnNvbGVdOjpDdXJzb3JsZWZ0ID0gJHRleHQubGVuZ3RoDQogICAgICAgICAgICBpZiAoJHd0LSRQc3cuTGVuZ3RoIC1sdCAwKSB7JHRiPSIiOyR0dD0iJE1hc2siKigkd3QtMykrIi4uLiJ9IGVsc2UgeyR0Yj0iICIqKCR3dC0kUHN3Lkxlbmd0aCk7JHR0PSIkTWFzayIqJFBzdy5MZW5ndGh9DQogICAgICAgICAgICAkZmNvbCA9IFtjb25zb2xlXTo6Rm9yZWdyb3VuZENvbG9yDQogICAgICAgICAgICBpZiAoW2ludF0kVGVzdCAtbmUgMykgew0KICAgICAgICAgICAgICAgICRmQ29sID0gPzooJFRlc3QpIHsyfSB7InJlZCJ9DQogICAgICAgICAgICB9DQogICAgICAgICAgICBXcml0ZS1ob3N0IC1ub25ld2xpbmUgLWYgJGZDb2wgJHR0JHRiDQogICAgICAgIH0NCiAgICB9DQogICAgW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEN2aXMNCiAgICByZXR1cm4gJHBzdw0KfQoKZnVuY3Rpb24gSU4tQ29kZS1EZWJ1Zy1Db25zb2xlIHsKcGFyYW0oW0FsaWFzKCJDbWQiKV1bU3dpdGNoXSRET1MpDQoNCiAgICAkS3QgPSBbQ29uc29sZV06OkN1cnNvclRvcA0KICAgIHdoaWxlICgkVHJ1ZSkgew0KICAgICAgICAkQ29kZSA9IElucHV0LVByb21wdCAiRW50ZXIgQ29kZSB0byBFeGVjIFtUeXBlICdieWUnIHRvIHF1aXRdIDogIg0KICAgICAgICBpZiAoW1N0cmluZ106OklzTnVsbE9yV2hpdGVTcGFjZSgkQ29kZSkgLW9yICgkQ29kZSAtZXEgImJ5ZSIpKSB7YnJlYWt9DQogICAgICAgIGlmICgkRG9zKSB7JENvZGUgPSAiY21kIC9jICRDb2RlIn0NCiAgICAgICAgSW52b2tlLUV4cHJlc3Npb24gJENvZGUNCiAgICAgICAgJEt0ID0gW0NvbnNvbGVdOjpDdXJzb3JUb3ANCiAgICB9DQogICAgW0NvbnNvbGVdOjpDdXJzb3JMZWZ0ID0gMA0KICAgIFtDb25zb2xlXTo6Q3Vyc29yVG9wICA9ICRLdCsxDQp9Cg==")))
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
