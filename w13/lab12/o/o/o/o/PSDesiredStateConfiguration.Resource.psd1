# Localized	12/07/2019 11:57 AM (GMT)	303:6.40.20520 	PSDesiredStateConfiguration.Resource.psd1
# Localized	04/21/2015 09:07 AM (GMT)	303:4.80.0411 	PSDesiredStateConfiguration.Resource.psd1
# Localized PSDesiredStateConfigurationResource.psd1

ConvertFrom-StringData @'
###PSLOC
CheckSumFileExists=文件“{0}”已存在。请指定 -Force 参数以覆盖现有的校验和文件。
CreateChecksumFile=创建校验和文件“{0}”
OverwriteChecksumFile=覆盖校验和文件“{0}”
OutpathConflict=(错误)无法创建目录“{0}”。同名的文件已存在。
InvalidConfigPath=(错误)指定的配置路径“{0}”无效。
InvalidOutpath=(错误)指定的 OutPath“{0}”无效。
InvalidConfigurationName=指定了无效的配置名称“{0}”。标准名称只能包含字母(a-z、A-Z)、数字(0-9)、句点(.)、连字符(-)和下划线(_)。该名称不能为 null 或为空，并且应以字母开头。
NoValidConfigFileFound=找不到有效的配置文件(mof、zip)。
InputFileNotExist=文件 {0} 不存在。
FileReadError=在读取文件 {0} 时出错。
MatchingFileNotFound=找不到匹配的文件。
CertificateFileReadError=在读取证书文件 {0} 时出错。
CertificateStoreReadError=读取 {0} 的证书存储时出错。
CannotCreateOutputPath=配置名称和输出路径组合无效: {0}。请确保输出参数是有效的路径段。
ConflictingDuplicateResource=在节点“{2}”中的资源“{0}”与“{1}”之间检测到冲突。资源具有相同的键属性，但以下非键属性存在差异:“{3}”。值“{4}”与值“{5}”不匹配。请更新这些属性值，使它们在两种情况下都相同。
ConfiguratonDataNeedAllNodes=ConfigurationData 参数必须具有属性 AllNodes。
ConfiguratonDataAllNodesNeedHashtable=ConfigurationData 参数的属性 AllNodes 必须是集合。
AllNodeNeedToBeHashtable=AllNodes 的所有元素必须为哈希表，并且具有属性 "NodeName"。
DuplicatedNodeInConfigurationData=传入的 configurationData 中存在重复的 NodeNames“{0}”。
EncryptedToPlaintextNotAllowed=不建议将加密的密码转换和存储为纯文本。有关在 MOF 文件中保护凭据的详细信息，请参考 MSDN 博客: https://go.microsoft.com/fwlink/?LinkId=393729
DomainCredentialNotAllowed=不推荐使用节点“{0}”的域凭据。若要取消此警告，你可以将名为 'PSDscAllowDomainUser' 且值为 $true 的属性添加到节点“{0}”的 DSC 配置数据。
NestedNodeNotAllowed=不允许在当前节点“{1}”的内部定义节点“{0}”，因为节点定义不能嵌套。请将节点“{0}”的定义移到配置“{2}”的顶层。
FailToProcessNode=处理节点“{0}”时引发了异常: {1}
LocalHostNodeNotAllowed=不允许在配置“{0}”中定义 "localhost" 节点，因为该配置已包含一个或多个未与任何节点关联的资源定义。
InvalidMOFDefinition=节点“{0}”的 MOF 定义无效: {1}
RequiredResourceNotFound=“{1}”所需的资源“{0}”不存在。请确保所需资源存在，并且名称的格式是正确的。
ReferencedManagerNotFound=“{1}”引用的下载管理器“{0}”不存在。请确保引用的下载管理器存在，并且名称采用了正确的格式。
ReferencedResourceSourceNotFound=“{1}”所引用的资源存储库“{0}”不存在。请确保引用的资源存储库存在，并且名称格式正确。
DependsOnLinkTooDeep=DependsOn 链接已超过最大深度限制“{0}”。
DependsOnLoopDetected=循环 DependsOn 存在“{0}”。请确保没有循环引用。
FailToProcessConfiguration=处理配置“{0}”时出现编译错误。请查看错误流中报告的错误，并相应地修改配置代码。
FailToProcessProperty=处理类型为“{2}”的属性“{1}”时出现 {0} 错误: {3}
NodeNameIsRequired=由于节点名称为空，跳过节点处理。
ConvertValueToPropertyFailed=无法将“{0}”转换为属性“{2}”的类型“{1}”。
ResourceNotFound=无法将词“{0}”识别为 {1} 的名称。
GetDscResourceInputName=Get-DscResource 输入“{0}”的参数值为“{1}”。
ResourceNotMatched=正在跳过资源“{0}”，因为它与所请求的名称不匹配。
InitializingClassCache=正在初始化类缓存
LoadingDefaultCimKeywords=正在加载默认的 CIM 关键字
GettingModuleList=正在获取模块列表
CreatingResourceList=正在创建资源列表
CreatingResource=正在创建资源“{0}”。
SchemaFileForResource=资源 {0} 的架构文件名
UnsupportedReservedKeyword=此语言版本不支持“{0}”关键字。
UnsupportedReservedProperty=此语言版本不支持“{0}”属性。
MetaConfigurationHasMoreThanOneLocalConfigurationManager=节点“{0}”的元配置包含 LocalConfigurationManager 的多个定义，这是不允许的情况。
MetaConfigurationSettingsMissing=节点“{0}”的设置定义丢失。已为该节点添加默认的空设置。
ConflictInExclusiveResources=部分配置“{0}”和“{1}”包含存在冲突的独占资源声明。
ReferencedModuleNotExist=计算机上不存在引用的模块“{0}”。请使用 Get-DscResource 找出计算机上存在哪些模块。
ReferencedResourceNotExist=计算机上不存在引用的资源“{0}”。请使用 Get-DscResource 找出计算机上存在哪些资源。
ReferencedModuleResourceNotExist=计算机上不存在引用的模块\\资源“{0}”。请使用 Get-DscResource 找出计算机上存在哪些模块\\资源。
DuplicatedResourceInModules=引用的资源“{0}”存在于计算机上的模块 {1} 和模块 {2} 中。请确保它只存在于一个模块中。
CannotConvertStringToBool=无法将值 "System.String" 转换为类型 "System.Boolean"。Boolean 参数仅接受布尔值和数字，例如 $True、$False、1 或 0。
NoModulesPresent=具有给定模块规范的系统中不存在模块。
ImportDscResourceWarningForInbuiltResource=配置“{0}”正在加载一个或多个内置资源，但没有显式导入关联模块。请将 Import-DscResource –ModuleName "PSDesiredStateConfiguration" 添加到你的配置，以避免出现此消息。
PasswordTooLong=在节点“{0}”中对密码加密时出现错误。很可能是因为输入的密码太长，无法使用所选证书加密。请使用较短的密码，或者选择使用较大密钥的证书。
HashtableElementTypeNotAllowed=不允许在哈希表中使用“{0}”类型的值。支持的类型: [String]、[Char]、[Int64]、[UInt64]、[Double]、[Bool]、[DateTime] 和 [ScriptBlock]。
PullModeWithoutDownloadManager=元配置已设为拉模式，这需要指定 DownloadManager。
PullModeWithoutConfigurationRepository=元配置已设为拉模式，这需要指定 ConfigurationRepository。
DownloadManagerWithoutPullMode=指定 DownloadManager 时未将刷新模式设为 PULL。
ConfigurationRepositoryWithoutPullMode=指定 ConfigurationRepository 时未将刷新模式设为 PULL。
ReferencedPolicyNotDefined=未定义引用的 SignatureValidationPolicy“{0}”。请使用同一名称定义 SignatureValidation 块。
IncorrectSignatureValidationPolicyFormat=为 SignatureValidationPolicy 提供的值格式不正确。请以“[SignatureValidation]<名称>”的形式提供其值。
###PSLOC
'@
