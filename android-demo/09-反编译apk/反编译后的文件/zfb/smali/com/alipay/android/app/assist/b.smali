.class final Lcom/alipay/android/app/assist/b;
.super Ljava/lang/Object;
.source "FlybirdKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/assist/FlybirdKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/assist/FlybirdKeyboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/assist/b;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 216
    invoke-static {}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    invoke-static {}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    invoke-static {}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d()V

    .line 220
    :cond_0
    return-void
.end method
