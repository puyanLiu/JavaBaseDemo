.class public Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTransferOutToBankCardReq;
.super Lcom/alipay/mobilewealth/biz/service/gw/request/common/CommonRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankCardForTransferOut:Lcom/alipay/mobilewealth/core/model/models/mfund/BankCardForTransferOut;

.field public fundCode:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public transferAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/biz/service/gw/request/common/CommonRequest;-><init>()V

    return-void
.end method
