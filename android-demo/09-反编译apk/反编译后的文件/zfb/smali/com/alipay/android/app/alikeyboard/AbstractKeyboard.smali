.class public Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;
.super Ljava/lang/Object;
.source "AbstractKeyboard.java"


# instance fields
.field protected a:Landroid/view/ViewGroup;

.field protected b:Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 53
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 54
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 61
    :goto_0
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 58
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 61
    new-instance v0, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->b:Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->b:Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;->onInput(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->b:Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->b:Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;

    invoke-interface {v0}, Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;->onDel()V

    .line 30
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->b:Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->b:Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;

    invoke-interface {v0}, Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;->onOK()V

    .line 36
    :cond_0
    return-void
.end method
