.class public Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "StartGuideFragmentAdapter.java"


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/guide/StartGuideFragment;",
            ">;"
        }
    .end annotation
.end field

.field private resIds:[I

.field private resIds2:[I

.field private startListener:Landroid/view/View$OnClickListener;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/view/View$OnClickListener;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 16
    new-array v1, v4, [I

    sget v2, Lcom/alipay/android/tablauncher/R$layout;->guide_1:I

    aput v2, v1, v0

    sget v2, Lcom/alipay/android/tablauncher/R$layout;->guide_qianbao:I

    aput v2, v1, v3

    iput-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->resIds:[I

    .line 17
    new-array v1, v4, [I

    sget v2, Lcom/alipay/android/tablauncher/R$layout;->guide_1:I

    aput v2, v1, v0

    sget v2, Lcom/alipay/android/tablauncher/R$layout;->guide_qianbao:I

    aput v2, v1, v3

    iput-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->resIds2:[I

    .line 21
    iput v3, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->type:I

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->fragments:Ljava/util/List;

    .line 28
    iput p3, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->type:I

    .line 29
    iput-object p2, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->startListener:Landroid/view/View$OnClickListener;

    .line 30
    if-ne p3, v3, :cond_2

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->resIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 39
    :goto_1
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->fragments:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->resIds:[I

    aget v2, v2, v0

    invoke-static {v2, p2}, Lcom/alipay/android/launcher/guide/StartGuideFragment;->newInstance(ILandroid/view/View$OnClickListener;)Lcom/alipay/android/launcher/guide/StartGuideFragment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->fragments:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->resIds2:[I

    aget v2, v2, v0

    invoke-static {v2, p2}, Lcom/alipay/android/launcher/guide/StartGuideFragment;->newInstance(ILandroid/view/View$OnClickListener;)Lcom/alipay/android/launcher/guide/StartGuideFragment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->resIds2:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 65
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/guide/StartGuideFragment;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/guide/StartGuideFragment;->destoryView()V

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->resIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
