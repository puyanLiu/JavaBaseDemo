.class public Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;


# instance fields
.field private final a:Landroid/database/DataSetObservable;

.field private final b:Landroid/widget/ListAdapter;

.field private c:I

.field private d:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;

.field mHeaderViewInfos:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/database/DataSetObservable;

    invoke-direct {v2}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a:Landroid/database/DataSetObservable;

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->d:I

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->f:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->g:Z

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    instance-of v2, p3, Landroid/widget/Filterable;

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->e:Z

    if-nez p1, :cond_0

    sget-object v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    :goto_0
    if-nez p2, :cond_1

    sget-object v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private a()I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    mul-int/2addr v0, v2

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    sub-int v2, p1, v0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    sub-int v0, v2, v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    rem-int v2, v0, v2

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v3, v2

    :goto_0
    const/4 v0, -0x2

    if-ge p1, v1, :cond_0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    rem-int v4, p1, v4

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    :cond_0
    sub-int v4, p1, v1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a()I

    move-result v1

    if-ltz v4, :cond_1

    if-ge v4, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    :cond_1
    :goto_1
    sub-int v1, v4, v1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    rem-int v4, v1, v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    sget-boolean v1, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->access$100()Ljava/lang/String;

    const-string/jumbo v1, "getItemViewType: pos: %s, result: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->access$100()Ljava/lang/String;

    const-string/jumbo v3, "getView: %s, reused: %s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    mul-int/2addr v0, v1

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    rem-int v1, p1, v1

    if-nez v1, :cond_2

    move-object p2, v0

    :goto_1
    return-object p2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_4
    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_6
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_7
    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    div-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    rem-int v1, p1, v1

    if-nez v1, :cond_8

    move-object p2, v0

    goto :goto_1

    :cond_8
    if-nez p2, :cond_9

    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_9
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    sget-boolean v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->access$100()Ljava/lang/String;

    const-string/jumbo v2, "getViewTypeCount: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    mul-int/2addr v0, v3

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    div-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    sub-int v3, p1, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    sub-int v0, v3, v0

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    rem-int v3, v0, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    div-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public setNumColumns(I)V
    .locals 1

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->c:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setRowHeight(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->d:I

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
