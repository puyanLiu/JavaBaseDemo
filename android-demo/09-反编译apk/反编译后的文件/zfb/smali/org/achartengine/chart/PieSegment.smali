.class public Lorg/achartengine/chart/PieSegment;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/achartengine/chart/PieSegment;->a:F

    add-float v0, p4, p3

    iput v0, p0, Lorg/achartengine/chart/PieSegment;->b:F

    iput p1, p0, Lorg/achartengine/chart/PieSegment;->c:I

    iput p2, p0, Lorg/achartengine/chart/PieSegment;->d:F

    return-void
.end method


# virtual methods
.method protected getDataIndex()I
    .locals 1

    iget v0, p0, Lorg/achartengine/chart/PieSegment;->c:I

    return v0
.end method

.method protected getEndAngle()F
    .locals 1

    iget v0, p0, Lorg/achartengine/chart/PieSegment;->b:F

    return v0
.end method

.method protected getStartAngle()F
    .locals 1

    iget v0, p0, Lorg/achartengine/chart/PieSegment;->a:F

    return v0
.end method

.method protected getValue()F
    .locals 1

    iget v0, p0, Lorg/achartengine/chart/PieSegment;->d:F

    return v0
.end method

.method public isInSegment(D)Z
    .locals 10

    const/4 v0, 0x1

    const-wide v8, 0x4076800000000000L    # 360.0

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->a:F

    float-to-double v1, v1

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->b:F

    float-to-double v1, v1

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    rem-double v5, p1, v8

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->a:F

    float-to-double v3, v1

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->b:F

    float-to-double v1, v1

    :goto_1
    cmpl-double v7, v1, v8

    if-gtz v7, :cond_3

    cmpl-double v3, v5, v3

    if-ltz v3, :cond_2

    cmpg-double v1, v5, v1

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sub-double/2addr v3, v8

    sub-double/2addr v1, v8

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDataIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mStartAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mEndAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
