.class public final enum Lcom/alipay/android/app/json/JsonToken;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/json/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEGIN_ARRAY:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum BOOLEAN:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum END_ARRAY:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum END_DOCUMENT:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum END_OBJECT:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum NAME:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum NULL:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum NUMBER:Lcom/alipay/android/app/json/JsonToken;

.field public static final enum STRING:Lcom/alipay/android/app/json/JsonToken;

.field private static final synthetic a:[Lcom/alipay/android/app/json/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->BEGIN_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    .line 34
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->END_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    .line 41
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->BEGIN_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    .line 47
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->END_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    .line 54
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "NAME"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->NAME:Lcom/alipay/android/app/json/JsonToken;

    .line 59
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    .line 65
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->NUMBER:Lcom/alipay/android/app/json/JsonToken;

    .line 70
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->BOOLEAN:Lcom/alipay/android/app/json/JsonToken;

    .line 75
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->NULL:Lcom/alipay/android/app/json/JsonToken;

    .line 82
    new-instance v0, Lcom/alipay/android/app/json/JsonToken;

    const-string/jumbo v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->END_DOCUMENT:Lcom/alipay/android/app/json/JsonToken;

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->BEGIN_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->END_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->BEGIN_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->END_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->NAME:Lcom/alipay/android/app/json/JsonToken;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->NUMBER:Lcom/alipay/android/app/json/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->BOOLEAN:Lcom/alipay/android/app/json/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->NULL:Lcom/alipay/android/app/json/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->END_DOCUMENT:Lcom/alipay/android/app/json/JsonToken;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/json/JsonToken;->a:[Lcom/alipay/android/app/json/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/json/JsonToken;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/android/app/json/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/JsonToken;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/json/JsonToken;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->a:[Lcom/alipay/android/app/json/JsonToken;

    invoke-virtual {v0}, [Lcom/alipay/android/app/json/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/json/JsonToken;

    return-object v0
.end method
