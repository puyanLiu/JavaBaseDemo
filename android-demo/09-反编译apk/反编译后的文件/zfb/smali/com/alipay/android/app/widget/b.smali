.class final Lcom/alipay/android/app/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/alipay/android/app/widget/BaseWebView$a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/widget/BaseWebView$a;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/android/app/widget/b;->b:Lcom/alipay/android/app/widget/BaseWebView$a;

    iput-object p2, p0, Lcom/alipay/android/app/widget/b;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/widget/b;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 82
    return-void
.end method
