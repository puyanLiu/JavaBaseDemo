.class public Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->c:Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->b:Z

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->c:Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->c:Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->c:Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->b:Z

    .line 48
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->b:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->c:Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    .line 86
    return-void
.end method
