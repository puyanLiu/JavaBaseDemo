.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;
.super Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;
.source "O2oWidgetGroup.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    .line 991
    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public isNeedShowAdvertisement()Z
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$9(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z

    move-result v0

    return v0
.end method
