.class public final Lcom/alipay/android/app/exception/NetErrorException;
.super Ljava/lang/Exception;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    iput v0, p0, Lcom/alipay/android/app/exception/NetErrorException;->a:I

    .line 46
    iput v0, p0, Lcom/alipay/android/app/exception/NetErrorException;->a:I

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetError--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/alipay/android/app/exception/NetErrorException;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/alipay/android/app/exception/NetErrorException;->a:I

    .line 56
    return-void
.end method
