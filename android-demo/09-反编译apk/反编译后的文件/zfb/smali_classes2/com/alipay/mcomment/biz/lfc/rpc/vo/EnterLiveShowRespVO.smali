.class public Lcom/alipay/mcomment/biz/lfc/rpc/vo/EnterLiveShowRespVO;
.super Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public chatFlowSwitch:Z

.field public descriptionUrl:Ljava/lang/String;

.field public discountInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/ActivityDiscountBriefInfo;",
            ">;"
        }
    .end annotation
.end field

.field public liveShowDetail:Lcom/alipay/mcomment/common/service/facade/model/LiveShowDetailInfo;

.field public publishable:Z

.field public serverTime:J

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;-><init>()V

    return-void
.end method
