# Localized	12/07/2019 11:57 AM (GMT)	303:6.40.20520 	PackageProvider.psd1
# Localized PackageProvider.psd1

ConvertFrom-StringData @'
###PSLOC
InvalidIdentifyingNumber=指定的 IdentifyingNumber ({0})不是有效的 Guid
InvalidPath=指定的 Path ({0})格式无效。有效格式包括本地路径、UNC 和 HTTP
InvalidNameOrId=指定的 Name ({0})和 IdentifyingNumber ({1})与 MSI 文件中的 Name ({2})和 IdentifyingNumber ({3})不匹配
NeedsMoreInfo=需要 Name 或 ProductId
InvalidBinaryType=指定的 Path ({0}) 似乎没有指定 EXE 或 MSI 文件，因此不受支持
CouldNotOpenLog=无法打开指定的 LogPath ({0})
CouldNotStartProcess=无法启动进程 {0}
UnexpectedReturnCode=返回代码 {0} 不是预期代码。配置有可能不正确
PathDoesNotExist=找不到给定的 Path ({0})
CouldNotOpenDestFile=无法打开要写入的文件 {0}
CouldNotGetHttpStream=无法获取文件 {1} 的 {0} 流
ErrorCopyingDataToFile=将 {0} 的内容写入 {1} 时遇到错误
PackageConfigurationComplete=已完成包配置
PackageConfigurationStarting=正在开始配置包
InstalledPackage=已安装的包
UninstalledPackage=已卸载的包
NoChangeRequired=发现包处于所需状态，无需任何操作
RemoveExistingLogFile=删除现有的日志文件
CreateLogFile=创建日志文件
MountSharePath=装载共享以获取媒体
DownloadHTTPFile=通过 HTTP 或 HTTPS 下载媒体
StartingProcessMessage=正在启动包含参数 {1} 的进程 {0}
RemoveDownloadedFile=删除下载的文件
PackageInstalled=已安装包
PackageUninstalled=已卸载包
MachineRequiresReboot=计算机需要重新启动
PackageDoesNotAppearInstalled=未安装程序包 {0}
PackageAppearsInstalled=程序包 {0} 已安装
PostValidationError=来自 {0} 的程序包已安装，但指定的 ProductId 和/或 Name 与程序包详细信息不匹配
ValidateStandardArgumentsPathwasPath=Validate-StandardArguments，路径为 {0}
TheurischemewasuriScheme=URI 方案为 {0}
ThepathextensionwaspathExt=路径扩展为 {0}
ParsingProductIdasanidentifyingNumber=正在将 {0} 作为 identifyingNumber 分析
ParsedProductIdasidentifyingNumber=已将 {0} 作为 {1} 分析
EnsureisEnsure=确保为 {0}
productisproduct=已找到产品 {0}
productasbooleanis=布尔型产品为 {0}
Creatingcachelocation=正在创建缓存位置
NeedtodownloadfilefromschemedestinationwillbedestName=需要从 {0} 下载文件，目标将为 {1}
Creatingthedestinationcachefile=正在创建目标缓存文件
Creatingtheschemestream=正在创建 {0} 流
Settingdefaultcredential=正在设置默认凭据
Settingauthenticationlevel=正在设置身份验证级别
Ignoringbadcertificates=正在忽略错误证书
Gettingtheschemeresponsestream=正在获取 {0} 响应流
ErrorOutString=错误: {0}
Copyingtheschemestreambytestothediskcache=正在将 {0} 流字节复制到磁盘缓存
Redirectingpackagepathtocachefilelocation=正在将包路径重定向到缓存文件位置
ThebinaryisanEXE=二进制文件为 EXE
Userhasrequestedloggingneedtoattacheventhandlerstotheprocess=用户已请求日志记录，需要将事件处理程序附加到进程
StartingwithstartInfoFileNamestartInfoArguments=正在使用 {1} 启动 {0}
###PSLOC

'@
