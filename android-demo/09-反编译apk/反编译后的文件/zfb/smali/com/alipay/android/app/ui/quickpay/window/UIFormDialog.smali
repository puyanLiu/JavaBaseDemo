.class public Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;
.super Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;
    }
.end annotation


# instance fields
.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->i:Landroid/app/Activity;

    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, " "

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->G:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->e()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 83
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x4

    invoke-static {p1, v0, p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    .line 88
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Z)V

    .line 89
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    const-string/jumbo v3, "6001"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;

    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->G:Ljava/lang/String;

    iget-object v3, v4, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 103
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 82
    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;

    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;

    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->G:Ljava/lang/String;

    iget-object v3, v4, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    iget-object v5, v6, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_1

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 35
    const-string/jumbo v0, "form"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    const-string/jumbo v2, "onload"

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    invoke-virtual {p0, p0, v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    .line 41
    :cond_0
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->F:Ljava/lang/String;

    .line 42
    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->G:Ljava/lang/String;

    .line 43
    const-string/jumbo v2, "button"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_5

    .line 45
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    move v0, v1

    .line 47
    :goto_0
    if-ge v0, v3, :cond_5

    .line 48
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 49
    new-instance v5, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;-><init>(Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;)V

    .line 50
    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    .line 52
    const-string/jumbo v6, "action"

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 53
    const-string/jumbo v6, "action"

    invoke-static {v4, v6}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    .line 55
    :cond_1
    const-string/jumbo v6, "content"

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    const-string/jumbo v6, "confirm"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 57
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_3
    const-string/jumbo v6, "cancel"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 59
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_4
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;->H:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_5
    return-void
.end method

.method protected final a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method protected final t()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected final u()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method
