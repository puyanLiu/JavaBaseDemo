.class public Lcom/amap/api/location/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field a:Lcom/amap/api/location/b$a;

.field b:Lcom/amap/api/location/AMapLocalWeatherListener;

.field c:Lcom/amap/api/location/a;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/AMapLocalWeatherListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Lcom/amap/api/location/AMapLocalWeatherListener;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/location/a;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/b;->i:Z

    iput-object p2, p0, Lcom/amap/api/location/b;->f:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    new-instance v0, Lcom/amap/api/location/b$a;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/location/b$a;-><init>(Lcom/amap/api/location/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherLive;
    .locals 8

    new-instance v1, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocalWeatherLive;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lives"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "weather"

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "temperature"

    invoke-virtual {p0, v0, v3}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "winddirection"

    invoke-virtual {p0, v0, v4}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "windpower"

    invoke-virtual {p0, v0, v5}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "humidity"

    invoke-virtual {p0, v0, v6}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "reporttime"

    invoke-virtual {p0, v0, v7}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->f(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/amap/api/location/AMapLocalWeatherLive;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/amap/api/location/AMapLocalWeatherLive;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/amap/api/location/AMapLocalWeatherLive;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCity(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->setProvince(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Lcom/amap/api/location/core/AMapLocException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherForecast;
    .locals 18

    new-instance v4, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-direct {v4}, Lcom/amap/api/location/AMapLocalWeatherForecast;-><init>()V

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "forecasts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "reporttime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Ljava/lang/String;)V

    const-string/jumbo v3, "casts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    new-instance v7, Lcom/amap/api/location/AMapLocalDayWeatherForecast;

    invoke-direct {v7}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;-><init>()V

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v8, "date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "week"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "dayweather"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "nightweather"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "daytemp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "nighttemp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "daywind"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "nightwind"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "daypower"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "nightpower"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/location/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->c(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->f(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->g(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->h(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->i(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->j(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setCity(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setCityCode(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/location/AMapLocalDayWeatherForecast;->setProvince(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v4, v2}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Lcom/amap/api/location/core/AMapLocException;)V

    invoke-virtual {v2}, Lcom/amap/api/location/core/AMapLocException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v4, v6}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Ljava/util/List;)V

    :cond_1
    return-object v4
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(ILcom/amap/api/location/AMapLocalWeatherListener;Lcom/amap/api/location/AMapLocation;)V
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iput p1, p0, Lcom/amap/api/location/b;->g:I

    iput-object p2, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/AMapLocalWeatherListener;

    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/b;->d:Ljava/util/List;

    iget v1, p0, Lcom/amap/api/location/b;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/b;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/location/b;->h:Lcom/amap/api/location/AMapLocalWeatherListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/location/b;->i:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/b;->i:Z

    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    const-wide/16 v1, -0x1

    const/high16 v3, 0x41200000    # 10.0f

    const-string/jumbo v5, "lbs"

    const/4 v6, 0x1

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-ne p1, v0, :cond_5

    :try_start_1
    const-string/jumbo v0, "base"

    invoke-virtual {p0, p3, v0, p2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "all"

    invoke-virtual {p0, p3, v0, p2}, Lcom/amap/api/location/b;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/amap/api/location/AMapLocalWeatherListener;)V
    .locals 7

    iput-object p3, p0, Lcom/amap/api/location/b;->b:Lcom/amap/api/location/AMapLocalWeatherListener;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "output=json&ec=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&extensions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "http://restapi.amap.com/v3/weather/weatherInfo?"

    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v1}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/aps/n;->a()Lcom/aps/n;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/location/b;->f:Landroid/content/Context;

    const-string/jumbo v6, "sea"

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/aps/n;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string/jumbo v2, "base"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/amap/api/location/b;->a(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherLive;

    move-result-object v2

    :goto_2
    invoke-virtual {v2, v1}, Lcom/amap/api/location/AMapLocalWeatherLive;->a(Lcom/amap/api/location/core/AMapLocException;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCity(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocalWeatherLive;->setProvince(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v2, v3}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const-string/jumbo v2, "all"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0, p1}, Lcom/amap/api/location/b;->b(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocalWeatherForecast;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocalWeatherForecast;->a(Lcom/amap/api/location/core/AMapLocException;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    new-instance v2, Lcom/amap/api/location/AMapLocalWeatherLive;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocalWeatherLive;-><init>()V

    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/amap/api/location/AMapLocalWeatherForecast;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocalWeatherForecast;-><init>()V

    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/b;->i:Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/b;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v2, "\u5b9a\u4f4d\u5931\u8d25\u65e0\u6cd5\u83b7\u53d6\u57ce\u5e02\u4fe1\u606f"

    invoke-direct {v1, v2}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/location/b;->a:Lcom/amap/api/location/b$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/b$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
