.class public final Lcom/alipay/android/app/display/windows/WindowElements;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/display/uielement/IUIElement;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/display/uielement/IUIElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->a:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->b:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/alipay/android/app/display/uielement/IUIElement;)V
    .locals 3

    .prologue
    .line 31
    monitor-enter p0

    const/4 v0, -0x1

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowElements;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    .line 34
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowElements;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 35
    iget-object v2, p0, Lcom/alipay/android/app/display/windows/WindowElements;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 37
    :cond_0
    if-lez v0, :cond_1

    .line 38
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowElements;->b:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 40
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()[Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alipay/android/app/display/uielement/IUIElement;

    .line 58
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowElements;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/display/uielement/IUIElement;

    return-object v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowElements;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    return-void
.end method
