.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillDetailReq;
.super Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;
.source "BillDetailReq.java"


# instance fields
.field public billNo:Ljava/lang/String;

.field public hasSettled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillDetailReq;->hasSettled:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getBillNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillDetailReq;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public isHasSettled()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillDetailReq;->hasSettled:Z

    return v0
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillDetailReq;->billNo:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setHasSettled(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillDetailReq;->hasSettled:Z

    .line 53
    return-void
.end method
