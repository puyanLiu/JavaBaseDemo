.class final Lcom/alipay/android/app/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/IRemoteCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/IRemoteServiceCallback;

.field final synthetic b:Lcom/alipay/android/app/DefaultServiceAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/DefaultServiceAdapter;Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alipay/android/app/b;->b:Lcom/alipay/android/app/DefaultServiceAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/b;->a:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/android/app/b;->a:Lcom/alipay/android/app/IRemoteServiceCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alipay/android/app/IRemoteServiceCallback;->startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 163
    return-void
.end method
