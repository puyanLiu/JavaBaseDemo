.class final Lcom/alipay/android/widget/security/msgreceiver/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/msgreceiver/c;->a:Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;

    iput-object p2, p0, Lcom/alipay/android/widget/security/msgreceiver/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/c;->a:Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;

    iget-object v1, p0, Lcom/alipay/android/widget/security/msgreceiver/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a(Landroid/content/Context;)V

    return-void
.end method
