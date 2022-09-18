# Localized	12/07/2019 11:57 AM (GMT)	303:6.40.20520 	MSFT_ServiceResource.strings.psd1
# Localized resources for MSFT_UserResource

ConvertFrom-StringData @'
###PSLOC
ServiceNotFound=找不到服务“{0}”。
CannotStartAndDisable=无法启动和禁用服务。
CannotStopServiceSetToStartAutomatically=无法停止服务并将其设置为自动启动。
ServiceAlreadyStarted=已启动服务“{0}”，无需任何操作。
ServiceStarted=已启动服务“{0}”。
ServiceStopped=服务“{0}”已停止。
ErrorStartingService=无法启动服务“{0}”。请检查为服务提供的路径“{1}”。消息:“{2}”
OnlyOneParameterCanBeSpecified=只能指定以下参数之一:“{0}”，“{1}”。
StartServiceWhatIf=启动服务
ServiceAlreadyStopped=服务“{0}”已停止，无需任何操作。
ErrorStoppingService=无法停止服务“{0}”。消息:“{1}”
ErrorRetrievingServiceInformation=无法检索服务“{0}”的信息。消息:“{1}”
ErrorSettingServiceCredential=为服务“{0}”设置凭据时失败。消息:“{1}”
SetCredentialWhatIf=设置凭据
SetStartupTypeWhatIf=设置启动类型
ErrorSettingServiceStartupType=无法设置服务“{0}”的启动类型。消息:“{1}”
TestUserNameMismatch=服务“{0}”的用户名为“{1}”，不匹配“{2}”。
TestStartupTypeMismatch=服务“{0}”的启动类型为“{1}”，不匹配“{2}”。
MethodFailed=“{1}”的“{0}”方法失败，错误代码为“{2}”。
ErrorChangingProperty=无法更改“{0}”属性。消息:“{1}”
ErrorSetingLogOnAsServiceRightsForUser=为“{0}”授予以服务身份登录权限时出错。消息:“{1}”。
CannotOpenPolicyErrorMessage=无法打开策略管理器
UserNameTooLongErrorMessage=用户名太长
CannotLookupNamesErrorMessage=无法查找用户名
CannotOpenAccountErrorMessage=无法为用户打开策略
CannotCreateAccountAccessErrorMessage=无法为用户创建策略
CannotGetAccountAccessErrorMessage=无法获取用户策略权限
CannotSetAccountAccessErrorMessage=无法设置用户策略权限
BinaryPathNotSpecified=在尝试创建新服务时指定可执行文件的路径
ServiceAlreadyExists=要创建的服务“{0}”已存在
ServiceExistsSamePath=要创建的服务“{0}”已存在，其路径为“{1}”
ServiceNotExists=服务“{0}”不存在。请指定可执行文件的路径以创建新服务
ErrorDeletingService=删除服务“{0}”时出错
ServiceDeletedSuccessfully=已成功删除服务“{0}”
TryDeleteAgain=请等待 2 秒以删除服务
WritePropertiesIgnored=服务“{0}”已存在。将忽略现有服务的 Status、DisplayName、Description、Dependencies 等写入属性。
###PSLOC

'@

