# Localized	12/07/2019 11:50 AM (GMT)	303:6.40.20520 	MSFT_GroupResource.strings.psd1
# Localized resources for MSFT_GroupResource

ConvertFrom-StringData @'
###PSLOC
GroupWithName=组: {0}
RemoveOperation=删除
AddOperation=添加
SetOperation=设置
GroupCreated=已成功创建组 {0}。
GroupUpdated=已成功更新组 {0} 属性。
GroupRemoved=已成功删除组 {0}。
NoConfigurationRequired=组 {0} 在此节点上已存在并包含所需属性。无需任何操作。
NoConfigurationRequiredGroupDoesNotExist=组 {0} 在此节点上不存在。无需任何操作。
CouldNotFindPrincipal=找不到具有提供名称 [{0}] 的主体
MembersAndIncludeExcludeConflict={0} 与 {1} 和/或 {2} 参数冲突。不应以任何形式结合 {1} 和 {2} 参数使用 {0} 参数。
MembersIsNull=Members 参数值为 Null。如果未提供 {1} 和 {2}，则必须提供 {0} 参数。
MembersIsEmpty=Members 参数为空。必须至少提供一个组成员。
MemberNotValid=组成员不存在或无法解析: {0}。
IncludeAndExcludeConflict=主体 {0} 包含在 {1} 和 {2} 参数值中。同一主体不能同时包含在 {1} 和 {2} 参数值中。
IncludeAndExcludeAreEmpty=MembersToInclude 和 MembersToExclude 为 null 或为空。在这两个参数之一中必须至少指定一个成员
InvalidGroupName=不能使用名称 {0}。名称不能完全由句点和/或空格组成，也不能包含以下字符: {1}
GroupExists=名为 {0} 的组已存在。
GroupDoesNotExist=名为 {0} 的组不存在。
PropertyMismatch={0} 属性的值应为 {1}，但它为 {2}。
MembersNumberMismatch=属性 {0}。提供的唯一组成员数 {1} 与实际的组成员数 {2} 不同。
MembersMemberMismatch=提供的 {1} 参数至少有一个成员 {0} 在现有组 {2} 中没有匹配项。
MemberToExcludeMatch=提供的 {1} 参数至少有一个成员 {0} 在现有组 {2} 中有匹配项。
ResolvingLocalAccount=正在将 {0} 解析为本地帐户。
ResolvingDomainAccount=正在 {1} 域中解析 {0}。
ResolvingDomainAccountWithTrust=正在使用域信任解析 {0}。
DomainCredentialsRequired=需要凭据才能解析域帐户 {0}。
UnableToResolveAccount=无法解析帐户“{0}”。已失败，消息为: {1} (错误代码={2})
###PSLOC

'@
