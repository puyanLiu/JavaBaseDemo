.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;
.super Ljava/lang/Object;
.source "MainSearchFragment.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSearchResult(Ljava/util/List;Ljava/lang/String;ZLcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;I)V

    .line 93
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "onSearchResult : keyword is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSearchResult : keyword is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V

    goto :goto_0
.end method
