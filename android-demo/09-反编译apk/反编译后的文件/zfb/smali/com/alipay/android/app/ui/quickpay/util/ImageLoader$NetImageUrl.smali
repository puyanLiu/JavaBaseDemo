.class public Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetImageUrl"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;->a:Ljava/lang/String;

    .line 649
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;->b:Ljava/lang/String;

    .line 650
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$NetImageUrl;->b:Ljava/lang/String;

    return-object v0
.end method
