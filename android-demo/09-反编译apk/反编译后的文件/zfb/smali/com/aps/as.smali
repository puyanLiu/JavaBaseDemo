.class final Lcom/aps/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private synthetic a:Lcom/aps/aa;


# direct methods
.method constructor <init>(Lcom/aps/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/as;->a:Lcom/aps/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/location/Location;)Z
    .locals 4

    if-eqz p0, :cond_0

    const-string/jumbo v0, "gps"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_5

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/aps/as;->a(Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {}, Lcom/aps/aa;->g()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-static {}, Lcom/aps/aa;->h()I

    move-result v2

    invoke-static {v2}, Lcom/aps/ba;->a(I)V

    invoke-static {}, Lcom/aps/aa;->h()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/aps/ba;->b(I)V

    :goto_2
    iget-object v2, p0, Lcom/aps/as;->a:Lcom/aps/aa;

    invoke-static {v2}, Lcom/aps/aa;->b(Lcom/aps/aa;)Lcom/aps/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aps/az;->a()Z

    invoke-static {p1}, Lcom/aps/as;->a(Landroid/location/Location;)Z

    iget-object v2, p0, Lcom/aps/as;->a:Lcom/aps/aa;

    invoke-static {v2}, Lcom/aps/aa;->b(Lcom/aps/aa;)Lcom/aps/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aps/az;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/aps/as;->a(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/location/Location;->setTime(J)V

    iget-object v2, p0, Lcom/aps/as;->a:Lcom/aps/aa;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/aps/aa;->a(Lcom/aps/aa;J)J

    iget-object v2, p0, Lcom/aps/as;->a:Lcom/aps/aa;

    invoke-static {v2, p1}, Lcom/aps/aa;->a(Lcom/aps/aa;Landroid/location/Location;)Landroid/location/Location;

    iget-object v2, p0, Lcom/aps/as;->a:Lcom/aps/aa;

    invoke-static {v2}, Lcom/aps/aa;->c(Lcom/aps/aa;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/aps/as;->a:Lcom/aps/aa;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v0, v1}, Lcom/aps/aa;->a(Lcom/aps/aa;Landroid/location/Location;IJ)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {}, Lcom/aps/aa;->i()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-static {}, Lcom/aps/aa;->j()I

    move-result v2

    invoke-static {v2}, Lcom/aps/ba;->a(I)V

    invoke-static {}, Lcom/aps/aa;->j()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/aps/ba;->b(I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/aps/aa;->k()I

    move-result v2

    invoke-static {v2}, Lcom/aps/ba;->a(I)V

    invoke-static {}, Lcom/aps/aa;->k()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/aps/ba;->b(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/aps/as;->a:Lcom/aps/aa;

    const-string/jumbo v1, "new location in indoor collect"

    invoke-static {v0, v1}, Lcom/aps/aa;->a(Lcom/aps/aa;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_5
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
