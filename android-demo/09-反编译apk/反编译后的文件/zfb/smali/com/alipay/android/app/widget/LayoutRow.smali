.class public final Lcom/alipay/android/app/widget/LayoutRow;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/alipay/android/app/widget/LayoutRow;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/alipay/android/app/widget/LayoutRow;->a()V

    .line 34
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 37
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/LayoutRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "msp_debug_layout_row_frame"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/widget/LayoutRow;->a:Landroid/graphics/Paint;

    .line 41
    iget-object v1, p0, Lcom/alipay/android/app/widget/LayoutRow;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v1, p0, Lcom/alipay/android/app/widget/LayoutRow;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 53
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_ROW_FRAME:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/LayoutRow;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/LayoutRow;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/widget/LayoutRow;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 77
    instance-of v0, p1, Lcom/alipay/android/app/widget/LayoutColumn;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/alipay/android/app/widget/LayoutColumn;

    .line 79
    invoke-virtual {v0}, Lcom/alipay/android/app/widget/LayoutColumn;->getWidthFixValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 80
    const/4 p3, 0x0

    move v3, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 83
    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 85
    return-void

    :cond_0
    move v3, p3

    goto :goto_0
.end method
