.class public Lcom/alipay/kabaoprod/biz/mwallet/manager/present/result/PresentMsgResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "PresentMsgResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public needPass:Z

.field public passwordType:Ljava/lang/String;

.field public presentInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field public protocolContent:Ljava/lang/String;

.field public relationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/manager/present/result/PresentMsgResult;->passwordType:Ljava/lang/String;

    .line 32
    return-void
.end method
