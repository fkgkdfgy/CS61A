# Localized	12/07/2019 11:57 AM (GMT)	303:6.40.20520 	MSFT_UserResource.strings.psd1
# Localized resources for MSFT_UserResource

ConvertFrom-StringData @'
###PSLOC
UserWithName=用户: {0}
RemoveOperation=删除
AddOperation=添加
SetOperation=设置
ConfigurationStarted=已开始配置用户 {0}。
ConfigurationCompleted=已成功完成用户 {0} 的配置。
UserCreated=已成功创建用户 {0}。
UserUpdated=已成功更新用户 {0} 属性。
UserRemoved=已成功删除用户 {0}。
NoConfigurationRequired=用户 {0} 在此节点上已存在并包含所需属性。无需任何操作。
NoConfigurationRequiredUserDoesNotExist=用户 {0} 在此节点上不存在。无需任何操作。
InvalidUserName=无法使用名称 {0}。名称不能完全由句点和/或空格组成，也不能包含以下字符: {1}
UserExists=名为 {0} 的用户已存在。
UserDoesNotExist=名为 {0} 的用户不存在。
PropertyMismatch={0} 属性的值应为 {1}，但它为 {2}。
PasswordPropertyMismatch={0} 属性的值不匹配。
AllUserPropertisMatch=所有 {0} 的 {1} 属性均匹配。
ConnectionError=尝试使用 System.DirectoryServices API 时可能发生了连接错误。
MultipleMatches=尝试使用 System.DirectoryServices API 时可能发生了多匹配异常。
###PSLOC

'@
