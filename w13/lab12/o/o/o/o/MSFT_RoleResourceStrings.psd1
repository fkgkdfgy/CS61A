# Localized	12/07/2019 11:57 AM (GMT)	303:6.40.20520 	MSFT_RoleResourceStrings.psd1
# Localized MSFT_RoleResource.psd1

ConvertFrom-StringData @'
###PSLOC
SetTargetResourceInstallwhatIfMessage=正在尝试安装功能 {0}
SetTargetResourceUnInstallwhatIfMessage=正在尝试卸载功能 {0}
FeatureNotFoundError=目标计算机上找不到请求的功能 {0}。
FeatureDiscoveryFailureError=无法从目标计算机获取请求的功能 {0} 信息。功能名称不支持通配符模式。
FeatureInstallationFailureError=无法成功安装功能 {0}。
FeatureUnInstallationFailureError=无法成功卸载功能 {0}。
QueryFeature=正在使用服务器管理器 cmdlet Get-WindowsFeature 查询功能 {0}。
InstallFeature=正在尝试使用服务器管理器 cmdlet Add-WindowsFeature 安装功能 {0}。
UninstallFeature=正在尝试使用服务器管理器 cmdlet Remove-WindowsFeature 卸载功能 {0}。
RestartNeeded=需要重新启动目标计算机。
GetTargetResourceStartVerboseMessage=开始在 {0} 功能上执行 Get 功能。
GetTargetResourceEndVerboseMessage=结束在 {0} 功能上执行 Get 功能。
SetTargetResourceStartVerboseMessage=开始在 {0} 功能上执行 Set 功能。
SetTargetResourceEndVerboseMessage=结束在 {0} 功能上执行 Set 功能。
TestTargetResourceStartVerboseMessage=开始在 {0} 功能上执行 Test 功能。
TestTargetResourceEndVerboseMessage=结束在 {0} 功能上执行 Test 功能。
ServerManagerModuleNotFoundDebugMessage=ServerManager 模块未安装在计算机上。
SkuNotSupported=仅在服务器 SKU 上支持使用 PowerShell Desired State Configuration 安装角色和功能。客户端 SKU 上不支持。
SourcePropertyNotSupportedDebugMessage=此操作系统不支持 MSFT_RoleResource 中的 Source 属性，将忽略该属性。
EnableServerManagerPSHCmdletsFeature=Windows Server 2008R2 核心操作系统检测到: ServerManager-PSH-Cmdlets 功能已启用。
UninstallSuccess=已成功卸载功能 {0}。
InstallSuccess=已成功安装功能 {0}。
###PSLOC

'@
