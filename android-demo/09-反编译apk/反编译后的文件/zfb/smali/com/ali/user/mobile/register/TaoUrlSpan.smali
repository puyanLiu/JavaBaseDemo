.class public Lcom/ali/user/mobile/register/TaoUrlSpan;
.super Landroid/text/style/URLSpan;
.source "TaoUrlSpan.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getUnderlying()Landroid/text/style/CharacterStyle;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/text/style/URLSpan;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 58
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string/jumbo v1, "url"

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "rt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string/jumbo v1, "dt"

    const-string/jumbo v2, "\u670d\u52a1\u534f\u8bae"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->context:Landroid/content/Context;

    .line 34
    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/ali/user/mobile/register/TaoUrlSpan;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->a:Landroid/view/View$OnClickListener;

    .line 44
    return-object p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 51
    return-void
.end method
