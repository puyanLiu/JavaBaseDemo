.class Lcom/alipay/asset/common/util/CommonResultUtil$4;
.super Ljava/lang/Object;
.source "CommonResultUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/app/MicroApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/util/CommonResultUtil$4;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/alipay/asset/common/util/CommonResultUtil$4;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/alipay/asset/common/util/CommonResultUtil$4;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-static {v1}, Lcom/alipay/asset/common/util/CommonResultUtil;->access$3(Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "20000013"

    const/4 v3, 0x0

    .line 154
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
