.class public Lcom/alipay/mobile/socialwidget/SocialRouteApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "SocialRouteApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_RouteApp"

    const-string/jumbo v2, "\u542f\u52a8\u8def\u7531\u5230\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000217"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/SocialRouteApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000252"

    const-string/jumbo v3, "20000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/SocialRouteApp;->destroy(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/SocialRouteApp;->a()V

    .line 28
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/SocialRouteApp;->a()V

    .line 23
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
