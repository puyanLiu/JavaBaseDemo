.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$2;
.super Ljava/lang/Object;
.source "AliUserLoginSetPayPasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

.field final synthetic val$response:Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$2;->val$response:Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_$2;->val$response:Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;->access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    .line 105
    :cond_0
    return-void
.end method
