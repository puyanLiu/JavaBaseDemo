.class final Lcom/alipay/android/phone/home/manager/k;
.super Ljava/lang/Object;
.source "BaseAppsItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/j;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic c:Lcom/alipay/android/phone/home/manager/ViewHolder;

.field private final synthetic d:Z

.field private final synthetic e:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/j;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;ZLandroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/k;->a:Lcom/alipay/android/phone/home/manager/j;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/k;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/k;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iput-boolean p4, p0, Lcom/alipay/android/phone/home/manager/k;->d:Z

    iput-object p5, p0, Lcom/alipay/android/phone/home/manager/k;->e:Landroid/graphics/drawable/Drawable;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/k;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/k;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/k;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v1, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/k;->d:Z

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/k;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(ZLcom/alipay/android/phone/home/manager/ViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 545
    :cond_0
    return-void
.end method
