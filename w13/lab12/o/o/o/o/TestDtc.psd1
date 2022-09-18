# Localized	12/07/2019 11:42 AM (GMT)	303:6.40.20520 	TestDtc.psd1
ConvertFrom-StringData @'
       
###PSLOC start localizing

FirewallRuleEnabled="{0}: 已启用有关 {1} 的防火墙规则。"
FirewallRuleDisabled="{0}: 已禁用有关 {1} 的防火墙规则。此计算机无法参与网络事务。"
CmdletFailed="{0} cmdlet 失败。请确保已安装 {1} 模块。"
InvalidLocalComputer="{0} 不是有效的本地计算机名称。"
RPCEndpointMapper="RPC 终结点映射程序"
DtcIncomingConnection="DTC 传入连接"
DtcOutgoingConnection="DTC 传出连接"
MatchingDtcNotFound="VirtualServerName 为 {0} 的 DTC 实例不存在。"
InboundDisabled="{0}: 不允许入站事务，并且此计算机无法参与网络事务。"
OutboundDisabled="{0}: 不允许出站事务，并且此计算机无法参与网络事务。"
OSVersion="{0} 操作系统版本: {1}。"
OSQueryFailed="查询 {0} 的操作系统失败。"
VersionNotSupported="此 cmdlet 不支持对低于 {0} 的 Windows 版本测试 DTC。"
FailedToCreateCimSession="未能创建与 {0} 的 CIM 会话。"
NotARemoteComputer="{0} 不是远程计算机。"
PingingSucceeded="从 {1} 对计算机 {0} 执行 Ping 操作成功。"
PingingFailed="从 {1} 对计算机 {0} 执行 Ping 操作失败。"
SameCids="{1} 和 {2} 上的 {0} CID 相同。CID 对于每台计算机应是唯一的。"
DiagnosticTestPrompt="此诊断测试将尝试在 {0} 和 {1} 之间执行事务传播。它要求在 {0} 上打开一个 TCP 端口，以便测试资源管理器能够参与网络事务。"
DefaultPortDescription="默认端口是 {0}，并且您可通过使用“ResourceManagerPort”参数并重新运行测试来对其进行更改。"
PortDescription="您已将 {0} 指定为“ResourceManagerPort”。"
FirewallRequest="请在防火墙中打开端口 {0} 以继续进行测试。"
QueryText="是否确实要继续测试?"
InvalidDefaultCluster="{0} 不是在此计算机上配置的默认 DTC 的虚拟服务器名称。您可使用“Set-DtcClusterDefault”cmdlet 在此计算机上配置默认 DTC。"
InvalidDefault="{0} 不是在此计算机上配置的默认 DTC 的虚拟服务器名称。您可使用“Set-DtcDefault”cmdlet 在此计算机上配置默认 DTC。"
NeedDtcSecurityFix="应固定 DTC 安全设置和防火墙设置，以完成事务传播测试。"
StartResourceManagerFailed="测试资源管理器创建失败。"
ResourceManagerStarted="测试资源管理器已启动。"
PSSessionCreated="已创建针对 {0} 的新 PSSession。"
TransactionPropagated="已使用 {2} 传播将事务从 {0} 传播到 {1}。"
TransactionPropagationFailed="使用 {2} 传播将事务从 {0} 传播到 {1} 失败。"
TestRMVerboseLog="测试资源管理器详细日志:"
TestRMWarningLog="测试资源管理器警告日志:"
InvalidParameters="至少应指定一个 LocalComputerName 或 RemoteComputerName 参数。"

###PSLOC
'@
