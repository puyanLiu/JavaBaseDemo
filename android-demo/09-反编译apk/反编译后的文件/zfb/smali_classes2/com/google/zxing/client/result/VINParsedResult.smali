.class public final Lcom/google/zxing/client/result/VINParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:C

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->VIN:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lcom/google/zxing/client/result/VINParsedResult;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/VINParsedResult;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/result/VINParsedResult;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/zxing/client/result/VINParsedResult;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/zxing/client/result/VINParsedResult;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/zxing/client/result/VINParsedResult;->f:Ljava/lang/String;

    iput p7, p0, Lcom/google/zxing/client/result/VINParsedResult;->g:I

    iput-char p8, p0, Lcom/google/zxing/client/result/VINParsedResult;->h:C

    iput-object p9, p0, Lcom/google/zxing/client/result/VINParsedResult;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayResult()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->h:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/result/VINParsedResult;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getModelYear()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->g:I

    return v0
.end method

.method public final getPlantCode()C
    .locals 1

    iget-char v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->h:C

    return v0
.end method

.method public final getSequentialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getVIN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getVehicleAttributes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getVehicleDescriptorSection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getVehicleIdentifierSection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorldManufacturerID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/VINParsedResult;->b:Ljava/lang/String;

    return-object v0
.end method
