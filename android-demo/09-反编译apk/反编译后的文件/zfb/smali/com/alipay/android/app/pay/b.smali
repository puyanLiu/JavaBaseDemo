.class final Lcom/alipay/android/app/pay/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/HyperlinkActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/android/app/pay/b;->a:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/pay/b;->a:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->finish()V

    .line 166
    return-void
.end method
