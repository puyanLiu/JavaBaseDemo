.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    return-object v0
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    const-string/jumbo v2, "StartupSafeguard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cost : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$1(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2$1;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;)V

    .line 173
    const-string/jumbo v2, "clear_startup_records"

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    return v0
.end method
