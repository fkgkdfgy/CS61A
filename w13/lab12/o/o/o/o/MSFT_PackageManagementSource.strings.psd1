# Localized	12/07/2019 11:52 AM (GMT)	303:6.40.20520 	MSFT_PackageManagementSource.strings.psd1
#########################################################################################
#
# Copyright (c) Microsoft Corporation.
#
#########################################################################################
ConvertFrom-StringData @'
###PSLOC
StartGetPackageSource=开始调用 Get-packageSource {0}
StartRegisterPackageSource=开始调用 Register-Packagesource {0}
StartUnRegisterPackageSource=开始调用 UnRegister-Packagesource {0}
PackageSourceFound=已找到程序包源“{0}”
PackageSourceNotFound=未找到程序包源“{0}”
RegisteredSuccess=已成功注册程序包源 {0}
UnRegisteredSuccess=已成功注销程序包源 {0}
RegisterFailed=无法注册程序包源 {0}。消息: {1}
UnRegisterFailed=无法注册程序包源 {0}。消息: {1}
InDesiredState=资源 {0} 处于所需状态。需要的确保是 {1}，实际确保是 {2}
NotInDesiredState=资源 {0} 未处于所需状态。需要的确保是 {1}，实际确保是 {2}
NotInDesiredStateDuetoLocationMismatch=资源 {0} 未处于所需状态。需要的位置是 {1}，注册的位置是 {2}
NotInDesiredStateDuetoPolicyMismatch=资源 {0} 未处于所需状态。需要的安装策略是 {1}，注册的安装策略是 {2}
InstallationPolicyWarning=开始使用“{2}”策略向源位置“{1}”注册“{0}”
###PSLOC

'@

