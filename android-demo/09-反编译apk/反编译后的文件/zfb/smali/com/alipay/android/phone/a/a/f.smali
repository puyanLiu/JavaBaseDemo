.class public final Lcom/alipay/android/phone/a/a/f;
.super Lcom/alipay/android/phone/a/a/b;
.source "CouponDataSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/a/a/b;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/a/a/f;->f:Z

    .line 10
    const-string/jumbo v0, "alppass"

    iput-object v0, p0, Lcom/alipay/android/phone/a/a/f;->p:Ljava/lang/String;

    .line 11
    return-void
.end method
