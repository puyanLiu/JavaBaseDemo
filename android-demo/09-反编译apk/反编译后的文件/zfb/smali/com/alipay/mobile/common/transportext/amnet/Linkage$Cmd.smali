.class public Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;
.super Ljava/lang/Object;
.source "Linkage.java"


# instance fields
.field public data:[B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->type:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->data:[B

    return-void
.end method
