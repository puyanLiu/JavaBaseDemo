.class final Lcom/alipay/android/app/ui/quickpay/widget/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;ZZ)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->a:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->a:Z

    invoke-static {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$002(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    .line 178
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$102(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    .line 180
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->b:Z

    invoke-static {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$202(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    .line 181
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->b:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$302(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    .line 183
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/w;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-direct {v1, v3}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return v2

    :cond_0
    move v0, v2

    .line 178
    goto :goto_0

    :cond_1
    move v1, v2

    .line 181
    goto :goto_1
.end method
