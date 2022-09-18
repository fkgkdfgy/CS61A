# Localized	12/07/2019 08:28 AM (GMT)	303:6.40.20520 	BitLockerStrings.psd1
ConvertFrom-StringData -stringdata @' 
###PSLOC
ErrorMountPointNotFound={0} 没有关联的 BitLocker 卷。
ErrorVolumeNotFound=设备 ID: {0} 没有相应的卷。
ErrorVolumeBoundAlready=无法删除此密钥保护器，因为它正在用于自动解锁该卷。
ErrorOperatingSystemMountPointNotFound=找不到操作系统卷。
WarningUsedSpaceOnlyAndHardwareEncryption=UsedSpaceOnly 开关和 HardwareEncryption 开关不能一起使用。正在忽略 UsedSpaceOnly。
ErrorExternalKeyOrPasswordRequired=需要外部密钥或密码保护器以便在没有有效 TPM 的操作系统卷上启用 BitLocker。
WarningWriteDownRecoveryPassword=所需操作:{1}{1}1. 将此数字恢复密码保存在远离你计算机的某个安全位置:{1}{1}{0}{1}{1}为了防止数据丢失，请立即保存此密码。此密码帮助确保你可以解锁加密的卷。
WarningWriteDownRecoveryPasswordInsertExternalKeyRestart=所需操作:{1}{1}1. 将此数字恢复密码保存在远离你计算机的某个安全位置:{1}{1}{0}{1}{1}为了防止数据丢失，请立即保存此密码。此密码帮助确保你可以解锁加密的卷。{1}2. 将存有外部密钥文件的 U 盘插入到计算机。{1}3. 重新启动计算机以运行硬件测试。{1}    (若要获取命令行说明，请键入: get-help Restart-Computer。)
WarningWriteDownRecoveryPasswordRestart=所需操作:{1}{1}1. 将此数字恢复密码保存在远离你计算机的某个安全位置:{1}{1}{0}{1}{1}为了防止数据丢失，请立即保存此密码。此密码帮助确保你可以解锁加密的卷。{1}2. 重新启动计算机以运行硬件测试。{1}    (若要获取命令行说明，请键入: get-help Restart-Computer。)
WarningHardwareTestFailed=错误: 硬件测试失败，代码为 0x%1!08x!。已删除所有密钥{0}保护器。{0}{0}硬件测试失败的原因可能包括:{0}{0}1. 找不到存有外部密钥文件的 U 盘。{0}{0}- 将存有外部密钥文件的 U 盘插入计算机。{0}- 如果此故障仍然存在，则计算机启动时无法读取 {0}U 盘。你可能无法在启动时使用外部密钥解除{0}对操作系统卷的锁定。{0}{0}2. U 盘上的外部密钥文件已损坏。{0}{0}- 尝试使用其他 U 盘来存储外部密钥文件。{0}{0}3. TPM 已关闭。{0}{0}- 若要管理受信任的平台模块(TPM)，请使用 TPM 管理 MMC 管理单元{0}或 TPM 管理 PowerShell cmdlet。{0}{0}4. TPM 检测到操作系统启动组件中的更改。{0}{0}- 从计算机中取出任何可启动的 CD 或 DVD。{0} - 如果此故障仍然存在，请检查是否已安装最新固件和 BIOS 升级版本，{0}另请检查 TPM 是否正常工作。{0}{0}5. 提供的 PIN 不正确。{0}{0}6. TPM 存储根密钥(SRK)含有不兼容的授权值。{0}{0}- 若要重置此值，请运行 TPM 初始化向导。{0}{0}所需操作:{0}{0}1. 解决上述硬件测试故障。{0}2. 重新运行命令以启用 BitLocker。{0}
WarningInsertExternalKeyRestart=所需操作:{0}{0}1. 将存有外部密钥文件的 U 盘插入到计算机。{0}2. 重新启动计算机以运行硬件测试。{0}    (若要获取命令行说明，请键入: get-help Restart-Computer。)
WarningRestart=所需操作:{0}{0}1. 重新启动计算机以运行硬件测试。{0}    (若要获取命令行说明，请键入: get-help Restart-Computer。)
ErrorSidProtectorRequiresAdditionalRecoveryProtector=若要在此卷上启用具有基于 SID 的标识保护器的 BitLocker，你必须至少提供一个附加保护器用于恢复。
ErrorRemoveDraProtector=必须使用“证书”管理单元删除数据恢复代理证书。
ErrorRemoveNkpProtector=只能在 BitLocker 驱动器加密组策略设置“允许启动时网络解锁”中禁用网络解锁，或通过删除域控制器上的公钥策略组策略设置“BitLocker 驱动器加密网络解锁证书”禁用网络解锁。
PasswordPrompt=输入密码:
ConfirmPasswordPrompt=确认密码:
NoMatchPassword=这些密码不匹配。请重新输入。
PinPrompt=输入 PIN:
ConfirmPinPrompt=确认 PIN:
NoMatchPin=这些 PIN 不匹配。请重新输入。
ErrorGroupPolicyDisabledBackup=组策略不允许将恢复信息存储到 Active Directory。未尝试该操作。
'@
