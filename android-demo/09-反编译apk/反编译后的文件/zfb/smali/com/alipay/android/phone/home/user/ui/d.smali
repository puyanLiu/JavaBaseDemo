.class final Lcom/alipay/android/phone/home/user/ui/d;
.super Ljava/lang/Thread;
.source "UserInfoActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    .line 265
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/user/ui/d;)Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->a(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->a(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getUserAppsFromRemote()V

    .line 274
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 275
    :goto_1
    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .line 276
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-static {v2}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->c(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "memberGradeEnum=>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    new-instance v2, Lcom/alipay/android/phone/home/user/ui/e;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/home/user/ui/e;-><init>(Lcom/alipay/android/phone/home/user/ui/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/d;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->b(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    goto :goto_1

    .line 275
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMemberGrade()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
