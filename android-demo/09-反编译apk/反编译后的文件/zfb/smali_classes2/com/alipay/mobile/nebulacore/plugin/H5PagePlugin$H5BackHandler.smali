.class Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;
.super Ljava/lang/Object;
.source "H5PagePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

.field public lastBack:J

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V
    .locals 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    .line 87
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    .line 92
    const-string/jumbo v0, "prevent"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    const-string/jumbo v1, "H5PagePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "back event prevent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->a:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V

    goto :goto_0
.end method
