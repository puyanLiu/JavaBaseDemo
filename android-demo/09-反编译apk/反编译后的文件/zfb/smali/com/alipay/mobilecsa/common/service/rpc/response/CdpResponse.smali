.class public Lcom/alipay/mobilecsa/common/service/rpc/response/CdpResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "CdpResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public spaceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/SpaceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
