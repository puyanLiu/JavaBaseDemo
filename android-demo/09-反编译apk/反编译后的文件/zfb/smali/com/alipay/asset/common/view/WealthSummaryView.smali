.class public Lcom/alipay/asset/common/view/WealthSummaryView;
.super Lcom/alipay/asset/common/view/BaseWealthWidgetView;
.source "WealthSummaryView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/alipay/android/phone/wealth/home/R$layout;->o:I

    return v0
.end method

.method public setSummary(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V
    .locals 3

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->titleView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    if-eqz p2, :cond_1

    .line 34
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSecondaryInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$color;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 42
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "mcolor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "mcolor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$color;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_1
.end method
