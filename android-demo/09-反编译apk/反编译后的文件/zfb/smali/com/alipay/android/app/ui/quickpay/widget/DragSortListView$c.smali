.class final Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;
.super Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    .line 1227
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    .line 1228
    return-void
.end method

.method private e()I
    .locals 4

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1241
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1242
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1243
    const/4 v0, -0x1

    .line 1244
    if-eqz v2, :cond_2

    .line 1245
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e:I

    if-ne v0, v3, :cond_0

    .line 1246
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1259
    :goto_0
    return v0

    .line 1247
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e:I

    if-ge v0, v3, :cond_1

    .line 1249
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1252
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1256
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->d:I

    .line 1233
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e:I

    .line 1234
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$102(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I

    .line 1235
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:F

    .line 1236
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->g:F

    .line 1237
    return-void
.end method

.method public final a(F)V
    .locals 5

    .prologue
    .line 1264
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->e()I

    move-result v0

    .line 1265
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 1266
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 1267
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 1268
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    .line 1269
    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->g:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    .line 1270
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->f:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1271
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1272
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)V

    .line 1274
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    .line 1279
    return-void
.end method
