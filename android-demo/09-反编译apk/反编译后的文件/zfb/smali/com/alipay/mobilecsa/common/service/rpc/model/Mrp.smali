.class public Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;
.super Ljava/lang/Object;
.source "Mrp.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hotwordRecommendId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public hotwords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mrps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;",
            ">;"
        }
    .end annotation
.end field

.field public recommendId:Ljava/lang/String;

.field public searBoxTitle:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public success:Z

.field public templateId:Ljava/lang/String;

.field public templateJson:Ljava/lang/String;

.field public templateUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
