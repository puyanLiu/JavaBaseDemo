.class public Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;,
        Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;->a:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;->b:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;->a:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_region"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;)V

    .line 50
    const-string/jumbo v0, "contact_item_head"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->a:Landroid/widget/LinearLayout;

    .line 52
    const-string/jumbo v0, "contact_item_header_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->b:Landroid/widget/TextView;

    .line 54
    const-string/jumbo v0, "region_name"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->c:Landroid/widget/TextView;

    .line 56
    const-string/jumbo v0, "region_number"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->d:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;

    .line 63
    iput p1, v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->e:I

    .line 64
    iget-boolean v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->a:Z

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->a:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object v2, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_1
    iget-object v2, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->d:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-object p2

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;

    move-object v1, v0

    goto :goto_0

    .line 71
    :cond_1
    iget-object v2, v1, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$a;->a:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
