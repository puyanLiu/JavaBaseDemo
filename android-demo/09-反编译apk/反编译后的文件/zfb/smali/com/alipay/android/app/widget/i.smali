.class final Lcom/alipay/android/app/widget/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/widget/CustomListView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/widget/CustomListView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/android/app/widget/i;->a:Lcom/alipay/android/app/widget/CustomListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/android/app/widget/i;->a:Lcom/alipay/android/app/widget/CustomListView;

    iget-object v1, p0, Lcom/alipay/android/app/widget/i;->a:Lcom/alipay/android/app/widget/CustomListView;

    invoke-static {v1}, Lcom/alipay/android/app/widget/CustomListView;->access$100(Lcom/alipay/android/app/widget/CustomListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->access$002(Lcom/alipay/android/app/widget/CustomListView;I)I

    .line 100
    iget-object v0, p0, Lcom/alipay/android/app/widget/i;->a:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 102
    return-void
.end method
