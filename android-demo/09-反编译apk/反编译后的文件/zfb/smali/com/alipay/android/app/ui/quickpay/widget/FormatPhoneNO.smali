.class public final Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/k;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/k;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->c:Landroid/text/TextWatcher;

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->a:I

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->b:Landroid/widget/EditText;

    .line 213
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    return-void
.end method
