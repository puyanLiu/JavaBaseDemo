.class final Lcom/alipay/pushsdk/push/d/b;
.super Ljava/lang/Object;
.source "PushLBSHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/pushsdk/push/d/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/d/a;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/d/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/d/b;->a:Lcom/alipay/pushsdk/push/d/a;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/pushsdk/push/d/g;

    check-cast p2, Lcom/alipay/pushsdk/push/d/g;

    iget v0, p1, Lcom/alipay/pushsdk/push/d/g;->c:I

    iget v1, p2, Lcom/alipay/pushsdk/push/d/g;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/alipay/pushsdk/push/d/g;->c:I

    iget v1, p2, Lcom/alipay/pushsdk/push/d/g;->c:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
