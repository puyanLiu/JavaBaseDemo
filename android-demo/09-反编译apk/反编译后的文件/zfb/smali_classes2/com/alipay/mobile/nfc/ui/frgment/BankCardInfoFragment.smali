.class public Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;
.super Landroid/support/v4/app/Fragment;
.source "BankCardInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:I

.field private B:Landroid/os/Handler;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

.field private w:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

.field private x:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

.field private y:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

.field private z:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "NFC/BankCardInfoFragment"

    sput-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    sput-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "CCB"

    const-string/jumbo v2, "\u4e2d\u56fd\u5efa\u8bbe\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "ICBC"

    const-string/jumbo v2, "\u4e2d\u56fd\u5de5\u5546\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "ABC"

    const-string/jumbo v2, "\u4e2d\u56fd\u519c\u4e1a\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "BOC"

    const-string/jumbo v2, "\u4e2d\u56fd\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "PSBC"

    const-string/jumbo v2, "\u4e2d\u56fd\u90ae\u50a8\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "COMM"

    const-string/jumbo v2, "\u4ea4\u901a\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "CMB"

    const-string/jumbo v2, "\u62db\u5546\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "CEB"

    const-string/jumbo v2, "\u4e2d\u56fd\u5149\u5927\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "CIB"

    const-string/jumbo v2, "\u4e2d\u56fd\u5174\u4e1a\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "CITIC"

    const-string/jumbo v2, "\u4e2d\u56fd\u4e2d\u4fe1\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "CMBC"

    const-string/jumbo v2, "\u4e2d\u56fd\u6c11\u751f\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "SPDB"

    const-string/jumbo v2, "\u4e2d\u56fd\u6d66\u53d1\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "SPABANK"

    const-string/jumbo v2, "\u4e2d\u56fd\u5e73\u5b89\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "GDB"

    const-string/jumbo v2, "\u4e2d\u56fd\u5e7f\u53d1\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "HXBANK"

    const-string/jumbo v2, "\u4e2d\u56fd\u534e\u590f\u94f6\u884c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 105
    const/16 v0, 0x2bd

    iput v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->A:I

    .line 107
    new-instance v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$1;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->B:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 444
    .line 445
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 447
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 448
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 450
    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 453
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BANK_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v3, 0x0

    .line 453
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getLocalImage"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/nfc/R$layout;->h:I

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->t:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 438
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->u:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 124
    check-cast p1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 469
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    .line 471
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->u:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    move-result-object v1

    .line 472
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a(Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    .line 473
    invoke-virtual {v1}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a()V

    .line 475
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "onCreateView"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->c:Landroid/view/LayoutInflater;

    .line 132
    sget v0, Lcom/alipay/mobile/nfc/R$layout;->a:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->d:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->d:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/nfc/R$id;->K:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->d:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->c:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->e:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->f:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->f:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->I:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->g:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->L:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->h:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->g:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->i:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->U:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->j:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->V:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->k:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->h:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->l:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->G:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->m:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->b:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->s:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->l:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->n:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->t:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->o:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->u:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->p:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->m:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->q:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->s:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->r:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->e:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v3, Lcom/alipay/mobile/nfc/R$drawable;->d:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setBackgroundResource(I)V

    new-instance v3, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$7;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$7;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/nfc/R$id;->a:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->t:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-static {v0}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->queryCarbin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/cardbin/Cardbin;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getBandAlias()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v4, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b:Ljava/util/HashMap;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/cardbin/Cardbin;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getBandAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->e:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/cardbin/Cardbin;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getCardName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->f:Landroid/widget/TextView;

    sget-object v3, Lcom/alipay/nfc/model/CardTypeEnum;->UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v3}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->g:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getCash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getParams()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string/jumbo v0, "name"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    const-string/jumbo v0, "idcard"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6682\u4e0d\u652f\u6301"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_8
    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->u:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;Lcom/alipay/nfc/model/CardInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->w:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    new-instance v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;Lcom/alipay/nfc/model/CardInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->y:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    new-instance v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;Lcom/alipay/nfc/model/CardInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->x:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    new-instance v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;Lcom/alipay/nfc/model/CardInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->z:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/nfc/model/CardTypeEnum;->CreditCard:Lcom/alipay/nfc/model/CardTypeEnum;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nfc/R$string;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$string;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->w:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Ljava/lang/String;Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$string;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->y:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Ljava/lang/String;Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$string;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->z:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Ljava/lang/String;Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    .line 136
    :cond_3
    :goto_9
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->d:Landroid/view/View;

    return-object v0

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->s:Landroid/widget/ImageView;

    sget v4, Lcom/alipay/mobile/nfc/R$drawable;->a:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->e:Landroid/widget/TextView;

    sget-object v3, Lcom/alipay/nfc/model/CardTypeEnum;->UnknowCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v3}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v6, v0, -0x4

    move v0, v1

    :goto_a
    if-lt v0, v6, :cond_8

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getCash()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getCount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u6b21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "name"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->k:Landroid/widget/TextView;

    const-string/jumbo v5, "hidename"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/utils/SecurityUtil;->accountHide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "idcard"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->l:Landroid/widget/TextView;

    const-string/jumbo v3, "hideidcard"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/SecurityUtil;->accountHide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nfc/R$string;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$string;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->w:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Ljava/lang/String;Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$string;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->x:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Ljava/lang/String;Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->v:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$string;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->z:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Ljava/lang/String;Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    goto/16 :goto_9
.end method
