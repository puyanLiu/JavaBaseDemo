.class Lcom/ali/user/mobile/common/api/AliUserLogin$6;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/login/LoginParam;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->a:Lcom/ali/user/mobile/login/LoginParam;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/common/api/AliUserLogin$6;)Lcom/ali/user/mobile/common/api/AliUserLogin;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, -0x3ec

    const/4 v4, 0x0

    .line 373
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "start sso autologin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$5(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->a:Lcom/ali/user/mobile/login/LoginParam;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/UserLoginService;->unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->success:Z

    if-eqz v1, :cond_1

    .line 378
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "sso autologin success"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginSuccess()V

    .line 382
    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$6()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$6$1;

    invoke-direct {v2, p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$6$1;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin$6;)V

    invoke-interface {v1, v0, v2}, Lcom/ali/user/mobile/login/OnLoginCaller;->postFinishLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    .line 402
    :goto_0
    return-void

    .line 389
    :cond_1
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "sso autologin fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v0

    const/16 v1, -0x3ec

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$7(Lcom/ali/user/mobile/common/api/AliUserLogin;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    const-string/jumbo v1, "AliUserLogin"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$7(Lcom/ali/user/mobile/common/api/AliUserLogin;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v4}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
