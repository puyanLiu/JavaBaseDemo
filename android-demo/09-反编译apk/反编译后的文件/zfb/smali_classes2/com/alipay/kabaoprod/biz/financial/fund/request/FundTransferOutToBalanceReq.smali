.class public Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutToBalanceReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "FundTransferOutToBalanceReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public fundCode:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public transferAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method
