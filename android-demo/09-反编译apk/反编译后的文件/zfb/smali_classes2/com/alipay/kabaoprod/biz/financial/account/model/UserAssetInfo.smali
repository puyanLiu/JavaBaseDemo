.class public Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "UserAssetInfo.java"


# instance fields
.field public accountAsset:Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;

.field public fundAsset:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;

.field public fundOpenStatus:Z

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountAsset()Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;->accountAsset:Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;

    return-object v0
.end method

.method public getFundAsset()Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;->fundAsset:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public isFundOpenStatus()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;->fundOpenStatus:Z

    return v0
.end method

.method public setAccountAsset(Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;->accountAsset:Lcom/alipay/kabaoprod/biz/financial/account/model/AccountAsset;

    .line 55
    return-void
.end method

.method public setFundAsset(Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;->fundAsset:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAsset;

    .line 83
    return-void
.end method

.method public setFundOpenStatus(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;->fundOpenStatus:Z

    .line 71
    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;->totalAmount:Ljava/lang/String;

    .line 43
    return-void
.end method
