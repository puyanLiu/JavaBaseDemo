.class public Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/base/pay/PayEntrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayResult"
.end annotation


# instance fields
.field protected a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->d:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a:Z

    .line 284
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->d:Lcom/alipay/android/app/json/JSONObject;

    .line 280
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->c:Ljava/lang/String;

    .line 296
    return-void
.end method
