.class public Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundTransferInSuccessResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public fundAutoTransferInApplyResult:Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInApplyResult;

.field public profitDateMsg:Ljava/lang/String;

.field public recommendUrl:Ljava/lang/String;

.field public transferInStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/mfund/FundTransferStateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
