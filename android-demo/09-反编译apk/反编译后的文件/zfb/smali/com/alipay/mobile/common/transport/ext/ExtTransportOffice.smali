.class public Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;
.super Ljava/lang/Object;
.source "ExtTransportOffice.java"


# static fields
.field public static final NETWORK_DIAGONAL_SERVICE:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.diagnose.NetworkDiagnoseServiceImpl"

.field private static a:Z

.field private static b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    .line 57
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    sget-object v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isEnableExtTransport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportManager()Ljava/lang/Object;

    move-result-object v0

    .line 110
    const-string/jumbo v2, "getExtTransportClient"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/alipay/mobile/common/transport/context/TransportContext;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string/jumbo v2, "ExtTransportOffice"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No enable extTransport. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 118
    goto :goto_0
.end method

.method public getExtTransportManager()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;

    .line 147
    :goto_0
    return-object v0

    .line 131
    :cond_0
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_1
    :try_start_1
    const-string/jumbo v0, "com.alipay.mobile.common.transportext.api.ExtTransportSystem"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "getExtTransportManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 139
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const-string/jumbo v1, "ExtTransportOffice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No enable extTransport."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getNetworkDiagnoseService()Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;
    .locals 4

    .prologue
    .line 171
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.common.transportext.biz.diagnose.NetworkDiagnoseServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string/jumbo v1, "ExtTransportOffice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.mobile.common.transportext.biz.diagnose.NetworkDiagnoseServiceImpl not found."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtobufCodec()Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    .locals 4

    .prologue
    .line 157
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.common.transportext.biz.shared.ProtobufCodecImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string/jumbo v1, "ExtTransportOffice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.mobile.common.transportext.biz.shared.ProtobufCodecImpl not found."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    .line 66
    sget-boolean v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sput-boolean v1, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportManager()Ljava/lang/Object;

    move-result-object v0

    .line 74
    :try_start_0
    const-string/jumbo v1, "init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const-string/jumbo v1, "ExtTransportOffice"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MMTPException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "0,0,0"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MMTPException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "0,0,0"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEnableExtTransport(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportManager()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isInvokedMMTPInit()Z
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    return v0
.end method

.method public notifyPush2UpdateInfo(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 193
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string/jumbo v0, "com.alipay.mobile.common.transportext.biz.httpdns.ExtHttpDnsManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/ExtHttpDnsManager;

    .line 198
    invoke-interface {v0, p2}, Lcom/alipay/mobile/common/transport/ext/ExtHttpDnsManager;->ayncNotifyUpdateDnsInfo(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string/jumbo v1, "ExtTransportOffice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestHttpDnsFromPush: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    .line 189
    return-void
.end method

.method public setInvokedMMTPInit(Z)V
    .locals 0

    .prologue
    .line 184
    sput-boolean p1, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    .line 185
    return-void
.end method
