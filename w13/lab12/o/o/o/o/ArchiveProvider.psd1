# Localized	12/07/2019 11:48 AM (GMT)	303:6.40.20520 	ArchiveProvider.psd1
# Localized ArchiveProvider.psd1

ConvertFrom-StringData @'
###PSLOC
InvalidChecksumArgsMessage=如果没有请求内容验证(Validate 参数)，那么指定校验和就变得没有意义
InvalidDestinationDirectory=指定的目标目录 {0} 不存在或不是目录
InvalidSourcePath=指定的源文件 {0} 不存在或不是文件
InvalidNetSourcePath=指定的源文件 {0} 不是有效的网络源路径
ErrorOpeningExistingFile=打开磁盘上的文件 {0} 时发生错误。有关详细信息，请检查内部异常
ErrorOpeningArchiveFile=打开存档文件 {0} 时发生错误。有关详细信息，请检查内部异常
ItemExistsButIsWrongType=命名项({0})存在，但不是预期类型，而且未指定 Force
ItemExistsButIsIncorrect=已确定目标文件 {0} 与源文件不匹配，但是 Force 尚未指定。无法继续
ErrorCopyingToOutstream=将已存档文件复制到 {0} 时遇到错误
PackageUninstalled=已从目标 {1} 中删除 {0} 处的存档
PackageInstalled={0} 处的存档已解包到目标 {1}
ConfigurationStarted=正在开始配置 MSFT_ArchiveResource
ConfigurationFinished=已完成 MSFT_ArchiveResource 的配置
MakeDirectory=创建目录 {0}
RemoveFileAndRecreateAsDirectory=删除现有文件 {0} 并使用同名目录替换
RemoveFile=删除文件 {0}
RemoveDirectory=删除目录 {0}
UnzipFile=将存档文件解压缩到 {0}
DestMissingOrIncorrectTypeReason=目标文件 {0} 已缺失或不是文件
DestHasIncorrectHashvalue=目标文件 {0} 存在，但其校验和与源文件不匹配
DestShouldNotBeThereReason=目标文件 {0} 存在，但不应
UsingKeyToRetrieveHashValue=正在使用 {0} 检索哈希值
Nocachevaluefound=找不到缓存值
Cachevaluefoundreturning=找到缓存值，正在返回 {0}
CacheCorrupt=找到缓存，但无法加载。正在忽略缓存。
Usingtmpkeytosavehashvalue=正在使用 {0} {1} 保存哈希值
AbouttocachevalueInputObject=即将缓存值 {0}
InUpdateCache=位于 Update-Cache 中
AddingentryFullNameasacacheentry=正在将 {0} 添加为缓存条目
UpdatingCacheObject=正在更新 CacheObject
Placednewcacheentry=已放置新缓存条目
NormalizeChecksumreturningChecksum=Normalize-Checksum 正在返回 {0}
PathPathisalreadyaccessiableNomountneeded.=路径 {0} 已可访问。不需要装载。
Pathpathisnotavalidatenetpath=路径 {0} 不是验证网络路径。
createpsdrivewithPathpath=使用路径 {0} 创建 psdrive...
CannotaccessPathPathwithgivenCredential=无法使用给定凭据访问路径 {0}
Abouttovalidatestandardarguments=即将验证标准参数
Goingforcacheentries=正在获取缓存条目
Thecachewasuptodateusingcachetosatisfyrequests=缓存是最新的，正在使用缓存满足请求
Abouttoopenthezipfile=即将打开 zip 文件
Cacheupdatedwithentries=已使用 {0} 条目更新缓存
Processing=正在处理 {0}
InTestTargetResourcedestexistsnotusingchecksumscontinuing=在 Test-TargetResource 中: {0} 存在，没有使用校验和，正在继续
Notperformingchecksumthefileondiskhasthesamewritetimeasthelasttimeweverifieditscontents=没有执行校验和，磁盘上的文件的写入时间与我们上次验证其内容的时间相同
destexistsandthehashmatcheseven={0} 存在并且哈希匹配，虽然 LastModifiedTime 不匹配。正在更新缓存
InTestTargetResourcedestexistsandtheselectedtimestampChecksummatched=在 Test-TargetResource 中: {0} 存在，并且所选的时间戳 {1} 已匹配
RemovePSDriveonRootpsdriveRoot=删除根目录 {0} 中的 PSDrive
RemovingDir=正在删除 {0}
Hashesofexistingandzipfilesmatchremoving=现有文件和 zip 文件的哈希匹配，正在删除
HashdidnotmatchfilehasbeenmodifiedsinceitwasextractedLeaving=哈希不匹配，文件自解压缩后已修改。正在离开
InSetTargetResourceexistsselectedtimestampmatched=在 Set-TargetResource 中: {0} 存在，并且所选的时间戳 {1} 已匹配，正在删除
InSetTargetResourceexistsdtheselectedtimestampnotmatchg=在 Set-TargetResource 中: {0} 存在，并且所选的时间戳 {1} 不匹配，正在离开
existingappearstobeanemptydirectoryRemovingit={0} 似乎为空目录。正在删除它
LastWriteTimemtcheswhatwehaverecordnotreexaminingchecksum={0} 的 LastWriteTime 与我们的记录内容匹配，不重新检查 {1}
FoundfatdestwheregoingtoplaceoneandhashmatchedContinuing=在我们要放置文件的 {0} 处找到文件，并且哈希已匹配。正在继续
FoundfileatdestwhereweweregoingtoplaceoneandhashdidntmatchItwillbeoverwritten=在我们要放置文件的 $dest 处找到文件，并且哈希不匹配。它将被覆盖
FoundfileatdestwhereweweregoingtoplaceoneanddoesnotmatchthesourcebutForcewasnotspecifiedErroring=在我们要放置文件的 {0} 处找到文件，与源不匹配，但未指定 Force。出错
InSetTargetResourcedestexistsandtheselectedtimestamp$ChecksumdidnotmatchForcewasspecifiedwewilloverwrite="在 Set-TargetResource 中: {0} 存在，并且所选的时间戳 {1} 不匹配。已指定 Force，我们将覆盖
FoundafileatdestandtimestampChecksumdoesnotmatchthesourcebutForcewasnotspecifiedErroring=在 {0} 处找到文件，并且时间戳 {1} 与源不匹配，但未指定 Force。出错
FoundadirectoryatdestwhereafileshouldbeRemoving=在文件应在的 {0} 处找到目录。正在删除
FounddirectoryatdestwhereafileshouldbeandForcewasnotspecifiedErroring=在文件应在的 {0} 处找到目录，未指定 Force。出错
Writingtofiledest=正在写入文件 {0}
RemovePSDriveonRootdriveRoot=删除根目录 {0} 中的 PSDrive
Updatingcache=正在更新缓存
FolderDirdoesnotexist=文件夹 {0} 不存在
Examiningdirectorytoseeifitshouldberemoved=正在检查 {0} 以确定是否应将其删除
InSetTargetResourcedestexistsandtheselectedtimestampChecksummatchedwillleaveit=在 Set-TargetResource 中: {0} 存在，并且所选的时间戳 {1} 已匹配，将离开它
###PSLOC

'@
