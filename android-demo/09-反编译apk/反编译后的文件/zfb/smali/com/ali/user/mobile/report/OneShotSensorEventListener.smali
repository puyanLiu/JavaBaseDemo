.class public Lcom/ali/user/mobile/report/OneShotSensorEventListener;
.super Ljava/lang/Object;
.source "OneShotSensorEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static tempOneShotSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/ali/user/mobile/report/SensorInfoRecorder;

.field private b:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "OneShotSensorEventListener.java"

    const-class v2, Lcom/ali/user/mobile/report/OneShotSensorEventListener;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "unregisterListener"

    const-string/jumbo v3, "android.hardware.SensorManager"

    const-string/jumbo v4, "android.hardware.SensorEventListener:android.hardware.Sensor"

    const-string/jumbo v5, "listener:sensor"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/ali/user/mobile/report/SensorInfoRecorder;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->b:Landroid/hardware/SensorManager;

    .line 27
    iput-object p2, p0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->a:Lcom/ali/user/mobile/report/SensorInfoRecorder;

    .line 28
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->b:Landroid/hardware/SensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    sget-object v2, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "Monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Call SensorManager.unRegisterListener() at: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->a:Lcom/ali/user/mobile/report/SensorInfoRecorder;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->a:Lcom/ali/user/mobile/report/SensorInfoRecorder;

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/report/SensorInfoRecorder;->recordInfo(Landroid/hardware/SensorEvent;)V

    .line 44
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/report/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 46
    :goto_0
    return-void

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
