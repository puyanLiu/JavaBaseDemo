.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/e;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 721
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 722
    return-void
.end method
