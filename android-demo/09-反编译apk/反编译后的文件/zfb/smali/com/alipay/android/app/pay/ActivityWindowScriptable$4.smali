.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

.field final synthetic val$positiveButton:Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    iput-object p2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;->val$positiveButton:Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4$1;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Click:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4$1;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;Lcom/alipay/android/app/display/event/EventType;)V

    .line 250
    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Lcom/alipay/android/app/display/event/OnContainerEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Lcom/alipay/android/app/display/windows/IContainer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/display/event/OnContainerEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    return-void
.end method
