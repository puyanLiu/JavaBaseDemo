.class final Lcom/alipay/android/app/ui/quickpay/window/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/au;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/au;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 352
    return-void
.end method
