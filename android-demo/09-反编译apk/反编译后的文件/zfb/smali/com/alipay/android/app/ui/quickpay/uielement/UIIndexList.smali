.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Landroid/widget/ListView;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->I:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->H:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 85
    const-string/jumbo v0, "listview"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->H:Landroid/widget/ListView;

    .line 86
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->I:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 87
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->H:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->H:Landroid/widget/ListView;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/r;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    const-string/jumbo v0, "letterView"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->J:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;

    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->J:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->setLetter(Ljava/util/ArrayList;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->J:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/s;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/s;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->setOnItemClickListener(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;)V

    .line 126
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 45
    :try_start_0
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v5

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->I:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->K:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v5}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v6

    move v4, v3

    .line 51
    :goto_0
    if-ge v4, v6, :cond_2

    .line 53
    invoke-virtual {v5, v4}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v7

    .line 58
    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v8

    move v2, v3

    .line 59
    :goto_1
    if-ge v2, v8, :cond_1

    .line 60
    new-instance v9, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;

    invoke-direct {v9}, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;-><init>()V

    .line 61
    if-nez v2, :cond_0

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->a:Z

    .line 63
    iput-object v0, v9, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->b:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-virtual {v7, v2}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v10

    .line 66
    invoke-virtual {v10}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-virtual {v10, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 69
    iput-object v1, v9, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->c:Ljava/lang/String;

    .line 70
    iput-object v10, v9, Lcom/alipay/android/app/ui/quickpay/widget/RegionAdapter$RegionInfo;->d:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->I:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 80
    :cond_2
    return-void
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final p()I
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "mini_indexlist_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
