.class final Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$a;
.super Landroid/text/method/BaseKeyListener;

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$a;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 462
    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    sub-int v0, p3, p2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v6, p2

    move v0, v4

    .line 464
    :goto_0
    if-ge v6, p3, :cond_2

    .line 465
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 466
    const v2, 0xffe5

    if-eq v7, v2, :cond_0

    const/16 v2, 0xf7

    if-eq v7, v2, :cond_0

    const/16 v2, 0xa5

    if-eq v7, v2, :cond_0

    move v2, v4

    :goto_1
    if-eqz v2, :cond_1

    .line 467
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    :cond_0
    move v2, v5

    .line 466
    goto :goto_1

    :cond_1
    move v0, v5

    .line 469
    goto :goto_2

    .line 472
    :cond_2
    if-eqz v0, :cond_3

    .line 481
    :goto_3
    return-object v3

    .line 475
    :cond_3
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    .line 476
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 477
    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object v3, v4

    .line 479
    goto :goto_3

    :cond_4
    move-object v3, v1

    .line 481
    goto :goto_3
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    return v0
.end method
