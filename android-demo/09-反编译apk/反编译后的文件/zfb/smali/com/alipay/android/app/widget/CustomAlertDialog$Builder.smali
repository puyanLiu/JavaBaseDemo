.class public Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/widget/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$b;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    .line 337
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->d:Landroid/content/Context;

    .line 338
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->e:Landroid/view/View;

    .line 371
    return-object p0
.end method

.method public final a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->r:Z

    .line 403
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->o:Landroid/widget/ListAdapter;

    .line 404
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p3, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->q:Landroid/content/DialogInterface$OnClickListener;

    .line 405
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->p:I

    .line 406
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->a:Ljava/lang/CharSequence;

    .line 356
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->h:Ljava/lang/CharSequence;

    .line 383
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 384
    return-object p0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->n:Z

    .line 425
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->i:Ljava/lang/CharSequence;

    .line 396
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 397
    return-object p0
.end method

.method public final b()Lcom/alipay/android/app/widget/CustomAlertDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 446
    new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;-><init>(Lcom/alipay/android/app/widget/CustomAlertDialog$b;)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->h:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v2, v2, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->h:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v3, v3, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/widget/CustomAlertDialog;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v2, v2, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->i:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v3, v3, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/widget/CustomAlertDialog;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-boolean v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->n:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->f:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->g:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->g:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 447
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->show()V

    .line 449
    return-object v0
.end method
