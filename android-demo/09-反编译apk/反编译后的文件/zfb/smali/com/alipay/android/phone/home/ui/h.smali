.class final Lcom/alipay/android/phone/home/ui/h;
.super Ljava/lang/Object;
.source "AbstractHomeFrameLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/h;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 281
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 282
    return-void
.end method
