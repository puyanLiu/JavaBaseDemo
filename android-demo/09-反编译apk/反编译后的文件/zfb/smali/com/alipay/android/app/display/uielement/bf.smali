.class final Lcom/alipay/android/app/display/uielement/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UILabel;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UILabel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bf;->b:Lcom/alipay/android/app/display/uielement/UILabel;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/bf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bf;->b:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UILabel;->e(Lcom/alipay/android/app/display/uielement/UILabel;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bf;->b:Lcom/alipay/android/app/display/uielement/UILabel;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bf;->b:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UILabel;->e(Lcom/alipay/android/app/display/uielement/UILabel;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/bf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bf;->b:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UILabel;->f(Lcom/alipay/android/app/display/uielement/UILabel;)V

    .line 199
    :cond_0
    return-void
.end method
