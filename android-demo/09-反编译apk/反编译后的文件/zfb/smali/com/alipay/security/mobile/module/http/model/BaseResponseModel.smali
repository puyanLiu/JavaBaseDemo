.class public Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;
.super Ljava/lang/Object;


# instance fields
.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->success:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->resultCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->success:Z

    return v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->success:Z

    return-void
.end method
