.class Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;
.super Ljava/lang/Object;
.source "LongLinkServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 383
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onServiceConnected: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    instance-of v0, p2, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_1

    .line 386
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onServiceConnected: service not instanceof ILongLinkService"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    check-cast p2, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-static {v0, p2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$0(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;)V

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$1(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$2(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->setLonkLinkNotifer(Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;)V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$3(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;Z)V

    .line 402
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$1(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->connect()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 409
    const-string/jumbo v0, "LongLinkServiceManager"

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$0(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;)V

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;->this$0:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->access$3(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;Z)V

    .line 413
    return-void
.end method
