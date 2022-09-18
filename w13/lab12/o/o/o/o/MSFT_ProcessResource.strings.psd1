# Localized	12/07/2019 11:57 AM (GMT)	303:6.40.20520 	MSFT_ProcessResource.strings.psd1
# Localized resources for MSFT_UserResource

ConvertFrom-StringData @'
###PSLOC
FileNotFound=环境路径中找不到文件。
AbsolutePathOrFileName=绝对路径或预期文件名。
InvalidArgument=值为“{1}”的参数“{0}”无效。
InvalidArgumentAndMessage={0} {1}
ProcessStarted=已启动匹配路径“{0}”的进程
ProcessesStopped=已停止 ID 为“({1})”且匹配路径“{0}”的进程。
ProcessAlreadyStarted=发现匹配路径“{0}”的进程正在运行，无需任何操作。
ProcessAlreadyStopped=发现匹配路径“{0}”的进程未运行，无需任何操作。
ErrorStopping=无法停止 ID 为“({1})”且匹配路径“{0}”的进程。消息: {2}。
ErrorStarting=无法启动匹配路径“{0}”的进程。消息: {1}。
StartingProcessWhatif=启动进程
ProcessNotFound=找不到匹配路径“{0}”的进程
PathShouldBeAbsolute=路径应为绝对路径
PathShouldExist=该路径应该存在
ParameterShouldNotBeSpecified=不应指定参数 {0}。
FailureWaitingForProcessesToStart=无法等待进程启动
FailureWaitingForProcessesToStop=无法等待进程停止
ErrorParametersNotSupportedWithCredential=尝试在用户上下文中运行进程时无法指定 StandardOutputPath、StandardInputPath 或 WorkingDirectory。
VerboseInProcessHandle=在进程句柄 {0} 中
ErrorInvalidUserName=UserName {0} 无效。
ErrorRunAsCredentialParameterNotSupported=PsDscRunAsCredential 参数不受进程资源支持。若要通过用户“{0}”来启动进程，请添加 Credential 参数。
ErrorCredentialParameterNotSupportedWithRunAsCredential=PsDscRunAsCredential 参数不受进程资源支持，因此不能与 Credential 参数一起使用。若要通过用户“{0}”来启动进程，请仅使用 Credential 参数，而不要使用 PsDscRunAsCredential 参数。
###PSLOC
'@
