.class public abstract Lcom/alibaba/fastjson/serializer/BeforeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/SerializeFilter;


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->b:Ljava/lang/ThreadLocal;

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->c:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->b:Ljava/lang/ThreadLocal;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public abstract writeBefore(Ljava/lang/Object;)V
.end method

.method protected final writeKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeKeyValue(CLjava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;->b:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;->c:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
