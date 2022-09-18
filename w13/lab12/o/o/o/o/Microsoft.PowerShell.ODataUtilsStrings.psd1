# Localized	12/07/2019 11:50 AM (GMT)	303:6.40.20520 	Microsoft.PowerShell.ODataUtilsStrings.psd1
# Localized PSODataUtils.psd1

ConvertFrom-StringData @'
###PSLOC
SelectedAdapter=使用点“.”获得“{0}”的来源。
ArchitectureNotSupported=你的处理器体系结构({0})不支持此模块。
ArguementNullError=无法生成代理，因为“{0}”在“{1}”中指向 $null。
EmptyMetadata=Read 元数据为空。URL: {0}。
InvalidEndpointAddress=终结点地址({0})无效。在访问此终结点地址时，获得了状态代码为“{1}”的 Web 响应。
NoEntitySets=来自 URI“{0}”的元数据不包含实体集。将不写入任何输出。
NoEntityTypes=来自 URI“{0}”的元数据不包含实体类型。将不写入任何输出。
MetadataUriDoesNotExist=在 URI“{0}”中指定的元数据不存在。将不写入任何输出。
InValidIdentifierInMetadata=在 URI“{0}”上指定的元数据包含无效的标识符“{1}”。在创建代理的过程中，仅有效的 C# 标识符在生成的复杂类型中受支持。
InValidMetadata=无法处理 URI“{0}”中指定的元数据。将不写入任何输出。
InValidXmlInMetadata=在 URI“{0}”中指定的元数据包含无效的 XML。没有要写入的输出。
ODataVersionNotFound=在 URI“{0}”中指定的元数据不包含 OData 版本。没有要写入的输出。
ODataVersionNotSupported=在位于 URI“{1}”处的元数据中指定的 OData 版本“{0}”不受支持。在生成代理的过程中，仅“{2}”和“{3}”之间的 OData 版本受“{4}”支持。没有要写入的输出。
InValidSchemaNamespace=在 URI“{0}”处指定的元数据无效。 架构中的 Namespace 属性不支持 NULL 或空值。
InValidSchemaNamespaceConflictWithClassName=在 URI“{0}”处指定的元数据包含无效的命名空间 {1} 名称，该名称与另一个类型名称冲突。为了避免编译错误，{1} 将更改为 {2}。
InValidSchemaNamespaceContainsInvalidChars=在 URI“{0}”处指定的元数据包含无效的命名空间 {1} 名称，该名称包含点号与数字的组合，这在 .Net 中是不允许的。为了避免编译错误，{1} 将更改为 {2}。
InValidUri=URI“{0}”无效。将不写入任何输出。
RedfishNotEnabled=此 Microsoft.PowerShell.ODataUtils 版本不支持 Redfish，请运行 "update-module Microsoft.PowerShell.ODataUtils" 以获取 Redfish 支持。
EntitySetUndefinedType=来自 URI“{0}”的元数据不包含实体集“{1}”的类型。将不写入任何输出。
XmlWriterInitializationError=启动用于写入 {0} CDXML 模块的 XmlWriter 时出错。
EmptySchema=Edmx.DataServices.Schema 节点不应为 null。
VerboseReadingMetadata=正在从 URI {0} 读取元数据。
VerboseParsingMetadata=正在解析元数据...
VerboseVerifyingMetadata=正在验证元数据...
VerboseSavingModule=正在将输出模块保存到路径 {0}。
VerboseSavedCDXML=已将 {0} 的 CDXML 模块保存到 {1}。
VerboseSavedServiceActions=已将服务操作 CDXML 模块保存到 {0}。
VerboseSavedModuleManifest=已在 {0} 位置保存模块清单。
AssociationNotFound=在 Metadata.Associations 中找不到关联 {0}。
TooManyMatchingAssociationTypes=已在 Metadata.Associations 中找到 {0} 个 {1} 关联。应该只有一个。
ZeroMatchingAssociationTypes=在关联 {1} 中找不到导航属性 {0}。
WrongCountEntitySet=EntityType {0} 应该只有一个 EntitySet，但获得了 {1} 个。
EntityNameConflictError=将多个 EntitySets 映射到同一 EntityType 时，不支持创建代理。位于 URI“{0}”中的元数据包含映射到同一 EntityType“{3}”的 EntitySets“{1}”和“{2}”。
VerboseSavedTypeDefinationModule=已在“{1}”位置保存类型定义模块“{0}”。
VerboseAddingTypeDefinationToGeneratedModule=正在将“{0}”的类型定义添加到“{1}”模块。
OutputPathNotFound=找不到路径“{0}”的某个部分。
ModuleAlreadyExistsAndForceParameterIsNotSpecified=目录“{0}”已存在。如果要覆盖该目录以及其中的文件，请使用 -Force 参数。
InvalidOutputModulePath=为 -OutputModule 参数指定的路径“{0}”不包含模块名称。
OutputModulePathIsNotUnique=为 -OutputModule 参数指定的路径“{0}”可解析为文件系统中的多个路径。请为 -OutputModule 参数提供唯一的文件系统路径。
OutputModulePathIsNotFileSystemPath=为 -OutputModule 参数指定的路径“{0}”不是文件系统。请为 -OutputModule 参数提供唯一的文件系统路径。
SkipEntitySetProxyCreation=已跳过实体集“{0}”的 CDXML 模块创建，因为其实体类型“{1}”包含的属性“{2}”与生成的 cmdlet 的一个默认属性冲突。
EntitySetProxyCreationWithWarning=实体集“{0}”的 CDXML 模块创建成功，但其在实体类型“{2}”中的属性“{1}”与生成的 cmdlet 的一个默认属性冲突。
SkipEntitySetConflictCommandCreation=已跳过实体集“{0}”的 CDXML 模块创建，因为导出的命令“{1}”与 inbox 命令冲突。
EntitySetConflictCommandCreationWithWarning=实体集“{0}”的 CDXML 模块创建成功，但其中包含的命令“{1}”与 inbox 命令冲突。
SkipConflictServiceActionCommandCreation=已跳过服务操作“{0}”的 CDXML 模块创建，因为导出的命令“{1}”与 inbox 命令冲突。
ConflictServiceActionCommandCreationWithWarning=服务操作“{0}”的 CDXML 模块创建成功，但其中包含的命令“{1}”与 inbox 命令冲突。
AllowUnsecureConnectionMessage=cmdlet“{0}”正在尝试通过 URI“{1}”与 OData 终结点建立不安全的连接。请为 -{2} 参数提供安全的 URI 或使用 -AllowUnsecureConnection 开关参数(如果你打算使用当前的 URI)。
ProgressBarMessage=正在 URI“{0}”中为 OData 终结点创建代理。
###PSLOC

'@
