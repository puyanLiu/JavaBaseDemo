.class public final enum Lorg/achartengine/chart/PointStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/achartengine/chart/PointStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CIRCLE:Lorg/achartengine/chart/PointStyle;

.field public static final enum DIAMOND:Lorg/achartengine/chart/PointStyle;

.field public static final enum POINT:Lorg/achartengine/chart/PointStyle;

.field public static final enum SQUARE:Lorg/achartengine/chart/PointStyle;

.field public static final enum TRIANGLE:Lorg/achartengine/chart/PointStyle;

.field public static final enum X:Lorg/achartengine/chart/PointStyle;

.field private static final synthetic b:[Lorg/achartengine/chart/PointStyle;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/achartengine/chart/PointStyle;

    const-string/jumbo v1, "X"

    const-string/jumbo v2, "x"

    invoke-direct {v0, v1, v4, v2}, Lorg/achartengine/chart/PointStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/chart/PointStyle;->X:Lorg/achartengine/chart/PointStyle;

    new-instance v0, Lorg/achartengine/chart/PointStyle;

    const-string/jumbo v1, "CIRCLE"

    const-string/jumbo v2, "circle"

    invoke-direct {v0, v1, v5, v2}, Lorg/achartengine/chart/PointStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    new-instance v0, Lorg/achartengine/chart/PointStyle;

    const-string/jumbo v1, "TRIANGLE"

    const-string/jumbo v2, "triangle"

    invoke-direct {v0, v1, v6, v2}, Lorg/achartengine/chart/PointStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/chart/PointStyle;->TRIANGLE:Lorg/achartengine/chart/PointStyle;

    new-instance v0, Lorg/achartengine/chart/PointStyle;

    const-string/jumbo v1, "SQUARE"

    const-string/jumbo v2, "square"

    invoke-direct {v0, v1, v7, v2}, Lorg/achartengine/chart/PointStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/chart/PointStyle;->SQUARE:Lorg/achartengine/chart/PointStyle;

    new-instance v0, Lorg/achartengine/chart/PointStyle;

    const-string/jumbo v1, "DIAMOND"

    const-string/jumbo v2, "diamond"

    invoke-direct {v0, v1, v8, v2}, Lorg/achartengine/chart/PointStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/chart/PointStyle;->DIAMOND:Lorg/achartengine/chart/PointStyle;

    new-instance v0, Lorg/achartengine/chart/PointStyle;

    const-string/jumbo v1, "POINT"

    const/4 v2, 0x5

    const-string/jumbo v3, "point"

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/chart/PointStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/achartengine/chart/PointStyle;->POINT:Lorg/achartengine/chart/PointStyle;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/achartengine/chart/PointStyle;

    sget-object v1, Lorg/achartengine/chart/PointStyle;->X:Lorg/achartengine/chart/PointStyle;

    aput-object v1, v0, v4

    sget-object v1, Lorg/achartengine/chart/PointStyle;->CIRCLE:Lorg/achartengine/chart/PointStyle;

    aput-object v1, v0, v5

    sget-object v1, Lorg/achartengine/chart/PointStyle;->TRIANGLE:Lorg/achartengine/chart/PointStyle;

    aput-object v1, v0, v6

    sget-object v1, Lorg/achartengine/chart/PointStyle;->SQUARE:Lorg/achartengine/chart/PointStyle;

    aput-object v1, v0, v7

    sget-object v1, Lorg/achartengine/chart/PointStyle;->DIAMOND:Lorg/achartengine/chart/PointStyle;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/achartengine/chart/PointStyle;->POINT:Lorg/achartengine/chart/PointStyle;

    aput-object v2, v0, v1

    sput-object v0, Lorg/achartengine/chart/PointStyle;->b:[Lorg/achartengine/chart/PointStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/achartengine/chart/PointStyle;->a:Ljava/lang/String;

    return-void
.end method

.method public static getIndexForName(Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {}, Lorg/achartengine/chart/PointStyle;->values()[Lorg/achartengine/chart/PointStyle;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    aget-object v5, v3, v1

    iget-object v5, v5, Lorg/achartengine/chart/PointStyle;->a:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getPointStyleForName(Ljava/lang/String;)Lorg/achartengine/chart/PointStyle;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lorg/achartengine/chart/PointStyle;->values()[Lorg/achartengine/chart/PointStyle;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    aget-object v4, v2, v1

    iget-object v4, v4, Lorg/achartengine/chart/PointStyle;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v0, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/achartengine/chart/PointStyle;
    .locals 1

    const-class v0, Lorg/achartengine/chart/PointStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/achartengine/chart/PointStyle;

    return-object v0
.end method

.method public static values()[Lorg/achartengine/chart/PointStyle;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/achartengine/chart/PointStyle;->b:[Lorg/achartengine/chart/PointStyle;

    array-length v1, v0

    new-array v2, v1, [Lorg/achartengine/chart/PointStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/chart/PointStyle;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/achartengine/chart/PointStyle;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
