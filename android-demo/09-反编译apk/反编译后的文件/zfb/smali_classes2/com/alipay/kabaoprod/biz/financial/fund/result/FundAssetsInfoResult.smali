.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundAssetsInfoResult.java"


# instance fields
.field public extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

.field public previousDate:Ljava/lang/String;

.field public previousProfit:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;

.field public totalProfit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->extraInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getFundInfo()Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

    return-object v0
.end method

.method public getPreviousDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->previousDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousProfit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->previousProfit:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalProfit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->totalProfit:Ljava/lang/String;

    return-object v0
.end method

.method public setExtraInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->extraInfo:Ljava/util/Map;

    .line 102
    return-void
.end method

.method public setFundInfo(Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

    .line 42
    return-void
.end method

.method public setPreviousDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->previousDate:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setPreviousProfit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->previousProfit:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->totalAmount:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setTotalProfit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;->totalProfit:Ljava/lang/String;

    .line 66
    return-void
.end method
