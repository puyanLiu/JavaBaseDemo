.class final Lcom/alipay/android/app/display/uielement/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UICombobox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICombobox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ap;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/ap;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ap;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->g(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ap;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ap;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->g(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    return-void
.end method
