.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundOpenAccountV2Req;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizType:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public tranferInCacheKey:Ljava/lang/String;

.field public transferInInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/mfund/FundOpenTransferInInfo;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
