.class final Lcom/alipay/android/app/ui/quickpay/window/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/s;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/s;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/s;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/s;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 436
    return-void
.end method
