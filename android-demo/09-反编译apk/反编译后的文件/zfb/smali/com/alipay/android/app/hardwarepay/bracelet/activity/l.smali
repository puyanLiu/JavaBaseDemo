.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;I)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/l;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;

    iput p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 824
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/l;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->a:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/l;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const-string/jumbo v3, "mini_already_download"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/l;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 826
    return-void
.end method
