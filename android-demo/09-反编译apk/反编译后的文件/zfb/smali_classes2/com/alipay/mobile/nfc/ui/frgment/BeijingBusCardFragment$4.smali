.class Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$4;
.super Ljava/lang/Object;
.source "BeijingBusCardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$4;->a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$4;->a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->d(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 139
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    move-result v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auth \u5df2\u7ecf\u767b\u5f55\uff0c\u53bb\u5145\u503c"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$4;->a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V

    .line 147
    :cond_0
    return-void
.end method
