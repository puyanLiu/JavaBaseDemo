.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 749
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$17(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$13(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$18(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;)V

    .line 751
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$17(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->setBtnAction(Landroid/view/View$OnClickListener;)V

    .line 766
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$19(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 768
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$17(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$19(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$17(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$17(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->showView()V

    .line 774
    return-void
.end method
