.class Lcom/alibaba/fastjson/JSONStreamContext;
.super Ljava/lang/Object;


# static fields
.field static final ArrayValue:I = 0x3ed

.field static final PropertyKey:I = 0x3ea

.field static final PropertyValue:I = 0x3eb

.field static final StartArray:I = 0x3ec

.field static final StartObject:I = 0x3e9


# instance fields
.field private final a:Lcom/alibaba/fastjson/JSONStreamContext;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONStreamContext;->a:Lcom/alibaba/fastjson/JSONStreamContext;

    iput p2, p0, Lcom/alibaba/fastjson/JSONStreamContext;->b:I

    return-void
.end method


# virtual methods
.method public getParent()Lcom/alibaba/fastjson/JSONStreamContext;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->a:Lcom/alibaba/fastjson/JSONStreamContext;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/JSONStreamContext;->b:I

    return v0
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/fastjson/JSONStreamContext;->b:I

    return-void
.end method
