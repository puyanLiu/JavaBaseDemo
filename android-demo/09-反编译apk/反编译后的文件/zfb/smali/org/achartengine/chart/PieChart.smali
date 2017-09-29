.class public Lorg/achartengine/chart/PieChart;
.super Lorg/achartengine/chart/RoundChart;


# instance fields
.field private a:Lorg/achartengine/chart/PieMapper;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/RoundChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    new-instance v0, Lorg/achartengine/chart/PieMapper;

    invoke-direct {v0}, Lorg/achartengine/chart/PieMapper;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/PieChart;->a:Lorg/achartengine/chart/PieMapper;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 46

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/DefaultRenderer;->isAntialiasing()Z

    move-result v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    div-int/lit8 v2, p5, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/chart/PieChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v10

    add-int v6, p2, p4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v1}, Lorg/achartengine/model/CategorySeries;->getItemCount()I

    move-result v45

    const-wide/16 v2, 0x0

    move/from16 v0, v45

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move-wide/from16 v43, v2

    :goto_0
    move/from16 v0, v45

    if-lt v1, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/DefaultRenderer;->isFitLegend()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v1 .. v12}, Lorg/achartengine/chart/PieChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v10

    move/from16 v42, v10

    :goto_1
    add-int v1, p3, p5

    sub-int v1, v1, v42

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v7 .. v16}, Lorg/achartengine/chart/PieChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getStartAngle()F

    move-result v24

    sub-int v2, v6, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v1, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    const-wide v7, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v5

    float-to-double v7, v5

    mul-double/2addr v2, v7

    double-to-int v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_0

    add-int v2, p2, v6

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_1

    add-int v1, v1, p3

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/PieChart;->a:Lorg/achartengine/chart/PieMapper;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    invoke-virtual {v1, v3, v2, v5}, Lorg/achartengine/chart/PieMapper;->setDimensions(III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/PieChart;->a:Lorg/achartengine/chart/PieMapper;

    move/from16 v0, v45

    invoke-virtual {v1, v0}, Lorg/achartengine/chart/PieMapper;->areAllSegmentPresent(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/PieChart;->a:Lorg/achartengine/chart/PieMapper;

    invoke-virtual {v1}, Lorg/achartengine/chart/PieMapper;->clearPieSegments()V

    :cond_2
    int-to-float v1, v3

    const v5, 0x3f666666    # 0.9f

    mul-float v22, v1, v5

    int-to-float v1, v3

    const v5, 0x3f8ccccd    # 1.1f

    mul-float v10, v1, v5

    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v7, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    sub-int/2addr v7, v3

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    add-int/2addr v8, v3

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    add-int/2addr v9, v3

    int-to-float v9, v9

    invoke-direct {v5, v1, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_3
    move/from16 v0, v45

    if-lt v1, v0, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, v42

    move-object/from16 v11, p6

    invoke-virtual/range {v1 .. v12}, Lorg/achartengine/chart/PieChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/achartengine/chart/PieChart;->drawTitle(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v2, v1}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v2

    add-double v2, v2, v43

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v5, v1}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v43, v2

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x1

    move v2, v1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v7, v1}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isGradientEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Landroid/graphics/RadialGradient;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    int-to-float v9, v9

    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStartColor()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStopColor()I

    move-result v12

    sget-object v13, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v7, v1}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v8, v7

    div-double v8, v8, v43

    const-wide v11, 0x4076800000000000L    # 360.0

    mul-double/2addr v8, v11

    double-to-float v14, v8

    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isHighlighted()Z

    move-result v8

    if-eqz v8, :cond_9

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v14, v9

    add-float v9, v9, v24

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    int-to-double v11, v3

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v11, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v11, v15

    double-to-float v0, v11

    move/from16 v18, v0

    int-to-double v11, v3

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v11, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v11

    double-to-float v8, v8

    move/from16 v0, v18

    invoke-virtual {v5, v0, v8}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v15, 0x1

    move-object/from16 v11, p1

    move-object v12, v5

    move/from16 v13, v24

    move-object/from16 v16, p6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move/from16 v0, v18

    neg-float v9, v0

    neg-float v8, v8

    invoke-virtual {v5, v9, v8}, Landroid/graphics/RectF;->offset(FF)V

    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v8, v1}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v8}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v28

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v23, v10

    move/from16 v25, v14

    move/from16 v26, p2

    move/from16 v27, v6

    move-object/from16 v29, p6

    invoke-virtual/range {v15 .. v31}, Lorg/achartengine/chart/PieChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v8}, Lorg/achartengine/renderer/DefaultRenderer;->isDisplayValues()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v8, v1}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v9, v1}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11, v12}, Lorg/achartengine/chart/PieChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    move/from16 v31, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v32, v22, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v33, v10, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v8}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v38

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v29, v19

    move/from16 v34, v24

    move/from16 v35, v14

    move/from16 v36, p2

    move/from16 v37, v6

    move-object/from16 v39, p6

    invoke-virtual/range {v25 .. v41}, Lorg/achartengine/chart/PieChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V

    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/achartengine/chart/PieChart;->a:Lorg/achartengine/chart/PieMapper;

    move/from16 v0, v24

    invoke-virtual {v8, v1, v7, v0, v14}, Lorg/achartengine/chart/PieMapper;->addPieSegment(IFFF)V

    :cond_7
    add-float v24, v24, v14

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v7

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_9
    const/4 v15, 0x1

    move-object/from16 v11, p1

    move-object v12, v5

    move/from16 v13, v24

    move-object/from16 v16, p6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_a
    move/from16 v42, v10

    goto/16 :goto_1
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/chart/PieChart;->a:Lorg/achartengine/chart/PieMapper;

    invoke-virtual {v0, p1}, Lorg/achartengine/chart/PieMapper;->getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;

    move-result-object v0

    return-object v0
.end method
