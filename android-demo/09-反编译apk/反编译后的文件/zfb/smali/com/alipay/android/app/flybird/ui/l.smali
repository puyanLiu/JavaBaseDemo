.class final Lcom/alipay/android/app/flybird/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/k;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/k;)V
    .locals 0

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 1520
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 1521
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/k;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/k;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    .line 1536
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/k;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    .line 1537
    return-void

    .line 1524
    :cond_1
    if-nez p1, :cond_2

    .line 1525
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/k;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "(\'status=0009\')"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 1527
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1528
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/k;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "(\'status=0004\')"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 1531
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/k;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/k;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:Lcom/alipay/android/app/flybird/ui/k;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/k;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"action\":{\"name\":\"loc:back\"}}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_0
.end method
