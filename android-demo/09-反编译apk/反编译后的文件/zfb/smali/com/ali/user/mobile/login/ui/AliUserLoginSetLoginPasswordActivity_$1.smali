.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$1;
.super Ljava/lang/Object;
.source "AliUserLoginSetLoginPasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;

.field final synthetic val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$1;->val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$1;->val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;->access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    .line 89
    :cond_0
    return-void
.end method
