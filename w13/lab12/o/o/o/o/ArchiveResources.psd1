# Localized	12/07/2019 11:50 AM (GMT)	303:6.40.20520 	ArchiveResources.psd1
# Localized ArchiveResources.psd1

ConvertFrom-StringData @'
###PSLOC
PathNotFoundError=路径“{0}”不存在，或者不是有效的文件系统路径。
ExpandArchiveInValidDestinationPath=路径“{0}”不是有效的文件系统目录路径。
InvalidZipFileExtensionError={0} 不是支持的存档文件格式。只有 {1} 才是支持的存档文件格式。
ArchiveFileIsReadOnly=存档文件 {0} 的属性已设置为“ReadOnly”，因此无法对其进行更新。如果你想要更新现有的存档文件，请删除该存档文件的“ReadOnly”属性，或者使用 -Force 参数进行覆盖并创建新的存档文件。
ZipFileExistError=存档文件 {0} 已存在。请使用 -Update 参数来更新现有的存档文件，或者使用 -Force 参数来覆盖现有的存档文件。
DuplicatePathFoundError={0} 参数的输入包含重复路径“{1}”。请提供一组唯一的路径作为 {2} 参数的输入。
ArchiveFileIsEmpty=存档文件 {0} 为空。
CompressProgressBarText=正在创建存档文件“{0}”...
ExpandProgressBarText=正在展开存档文件“{0}”...
AppendArchiveFileExtensionMessage=提供给 DestinationPath 参数的存档文件路径“{0}”不包含 .zip 扩展名。因此，将向提供的 DestinationPath 路径附加 .zip，并在“{1}”位置创建存档文件。
AddItemtoArchiveFile=正在添加“{0}”。
BadArchiveEntry=无法处理无效的存档条目“{0}”。
CreateFileAtExpandedPath=已创建“{0}”。
InvalidArchiveFilePathError=指定为 {1} 参数的输入的存档文件路径“{0}”将解析成多个文件系统路径。请为必须要在其中创建存档文件的 {2} 参数提供唯一路径。
InvalidExpandedDirPathError=指定为 DestinationPath 参数的输入的目录路径“{0}”将解析成多个文件系统路径。请为必须要在其中展开存档文件内容的 Destination 参数提供唯一路径。
FileExistsError=由于文件“{2}”已存在，展开存档文件“{1}”的内容时无法创建文件“{0}”。如果你要在展开存档文件时覆盖现有目录“{3}”的内容，请使用 -Force 参数。
DeleteArchiveFile=由于部分创建的存档文件“{0}”不可用，因此已将它删除。
InvalidDestinationPath=目标路径“{0}”不包含有效的存档文件名。
PreparingToCompressVerboseMessage=正在准备压缩...
PreparingToExpandVerboseMessage=正在准备扩展...
###PSLOC
'@
