# Localized	12/07/2019 11:51 AM (GMT)	303:6.40.20520 	MSFT_PackageManagement.strings.psd1
#########################################################################################
#
# Copyright (c) Microsoft Corporation.
#
#########################################################################################
ConvertFrom-StringData @'
###PSLOC
StartGetPackage=开始使用 PSModulePath {1} 调用 Get-package {0}。
PackageFound=已找到程序包“{0}”。
PackageNotFound=未找到程序包“{0}”。
MultiplePackagesFound=为程序包“{0}”找到多个程序包。
StartTestPackage=Test-TargetResource 正在使用 {0} 调用 Get-TargetResource。
InDesiredState=资源 {0} 处于所需状态。需要的确保是 {1}，实际确保是 {2}
NotInDesiredState=资源 {0} 未处于所需状态。需要的确保是 {1}，实际确保是 {2}
StartSetPackage=Set-TargetResource 正在使用 {0} 调用 Test-TargetResource。
InstallPackageInSet=正在使用 {0} 调用 Install-Package。
###PSLOC

'@

