.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/ApplyRepayResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "ApplyRepayResult.java"


# instance fields
.field public applyOrderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplyOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/ApplyRepayResult;->applyOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public setApplyOrderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/ApplyRepayResult;->applyOrderId:Ljava/lang/String;

    .line 41
    return-void
.end method
