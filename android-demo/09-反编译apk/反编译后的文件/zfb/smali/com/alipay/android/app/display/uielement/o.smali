.class final Lcom/alipay/android/app/display/uielement/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/BaseElement;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseElement;)V
    .locals 1

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/o;->a:Lcom/alipay/android/app/display/uielement/BaseElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/o;->b:Z

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/o;->b:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/o;->a:Lcom/alipay/android/app/display/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseElement;->q()V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/o;->b:Z

    .line 198
    :cond_0
    return-void
.end method
