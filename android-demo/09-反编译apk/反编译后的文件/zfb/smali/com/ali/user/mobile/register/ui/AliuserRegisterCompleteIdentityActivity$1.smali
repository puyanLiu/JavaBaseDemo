.class Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;
.super Ljava/lang/Object;
.source "AliuserRegisterCompleteIdentityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->mToken:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    invoke-static {v2}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->access$3(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    invoke-static {v3}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->access$4(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/mobile/service/UserRegisterService;->verifyIDCardAndRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->afterVerifyIdentity(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->dismissProgress()V

    .line 93
    throw v0
.end method
