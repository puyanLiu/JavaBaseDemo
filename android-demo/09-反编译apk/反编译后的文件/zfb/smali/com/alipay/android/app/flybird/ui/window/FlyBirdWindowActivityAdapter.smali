.class public Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;
.super Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;


# instance fields
.field public a:I

.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/content/DialogInterface;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/animation/Animation;

.field private l:J

.field private m:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    .line 71
    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    .line 76
    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->g:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->h:Z

    .line 482
    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->k:Landroid/view/animation/Animation;

    .line 501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->l:J

    .line 713
    iput-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->m:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    if-nez v1, :cond_1

    const/4 v3, -0x1

    iget-object v4, v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/app/flybird/ui/window/i;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/flybird/ui/window/i;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v3, -0x2

    iget-object v4, v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/app/flybird/ui/window/j;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/flybird/ui/window/j;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v3, -0x3

    iget-object v4, v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/app/flybird/ui/window/k;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/flybird/ui/window/k;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-object v2
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->e:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->m:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/b;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/b;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    return-void

    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v2, "flybird_dark_transparent"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "tag_view_nav"

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com.alipay.android.app.template"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/util/ResUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->j:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 166
    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    .line 167
    const-string/jumbo v1, "_FWAAINIT"

    invoke-static {v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;)V

    .line 169
    :try_start_0
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    if-nez v1, :cond_1

    .line 170
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "no biz id(18)"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :catch_0
    move-exception v1

    .line 183
    const-string/jumbo v2, "ex"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/helper/MspConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    .line 178
    invoke-virtual {v1, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onWindowLoaded(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->e:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_layout"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i:Landroid/view/View;

    return-object p1
.end method

.method static synthetic e(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->m:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "Action_FlyBirdWindowActivity_OnResume"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 141
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 113
    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_0

    .line 114
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 115
    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/TradeUiManager;->b(I)V

    .line 116
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->dispose()V

    .line 120
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final a(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 81
    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 83
    const-string/jumbo v0, "_FWAAONCREATE"

    invoke-static {v0}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "CallingPid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 108
    :goto_1
    return-void

    .line 84
    :cond_1
    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 88
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    .line 89
    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_5

    const-string/jumbo v0, "biz_type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "biz_type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "setting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_layout"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 95
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_layout"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->h:Z

    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_title_layout"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 106
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 99
    :cond_5
    if-eqz v2, :cond_4

    const-string/jumbo v0, "biz_type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "biz_type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "deposit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->h:Z

    goto :goto_2
.end method

.method public final a(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1f4

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 505
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "flybird_fullscreen_bg"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 520
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    const-string/jumbo v0, "flybird_dark_transparent"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 524
    :cond_1
    if-nez p2, :cond_5

    .line 527
    const-string/jumbo v0, "alipay_left_in"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v1

    .line 528
    const-string/jumbo v0, "alipay_right_out"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v0

    .line 533
    :goto_1
    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->g:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 534
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->g:I

    .line 535
    const-string/jumbo v0, "alipay_left_in"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v1

    .line 536
    const-string/jumbo v0, "alipay_right_out"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v8

    .line 541
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->k:Landroid/view/animation/Animation;

    .line 543
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i:Landroid/view/View;

    if-nez v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v0

    .line 545
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v5, v5, v0, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->k:Landroid/view/animation/Animation;

    .line 546
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->k:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 552
    :cond_2
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->k:Landroid/view/animation/Animation;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/n;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/window/n;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 596
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 598
    const-wide/16 v0, 0x14

    .line 599
    iget-wide v5, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->l:J

    sub-long v5, v3, v5

    cmp-long v5, v5, v9

    if-gez v5, :cond_3

    .line 600
    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->l:J

    sub-long v0, v3, v0

    sub-long v0, v9, v0

    .line 602
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 603
    new-instance v3, Lcom/alipay/android/app/flybird/ui/window/p;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move v7, p2

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/app/flybird/ui/window/p;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;IILandroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->l:J

    .line 661
    return-void

    .line 514
    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 530
    :cond_5
    const-string/jumbo v0, "alipay_right_in"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v1

    .line 531
    const-string/jumbo v0, "alipay_left_out"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_6
    move v8, v0

    goto :goto_2
.end method

.method public final a(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V
    .locals 1

    .prologue
    .line 709
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f:Ljava/lang/ref/WeakReference;

    .line 711
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 419
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 420
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/l;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/android/app/flybird/ui/window/l;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 9

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 300
    iget-object v8, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/flybird/ui/window/e;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 363
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/h;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/a;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/a;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 124
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i:Landroid/view/View;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    invoke-interface {v0, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_1
    move v0, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 769
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->g:I

    .line 770
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    .line 290
    :cond_0
    return-void
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 233
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 236
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b()V

    .line 237
    sput v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    .line 238
    sput v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    .line 239
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/c;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 739
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 743
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/d;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i:Landroid/view/View;

    return-object v0
.end method
