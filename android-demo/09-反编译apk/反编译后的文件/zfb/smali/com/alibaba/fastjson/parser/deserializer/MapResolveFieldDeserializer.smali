.class public final Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
