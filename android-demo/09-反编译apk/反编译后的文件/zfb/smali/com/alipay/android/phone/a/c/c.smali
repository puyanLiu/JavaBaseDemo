.class public final Lcom/alipay/android/phone/a/c/c;
.super Ljava/lang/Object;
.source "ChatItemView.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/android/phone/a/c/c;->b:[I

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/a/c/c;->a:Landroid/app/Activity;

    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/c;->b:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/c;->b:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/a/c/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->c:I

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance v1, Lcom/alipay/android/phone/a/c/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/a/c/d;-><init>(Lcom/alipay/android/phone/a/c/c;)V

    .line 34
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/d;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 35
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/d;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 36
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/d;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 37
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->I:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/a/c/d;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 47
    :goto_0
    :try_start_0
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    .line 51
    :goto_1
    if-eqz v3, :cond_2

    .line 52
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_2
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 72
    :goto_3
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->timestamp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 73
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 78
    :goto_4
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->b:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 79
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->q:I

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 81
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->p:I

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a()Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/android/phone/a/c/d;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/a/c/c;->b:[I

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->b:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;[II)V

    .line 84
    :cond_0
    return-object p1

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/a/c/d;

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v3, v2

    goto :goto_1

    .line 54
    :cond_2
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 61
    :cond_3
    :try_start_1
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 65
    :goto_5
    if-eqz v3, :cond_4

    .line 66
    iget-object v2, v0, Lcom/alipay/android/phone/a/c/d;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_6
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 62
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_5

    .line 68
    :cond_4
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 76
    :cond_5
    iget-object v1, v0, Lcom/alipay/android/phone/a/c/d;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_4
.end method
