.class final Lcom/alipay/mobile/phonecashier/service/e;
.super Ljava/lang/Object;
.source "PhoneCashierServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/e;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/e;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/service/e;->c:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/e;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/e;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    return-void
.end method
