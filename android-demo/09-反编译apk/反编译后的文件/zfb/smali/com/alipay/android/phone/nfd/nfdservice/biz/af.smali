.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;J)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a()V

    return-void
.end method
