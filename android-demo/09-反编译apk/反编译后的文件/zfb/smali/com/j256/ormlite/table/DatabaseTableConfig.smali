.class public Lcom/j256/ormlite/table/DatabaseTableConfig;
.super Ljava/lang/Object;
.source "DatabaseTableConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private fieldConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;"
        }
    .end annotation
.end field

.field private fieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 47
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 53
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    .line 40
    return-void
.end method

.method private convertFieldConfigs(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/util/List;)[Lcom/j256/ormlite/field/FieldType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)[",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No fields were configured for class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 225
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    :goto_1
    if-nez v1, :cond_1

    .line 241
    :goto_2
    if-nez v0, :cond_3

    .line 242
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find declared field with name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    const-string/jumbo v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 235
    if-eqz v3, :cond_2

    .line 236
    new-instance v0, Lcom/j256/ormlite/field/FieldType;

    iget-object v5, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/field/FieldType;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V

    goto :goto_2

    .line 233
    :catch_0
    move-exception v2

    .line 227
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 245
    :cond_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method private static extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    .line 206
    :goto_0
    if-nez v1, :cond_0

    .line 214
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No fields have a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string/jumbo v2, " annotation in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    .line 206
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 207
    :cond_1
    aget-object v5, v3, v0

    .line 208
    invoke-static {p0, p2, v5, p1}, Lcom/j256/ormlite/field/FieldType;->createFieldType(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    .line 209
    if-eqz v5, :cond_2

    .line 210
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public static extractTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 153
    const-class v0, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTable;

    .line 154
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 156
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    invoke-static {p0}, Lcom/j256/ormlite/misc/JavaxPersistence;->getEntityName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static findNoArgConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t find a no-arg constructor for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t lookup declared constructors for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 183
    :cond_0
    aget-object v3, v1, v0

    .line 184
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_2

    .line 185
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_1
    return-object v3

    .line 189
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not open access to constructor for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t find a no-arg constructor for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    const-string/jumbo v2, ".  Missing static on inner class?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    new-instance v1, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    return-object v1
.end method


# virtual methods
.method public extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->convertFieldConfigs(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/util/List;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    goto :goto_0
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->findNoArgConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->constructor:Ljava/lang/reflect/Constructor;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getFieldTypes(Lcom/j256/ormlite/db/DatabaseType;)[Lcom/j256/ormlite/field/FieldType;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Field types have not been extracted in table config"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dataClass was never set on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 67
    :cond_1
    return-void
.end method

.method public setConstructor(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->constructor:Ljava/lang/reflect/Constructor;

    .line 134
    return-void
.end method

.method public setDataClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->dataClass:Ljava/lang/Class;

    .line 76
    return-void
.end method

.method public setFieldConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->fieldConfigs:Ljava/util/List;

    .line 91
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->tableName:Ljava/lang/String;

    .line 87
    return-void
.end method
