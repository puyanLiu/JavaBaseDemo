.class public abstract Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;
.super Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;
.implements Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;


# static fields
.field protected static b:Z


# instance fields
.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/alipay/android/app/json/JSONObject;

.field private H:Lcom/alipay/android/app/json/JSONObject;

.field private I:Ljava/lang/String;

.field private J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

.field private K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Landroid/content/SharedPreferences;

.field private P:Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;

.field private Q:Landroid/view/ViewGroup;

.field protected a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    .line 64
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    .line 65
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->G:Lcom/alipay/android/app/json/JSONObject;

    .line 66
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->H:Lcom/alipay/android/app/json/JSONObject;

    .line 78
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d:Z

    .line 79
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e:Z

    .line 80
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->f:Z

    .line 81
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->M:Z

    .line 82
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->N:Z

    .line 100
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->r:Z

    .line 101
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->L:Z

    .line 102
    sput-boolean v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->b:Z

    .line 103
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Lcom/alipay/android/app/ui/quickpay/window/UISubForm;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V
    .locals 5

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->r:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->r:Z

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    instance-of v4, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->b(I)I

    move-result v1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->b(I)I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ValueChanged:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->h()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->C:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/LuaStringHolder;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaStringHolder;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaStringHolder;->load(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->P:Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->P:Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->execute()Z
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v1, "lua_erroe"

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UISubForm;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->N:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->O:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->Q:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected final a(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e:Z

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "mini_scroll_linBlocksConpent"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 179
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    return-object v0

    .line 177
    :cond_0
    const-string/jumbo v0, "mini_linBlocksConpent"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/window/UISubForm;
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->G:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->G:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    :cond_0
    const/4 v0, 0x0

    .line 536
    :goto_0
    return-object v0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->G:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    if-nez v1, :cond_2

    .line 526
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    .line 528
    :cond_2
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 531
    :try_start_0
    const-string/jumbo v2, "form"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 532
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->a(Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 11

    .prologue
    .line 192
    if-eqz p3, :cond_1

    .line 194
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 195
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 196
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const-string/jumbo v4, "mini_layout"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    if-eq v3, v4, :cond_0

    instance-of v3, p0, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    if-nez v3, :cond_0

    .line 199
    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    .line 206
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 207
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 210
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 213
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e:Z

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 215
    instance-of v1, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    const-string/jumbo v1, "mini_title_block"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 220
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 225
    instance-of v1, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bottom"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    const-string/jumbo v1, "mini_bottom_block"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 230
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 242
    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c:Z

    invoke-virtual {v0, p1, v4, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 243
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 246
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->i()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 249
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 253
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    if-eqz p3, :cond_d

    .line 254
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 255
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v7, :cond_d

    .line 256
    const/4 v1, 0x0

    .line 257
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a()Landroid/view/View;

    move-result-object v8

    .line 258
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->b()Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 259
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->x()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_7

    .line 261
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 263
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->j()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 264
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 265
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 268
    :cond_7
    const/4 v3, 0x0

    .line 269
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v10, -0x2

    invoke-direct {v9, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 272
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 273
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 274
    instance-of v8, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v8, :cond_a

    .line 275
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 276
    if-eqz v1, :cond_9

    .line 277
    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v8, v10

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 278
    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v10, 0x0

    aget v1, v1, v10

    add-int/2addr v1, v8

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 279
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    invoke-static {v8}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v8

    div-int/lit8 v8, v8, 0x6

    sub-int/2addr v1, v8

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 282
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v1, v8, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move v0, v3

    .line 325
    :goto_3
    if-nez v0, :cond_8

    .line 326
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 288
    :cond_9
    const/4 v1, 0x2

    const-string/jumbo v8, "mini_layout"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 290
    const/4 v1, 0x0

    const/4 v8, 0x0

    iget v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v1, v8, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    const/16 v0, 0xb

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v0, v3

    .line 295
    goto :goto_3

    :cond_a
    instance-of v8, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_13

    .line 296
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 298
    if-eqz v1, :cond_b

    .line 299
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v8, v10

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 300
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v10, 0x0

    aget v1, v1, v10

    add-int/2addr v1, v8

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 301
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v10, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v1, v8, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move v0, v3

    goto :goto_3

    .line 308
    :cond_b
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-gez v1, :cond_c

    .line 309
    const/4 v1, 0x2

    const-string/jumbo v8, "mini_layout"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 311
    const/4 v1, 0x0

    const/4 v8, 0x0

    iget v10, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v1, v8, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 313
    const/16 v0, 0xb

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v0, v3

    goto :goto_3

    .line 315
    :cond_c
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v1, v3, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 317
    const/4 v1, 0x1

    .line 318
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v0, v1

    goto/16 :goto_3

    .line 331
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    if-eqz p3, :cond_12

    .line 332
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 333
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, v3, :cond_12

    .line 334
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;

    .line 337
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 340
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 341
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 342
    instance-of v7, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v7, :cond_10

    .line 343
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 344
    iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 346
    iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 347
    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 373
    :cond_e
    :goto_5
    const/16 v1, 0xc

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->b()Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->D()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "screen_bottom_center"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 376
    const/16 v1, 0xe

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 380
    :cond_f
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 348
    :cond_10
    instance-of v7, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_e

    .line 349
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 350
    iget v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    invoke-static {v8}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    invoke-static {v9}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v9

    div-int/lit8 v9, v9, 0xa

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_11

    .line 352
    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    invoke-static {v7}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    invoke-static {v8}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 355
    :cond_11
    iget v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v9, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v10, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 357
    iget v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 358
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 365
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    .line 366
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 368
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_5

    .line 385
    :cond_12
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/a;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 400
    return-void

    :cond_13
    move v0, v3

    goto/16 :goto_3
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->Q:Landroid/view/ViewGroup;

    .line 126
    return-void
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 6

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 138
    const-string/jumbo v0, "form"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "guide"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string/jumbo v1, "guide"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d:Z

    .line 142
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "fullscreen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c:Z

    .line 144
    const-string/jumbo v1, "disableBack"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->L:Z

    .line 145
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->I:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    const-string/jumbo v2, "blocks"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;Lcom/alipay/android/app/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    .line 147
    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e:Z

    .line 150
    :cond_1
    const-string/jumbo v1, "needOnback"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const-string/jumbo v1, "needOnback"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->f:Z

    .line 153
    :cond_2
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->k:Z

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->l:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->L:Z

    iget-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c:Z

    iget-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->f:Z

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;-><init>(ZLjava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->v:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    .line 155
    return-void
.end method

.method protected final a(Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 648
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v1

    .line 649
    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 650
    aget-object v3, v2, v7

    .line 651
    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d()Ljava/util/List;

    move-result-object v0

    .line 654
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 655
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 656
    instance-of v4, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v4, :cond_1

    .line 657
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    .line 658
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 664
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;[Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    .line 560
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 866
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    if-nez p1, :cond_2

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    const-string/jumbo v1, "mini_keeppre_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 874
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 875
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V

    .line 876
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 950
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V

    goto :goto_0

    .line 880
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->M:Z

    if-nez v0, :cond_0

    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->M:Z

    .line 886
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 888
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->f()Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    .line 889
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->v()Z

    move-result v1

    if-nez v1, :cond_3

    .line 890
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V

    goto :goto_0

    .line 894
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    const-string/jumbo v2, "msp_guides"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->O:Landroid/content/SharedPreferences;

    .line 895
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    if-eqz v1, :cond_4

    .line 896
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->N:Z

    .line 897
    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->N:Z

    if-nez v1, :cond_4

    .line 900
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V

    .line 904
    :cond_4
    if-eqz v0, :cond_0

    .line 906
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/j;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 404
    .line 405
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->v:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    .line 409
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->j:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v3, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Submit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v3, v4, :cond_0

    .line 411
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->n()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Z)V

    .line 415
    :cond_0
    iget-object v3, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Back:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v3, v4, :cond_3

    .line 416
    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->j:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/alipay/android/app/util/LogAgent;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->SwitchHome:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v0, v3, :cond_6

    .line 431
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v7, v9}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v9, v2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v7, v1

    .line 462
    :cond_2
    :goto_1
    return v7

    .line 417
    :cond_3
    iget-object v3, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Exit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v3, v4, :cond_4

    .line 418
    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->j:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/alipay/android/app/util/LogAgent;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_4
    iget-object v3, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->SwitchHint:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v3, v4, :cond_5

    .line 420
    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_5
    iget-object v3, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ValueChanged:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-eq v3, v4, :cond_1

    iget-object v3, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->LocalDismiss:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-eq v3, v4, :cond_1

    .line 423
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 425
    sget-object v4, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->j:Ljava/lang/String;

    const-string/jumbo v6, ","

    const-string/jumbo v8, "%20"

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3, v0}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_6
    iget-object v0, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->SwitchHint:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v0, v3, :cond_8

    .line 435
    sget-boolean v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->b:Z

    if-nez v0, :cond_2

    .line 438
    sput-boolean v1, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->b:Z

    .line 439
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    const-string/jumbo v0, "mini_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/window/b;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/window/b;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    :goto_2
    move v7, v0

    goto/16 :goto_1

    :cond_7
    move v0, v7

    goto :goto_2

    .line 441
    :cond_8
    iget-object v0, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Guide:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v0, v3, :cond_a

    .line 442
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v7

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    const-string/jumbo v0, "mini_keeppre_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    const-string/jumbo v4, "show"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->M:Z

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/c;

    invoke-direct {v1, p0, v3, v0}, Lcom/alipay/android/app/ui/quickpay/window/c;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V

    instance-of v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->F:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->j()V

    goto/16 :goto_1

    .line 445
    :cond_a
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->v:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->s:Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;Lcom/alipay/android/app/ui/quickpay/window/IFormShower;Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto/16 :goto_1

    .line 448
    :catch_0
    move-exception v0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 450
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 804
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->G:Lcom/alipay/android/app/json/JSONObject;

    .line 159
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->dispose()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    .line 469
    return-void
.end method

.method public final c(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->H:Lcom/alipay/android/app/json/JSONObject;

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a()Ljava/util/List;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 825
    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Dismiss:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    .line 826
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 475
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->dispose()V

    goto :goto_0

    .line 481
    :cond_0
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    .line 482
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    .line 483
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    .line 484
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->s:Ljava/lang/Object;

    .line 485
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->b()V

    .line 487
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->P:Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->P:Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->dispose()V

    .line 489
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->P:Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    .line 493
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    .line 494
    return-void
.end method

.method protected final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->F:Ljava/util/List;

    return-object v0
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 830
    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Back:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    .line 831
    return-void
.end method

.method protected final f()Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->H:Lcom/alipay/android/app/json/JSONObject;

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x0

    .line 555
    :goto_0
    return-object v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->H:Lcom/alipay/android/app/json/JSONObject;

    .line 544
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    if-nez v1, :cond_1

    .line 545
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    .line 547
    :cond_1
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 550
    :try_start_0
    const-string/jumbo v2, "form"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 551
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->a(Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->K:Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 641
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->g()V

    .line 645
    return-void
.end method

.method public getByAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 981
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-object v0

    .line 985
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d()Ljava/util/List;

    move-result-object v3

    .line 986
    if-eqz v3, :cond_0

    .line 990
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 991
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 992
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 993
    instance-of v4, v0, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

    if-eqz v4, :cond_2

    .line 995
    invoke-interface {v0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 996
    if-nez v4, :cond_3

    if-nez p2, :cond_3

    .line 997
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 998
    :cond_3
    if-eqz v4, :cond_2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 999
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 1003
    goto :goto_0
.end method

.method public getById(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 965
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 976
    :cond_1
    :goto_0
    return-object v0

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 972
    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    .line 976
    goto :goto_0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    return-object v0
.end method

.method protected final h()V
    .locals 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->p:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_0

    .line 685
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->D:I

    if-lez v0, :cond_1

    .line 686
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 687
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b()I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 688
    const/16 v1, 0xf

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 689
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/e;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V

    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 699
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->D:I

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/MspMessage;I)V

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->p:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    .line 703
    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/f;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/g;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 756
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    if-nez v0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/h;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/i;-><init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 794
    return-void
.end method

.method protected final m()Lcom/alipay/android/app/ui/quickpay/window/UISubForm;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->J:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    return-object v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 835
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public readSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 851
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ReadSms:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    .line 852
    invoke-virtual {v1, p1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Ljava/lang/String;)V

    .line 856
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    const/4 v0, 0x0

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    invoke-direct {v2, v1}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    .line 863
    return-void

    .line 858
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a_(Ljava/lang/String;)V

    .line 821
    :cond_0
    return-void
.end method

.method public validate()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1008
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d()Ljava/util/List;

    move-result-object v0

    .line 1009
    if-nez v0, :cond_0

    .line 1020
    :goto_0
    return v1

    .line 1014
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 1015
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1016
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 1020
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
