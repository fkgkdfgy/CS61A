# Localized	12/07/2019 11:57 AM (GMT)	303:6.40.20520 	MSFT_ScriptResourceStrings.psd1
# Localized MSFT_ScriptResourceStrings.psd1

ConvertFrom-StringData @'
###PSLOC
SetScriptWhatIfMessage=正在通过用户提供的凭据执行 SetScript
InValidResultFromGetScriptError=无法从哈希表格式的脚本中获取结果。
InValidResultFromTestScriptError=无法获取有效的 TestScript 执行结果。该测试脚本应返回 True 或 False。
ScriptBlockProviderScriptExecutionFailureError=无法成功执行脚本。
GetTargetResourceStartVerboseMessage=开始执行 Get 脚本。
GetTargetResourceEndVerboseMessage=结束执行 Get 脚本。
SetTargetResourceStartVerboseMessage=开始执行 Set 脚本。
SetTargetResourceEndVerboseMessage=结束执行 Set 脚本。
TestTargetResourceStartVerboseMessage=开始执行 Test 脚本。
TestTargetResourceEndVerboseMessage=结束执行 Test 脚本。
ExecutingScriptMessage=正在执行脚本: {0}
ResourceNotAllowedWhenDeviceGuardIsEnabled=Device Guard 启用时，"PSDesiredStateConfiguration" 模块中的 "Script" 资源不受支持。请使用 PowerShell 库中 PSDscResources 模块发布的 "Script" 资源。
WarningRunningScriptResourceInFullLanguageMode=由于 Device Guard 在 "Audit" 模式下启用，正在以 FullLanguage 模式运行 "Script" 资源。
###PSLOC

'@
