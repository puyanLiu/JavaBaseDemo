.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PublicInfoListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "PublicInfoListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public publicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PublicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public updateFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
