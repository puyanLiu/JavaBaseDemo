.class public final enum Lcom/googlecode/androidannotations/annotations/WakeLock$Level;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/androidannotations/annotations/WakeLock$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FULL_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

.field public static final enum PARTIAL_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

.field public static final enum SCREEN_BRIGHT_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

.field public static final enum SCREEN_DIM_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

.field private static final synthetic a:[Lcom/googlecode/androidannotations/annotations/WakeLock$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    const-string/jumbo v1, "FULL_WAKE_LOCK"

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->FULL_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    new-instance v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    const-string/jumbo v1, "PARTIAL_WAKE_LOCK"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->PARTIAL_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    new-instance v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    const-string/jumbo v1, "SCREEN_BRIGHT_WAKE_LOCK"

    invoke-direct {v0, v1, v4}, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->SCREEN_BRIGHT_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    new-instance v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    const-string/jumbo v1, "SCREEN_DIM_WAKE_LOCK"

    invoke-direct {v0, v1, v5}, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->SCREEN_DIM_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    sget-object v1, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->FULL_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->PARTIAL_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->SCREEN_BRIGHT_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->SCREEN_DIM_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    aput-object v1, v0, v5

    sput-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->a:[Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/androidannotations/annotations/WakeLock$Level;
    .locals 1

    const-class v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/androidannotations/annotations/WakeLock$Level;
    .locals 1

    sget-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->a:[Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    invoke-virtual {v0}, [Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/androidannotations/annotations/WakeLock$Level;

    return-object v0
.end method
