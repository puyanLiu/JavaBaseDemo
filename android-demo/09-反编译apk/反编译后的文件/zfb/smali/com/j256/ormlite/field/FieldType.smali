.class public Lcom/j256/ormlite/field/FieldType;
.super Ljava/lang/Object;
.source "FieldType.java"


# static fields
.field private static DEFAULT_VALUE_BOOLEAN:Z = false

.field private static DEFAULT_VALUE_BYTE:B = 0x0t

.field private static DEFAULT_VALUE_CHAR:C = '\u0000'

.field private static DEFAULT_VALUE_DOUBLE:D = 0.0

.field private static DEFAULT_VALUE_FLOAT:F = 0.0f

.field private static DEFAULT_VALUE_INT:I = 0x0

.field private static DEFAULT_VALUE_LONG:J = 0x0L

.field private static DEFAULT_VALUE_SHORT:S = 0x0s

.field public static final FOREIGN_ID_FIELD_SUFFIX:Ljava/lang/String; = "_id"

.field private static final threadLevelCounters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/j256/ormlite/field/FieldType$LevelCounters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final columnName:Ljava/lang/String;

.field private final connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field private dataPersister:Lcom/j256/ormlite/field/DataPersister;

.field private dataTypeConfigObj:Ljava/lang/Object;

.field private defaultValue:Ljava/lang/Object;

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

.field private fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

.field private final fieldGetMethod:Ljava/lang/reflect/Method;

.field private final fieldSetMethod:Ljava/lang/reflect/Method;

.field private foreignDao:Lcom/j256/ormlite/dao/BaseDaoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;"
        }
    .end annotation
.end field

.field private foreignFieldType:Lcom/j256/ormlite/field/FieldType;

.field private foreignIdField:Lcom/j256/ormlite/field/FieldType;

.field private foreignTableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<**>;"
        }
    .end annotation
.end field

.field private final generatedIdSequence:Ljava/lang/String;

.field private final isGeneratedId:Z

.field private final isId:Z

.field private mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/j256/ormlite/field/FieldType$1;

    invoke-direct {v0}, Lcom/j256/ormlite/field/FieldType$1;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/FieldType;->threadLevelCounters:Ljava/lang/ThreadLocal;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 92
    iput-object p2, p0, Lcom/j256/ormlite/field/FieldType;->tableName:Ljava/lang/String;

    .line 93
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v3

    .line 94
    iput-object p3, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    .line 95
    iput-object p5, p0, Lcom/j256/ormlite/field/FieldType;->parentClass:Ljava/lang/Class;

    .line 98
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->postProcess()V

    .line 100
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 102
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    if-nez v0, :cond_4

    .line 103
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getPersisterClass()Ljava/lang/Class;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    const-class v0, Lcom/j256/ormlite/field/types/VoidType;

    if-ne v1, v0, :cond_2

    .line 105
    :cond_0
    invoke-static {p3}, Lcom/j256/ormlite/field/DataPersisterManager;->lookupForField(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    move-object v1, v0

    .line 149
    :goto_0
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignColumnName()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_8

    .line 152
    :cond_1
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/j256/ormlite/field/DataPersister;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is a primitive class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, " but marked as foreign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    :try_start_0
    const-string/jumbo v0, "getSingleton"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 123
    if-nez v0, :cond_3

    .line 124
    new-instance v0, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Static getSingleton method should not return null on class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not find getSingleton static method on class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not run getSingleton method on class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 120
    :catch_2
    move-exception v0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not run getSingleton method on class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 128
    :cond_3
    :try_start_2
    check-cast v0, Lcom/j256/ormlite/field/DataPersister;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v0

    goto/16 :goto_0

    .line 129
    :catch_3
    move-exception v0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not cast result of static getSingleton method to DataPersister from class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 136
    :cond_4
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    .line 137
    invoke-interface {v0, p3}, Lcom/j256/ormlite/field/DataPersister;->isValidForField(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const-string/jumbo v2, "Field class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v2, " is not valid for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->getPrimaryClass()Ljava/lang/Class;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", maybe should be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_6
    if-nez v0, :cond_7

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_1
    const-class v2, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 162
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' should use the @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-class v2, Lcom/j256/ormlite/field/ForeignCollectionField;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " annotation not foreign=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 165
    :cond_8
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    const-class v0, Ljava/util/Collection;

    if-eq v4, v0, :cond_9

    const-class v0, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 167
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field class for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' must be of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-class v2, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or Collection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_9
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 171
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v4, :cond_a

    .line 172
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field class for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' must be a parameterized Collection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_a
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 175
    array-length v0, v0

    if-nez v0, :cond_e

    .line 177
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field class for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string/jumbo v2, "\' must be a parameterized Collection with at least 1 type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_b
    if-nez v1, :cond_e

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v0

    if-nez v0, :cond_e

    .line 181
    const-class v0, [B

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 182
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ORMLite does not know how to store "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    const-string/jumbo v2, "\'. byte[] fields must specify dataType=DataType.BYTE_ARRAY or SERIALIZABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_c
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 185
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ORMLite does not know how to store "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, "\'.  Use another class, custom persister, or to serialize it use dataType=DataType.SERIALIZABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ORMLite does not know how to store "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Use another class or a custom persister."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v0, v2

    .line 193
    :cond_f
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    .line 194
    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    .line 198
    :goto_2
    iput-object p4, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 199
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 200
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isGeneratedId()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 201
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Must specify one of id, generatedId, and generatedIdSequence with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_11
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    goto :goto_2

    .line 204
    :cond_12
    iput-boolean v6, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    .line 205
    iput-boolean v8, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    .line 206
    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    .line 232
    :goto_3
    iget-boolean v0, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 233
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Id field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot also be a foreign object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_14
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isGeneratedId()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 208
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Must specify one of id, generatedId, and generatedIdSequence with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_15
    iput-boolean v6, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    .line 213
    iput-boolean v6, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    .line 214
    invoke-interface {v3}, Lcom/j256/ormlite/db/DatabaseType;->isIdSequenceNeeded()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 215
    invoke-interface {v3, p2, p0}, Lcom/j256/ormlite/db/DatabaseType;->generateIdSequenceName(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    goto :goto_3

    .line 217
    :cond_16
    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    goto :goto_3

    .line 219
    :cond_17
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 220
    iput-boolean v6, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    .line 221
    iput-boolean v6, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    .line 222
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-interface {v3}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_18
    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    goto/16 :goto_3

    .line 228
    :cond_19
    iput-boolean v8, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    .line 229
    iput-boolean v8, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    .line 230
    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    goto/16 :goto_3

    .line 235
    :cond_1a
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUseGetSet()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 236
    invoke-static {p3, v6}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findGetMethod(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    .line 237
    invoke-static {p3, v6}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findSetMethod(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    .line 250
    :goto_4
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isAllowGeneratedIdInsert()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isGeneratedId()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    const-string/jumbo v2, " must be a generated-id if allowGeneratedIdInsert = true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1b
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 241
    :try_start_3
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    .line 247
    :cond_1c
    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    .line 248
    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    goto :goto_4

    .line 243
    :catch_4
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not open access to field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    const-string/jumbo v2, ".  You may have to set useGetSet=true to fix."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1d
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    const-string/jumbo v2, " must have foreign = true if foreignAutoRefresh = true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1e
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoCreate()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string/jumbo v2, " must have foreign = true if foreignAutoCreate = true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1f
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignColumnName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    if-nez v0, :cond_20

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const-string/jumbo v2, " must have foreign = true if foreignColumnName is set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_20
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isVersion()Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz v1, :cond_21

    invoke-interface {v1}, Lcom/j256/ormlite/field/DataPersister;->isValidForVersion()Z

    move-result v0

    if-nez v0, :cond_22

    .line 267
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    const-string/jumbo v2, " is not a valid type to be a version field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_22
    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getMaxForeignAutoRefreshLevel()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v0

    if-nez v0, :cond_23

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    const-string/jumbo v2, " has maxForeignAutoRefreshLevel set but not foreignAutoRefresh is false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_23
    invoke-direct {p0, v3, v1}, Lcom/j256/ormlite/field/FieldType;->assignDataType(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V

    .line 275
    return-void

    :cond_24
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private assignDataType(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V
    .locals 6

    .prologue
    .line 1036
    iput-object p2, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    .line 1037
    if-nez p2, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1040
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Data persister for field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1041
    const-string/jumbo v2, " is null but the field is not a foreign or foreignCollection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    invoke-interface {p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->getFieldConverter(Lcom/j256/ormlite/field/DataPersister;)Lcom/j256/ormlite/field/FieldConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    .line 1046
    iget-boolean v0, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->isValidGeneratedType()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    const-string/jumbo v0, "Generated-id field \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    const-string/jumbo v0, "\' in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    const-string/jumbo v0, " can\'t be type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v2}, Lcom/j256/ormlite/field/DataPersister;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1051
    const-string/jumbo v0, ".  Must be one of: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 1058
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_1
    aget-object v4, v2, v0

    .line 1053
    invoke-virtual {v4}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v5

    .line 1054
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->isValidGeneratedType()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1055
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    :cond_3
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isThrowIfNull()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1061
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be a primitive if set with throwIfNull"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    :cond_4
    iget-boolean v0, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->isAppropriateId()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1064
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is of data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1065
    const-string/jumbo v2, " which cannot be the ID field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_5
    invoke-interface {p2, p0}, Lcom/j256/ormlite/field/DataPersister;->makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataTypeConfigObj:Ljava/lang/Object;

    .line 1068
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 1069
    if-nez v0, :cond_7

    .line 1070
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->defaultValue:Ljava/lang/Object;

    .line 1077
    :cond_6
    :goto_1
    return-void

    .line 1071
    :cond_7
    iget-boolean v1, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    if-eqz v1, :cond_8

    .line 1072
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Field \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' cannot be a generatedId and have a default value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1073
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-direct {v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1075
    :cond_8
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v1, p0, v0}, Lcom/j256/ormlite/field/FieldConverter;->parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->defaultValue:Ljava/lang/Object;

    goto :goto_1
.end method

.method public static createFieldType(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .prologue
    .line 960
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    .line 961
    invoke-static {v0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v4

    .line 962
    if-nez v4, :cond_0

    .line 963
    const/4 v0, 0x0

    .line 965
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/j256/ormlite/field/FieldType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/field/FieldType;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private findForeignFieldType(Ljava/lang/Class;Ljava/lang/Class;Lcom/j256/ormlite/dao/BaseDaoImpl;)Lcom/j256/ormlite/field/FieldType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;)",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionForeignFieldName()Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-virtual {p3}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    const-string/jumbo v2, "Foreign collection class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    const-string/jumbo v2, " for field \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' column-name does not contain a foreign field"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    if-eqz v1, :cond_0

    .line 1025
    const-string/jumbo v2, " named \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    :cond_0
    const-string/jumbo v1, " of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    new-instance v1, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1009
    :cond_1
    aget-object v4, v2, v0

    .line 1010
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 1011
    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1012
    :cond_2
    iget-object v0, v4, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v4, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1014
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Foreign collection object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1015
    const-string/jumbo v2, "\' contains a field of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but it\'s not foreign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1017
    :cond_4
    return-object v4
.end method

.method private isFieldValueDefault(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    const/4 v0, 0x1

    .line 998
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->getJavaDefaultValueDefault()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 508
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;

    move-result-object v0

    .line 520
    if-nez v0, :cond_2

    .line 521
    const/4 v0, 0x0

    .line 525
    :goto_1
    if-eqz v0, :cond_3

    move-object p2, v0

    .line 574
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_9

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not assign object \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' to field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 523
    :cond_2
    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 527
    :cond_3
    if-nez p3, :cond_1

    .line 529
    sget-object v0, Lcom/j256/ormlite/field/FieldType;->threadLevelCounters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;

    .line 531
    iget v1, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    if-nez v1, :cond_4

    .line 532
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getMaxForeignAutoRefreshLevel()I

    move-result v1

    iput v1, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevelMax:I

    .line 535
    :cond_4
    iget v1, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    iget v2, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevelMax:I

    if-lt v1, v2, :cond_5

    .line 537
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignTableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->createObject()Ljava/lang/Object;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, v0, p2, v3, p4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :goto_3
    move-object p2, v0

    .line 570
    goto :goto_2

    .line 545
    :cond_5
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    if-nez v1, :cond_6

    .line 549
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v1

    .line 550
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    .line 548
    invoke-static {v1, v2, v3}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    move-result-object v1

    .line 551
    iput-object v1, p0, Lcom/j256/ormlite/field/FieldType;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    .line 553
    :cond_6
    iget v1, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    .line 555
    :try_start_1
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 558
    :try_start_2
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    invoke-virtual {v1, v2, p2, p4}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 560
    :try_start_3
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 563
    iget v2, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    .line 564
    iget v0, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    if-gtz v0, :cond_7

    .line 565
    sget-object v0, Lcom/j256/ormlite/field/FieldType;->threadLevelCounters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    move-object v0, v1

    goto :goto_3

    .line 559
    :catchall_0
    move-exception v1

    .line 560
    :try_start_4
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 561
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 562
    :catchall_1
    move-exception v1

    .line 563
    iget v2, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    .line 564
    iget v0, v0, Lcom/j256/ormlite/field/FieldType$LevelCounters;->autoRefreshLevel:I

    if-gtz v0, :cond_8

    .line 565
    sget-object v0, Lcom/j256/ormlite/field/FieldType;->threadLevelCounters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 567
    :cond_8
    throw v1

    .line 579
    :catch_1
    move-exception v0

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not assign object \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' to field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 584
    :cond_9
    :try_start_5
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 585
    :catch_2
    move-exception v0

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldSetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on object with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 587
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/field/DataPersister;->convertIdNumber(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    .line 597
    if-nez v0, :cond_0

    .line 598
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for sequence-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 601
    return-object v0
.end method

.method public buildForeignCollection(Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/dao/BaseForeignCollection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FT:",
            "Ljava/lang/Object;",
            "FID:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TFID;)",
            "Lcom/j256/ormlite/dao/BaseForeignCollection",
            "<TFT;TFID;>;"
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 780
    const/4 v0, 0x0

    .line 802
    :goto_0
    return-object v0

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 784
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionEager()Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    new-instance v0, Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 787
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionOrderAscending()Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    .line 786
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/dao/LazyForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    goto :goto_0

    .line 790
    :cond_1
    sget-object v0, Lcom/j256/ormlite/field/FieldType;->threadLevelCounters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;

    .line 791
    iget v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    if-nez v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionMaxEagerLevel()I

    move-result v0

    iput v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevelMax:I

    .line 795
    :cond_2
    iget v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    iget v2, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevelMax:I

    if-lt v0, v2, :cond_3

    .line 797
    new-instance v0, Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 798
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionOrderAscending()Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    .line 797
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/dao/LazyForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    goto :goto_0

    .line 800
    :cond_3
    iget v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    .line 802
    :try_start_0
    new-instance v0, Lcom/j256/ormlite/dao/EagerForeignCollection;

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 803
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignCollectionOrderColumnName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollectionOrderAscending()Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    .line 802
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/dao/EagerForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    iget v1, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    goto :goto_0

    .line 804
    :catchall_0
    move-exception v0

    .line 805
    iget v1, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->foreignCollectionLevel:I

    .line 806
    throw v0
.end method

.method public configDaoInformation(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 285
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v6

    .line 292
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignColumnName()Ljava/lang/String;

    move-result-object v1

    .line 293
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v0

    .line 295
    if-nez v0, :cond_1

    .line 297
    invoke-static {p1, v5}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 298
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v4

    move-object v3, v0

    .line 305
    :goto_0
    if-nez v1, :cond_2

    .line 306
    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 307
    if-nez v0, :cond_3

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Foreign field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have id field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 302
    invoke-static {p1, v0}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 303
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v4

    move-object v3, v0

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {v4, v1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 312
    if-nez v0, :cond_3

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Foreign field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not have field named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_3
    invoke-static {v6, v4, v0}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    move-result-object v1

    move-object v7, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v7

    .line 402
    :goto_1
    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    .line 403
    iput-object v4, p0, Lcom/j256/ormlite/field/FieldType;->foreignTableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 404
    iput-object v2, p0, Lcom/j256/ormlite/field/FieldType;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 405
    iput-object v1, p0, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 406
    iput-object v3, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    .line 409
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/j256/ormlite/field/FieldType;->assignDataType(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V

    .line 412
    :cond_4
    return-void

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 324
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is a primitive class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    const-string/jumbo v2, " but marked as foreign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_7

    .line 330
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 332
    invoke-static {p1, v0}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 343
    :goto_2
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v3

    .line 344
    invoke-virtual {v3}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    .line 345
    if-nez v1, :cond_8

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Foreign field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have id field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_7
    invoke-static {p1, v5}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    goto :goto_2

    .line 348
    :cond_8
    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->isForeignAutoCreate()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v4

    if-nez v4, :cond_9

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string/jumbo v2, ", if foreignAutoCreate = true then class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    const-string/jumbo v2, " must have id field with generatedId = true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    .line 354
    goto/16 :goto_1

    .line 355
    :cond_a
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 356
    const-class v0, Ljava/util/Collection;

    if-eq v5, v0, :cond_b

    const-class v0, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 357
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field class for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' must be of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    const-class v2, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or Collection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_b
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 361
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_c

    .line 362
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field class for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' must be a parameterized Collection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_c
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 365
    array-length v1, v0

    if-nez v1, :cond_d

    .line 367
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Field class for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    const-string/jumbo v2, "\' must be a parameterized Collection with at least 1 type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_d
    aget-object v1, v0, v4

    instance-of v1, v1, Ljava/lang/Class;

    if-nez v1, :cond_e

    .line 371
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Field class for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 372
    const-string/jumbo v3, "\' must be a parameterized Collection whose generic argument is an entity class not: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 373
    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-direct {v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_e
    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Class;

    .line 376
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getForeignTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    .line 378
    if-nez v1, :cond_f

    .line 381
    invoke-static {p1, v0}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 390
    :goto_3
    invoke-direct {p0, v0, p2, v1}, Lcom/j256/ormlite/field/FieldType;->findForeignFieldType(Ljava/lang/Class;Ljava/lang/Class;Lcom/j256/ormlite/dao/BaseDaoImpl;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 393
    goto/16 :goto_1

    .line 386
    :cond_f
    invoke-static {p1, v1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    goto :goto_3

    :cond_10
    move-object v0, v2

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 399
    goto/16 :goto_1
.end method

.method public convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    const/4 v0, 0x0

    .line 660
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v0, p0, p1}, Lcom/j256/ormlite/field/FieldConverter;->javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public convertStringToJavaField(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    const/4 v0, 0x0

    .line 671
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v0, p0, p1, p2}, Lcom/j256/ormlite/field/FieldConverter;->resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public createWithForeignDao(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignDao:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 952
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 971
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 976
    :cond_0
    :goto_0
    return v0

    .line 974
    :cond_1
    check-cast p1, Lcom/j256/ormlite/field/FieldType;

    .line 975
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->parentClass:Ljava/lang/Class;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/j256/ormlite/field/FieldType;->parentClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->parentClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/j256/ormlite/field/FieldType;->parentClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public extractJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 640
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, v0}, Lcom/j256/ormlite/field/FieldType;->extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    :cond_0
    return-object v0
.end method

.method public extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FV:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TFV;"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not get field value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 619
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 620
    :catch_1
    move-exception v0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldGetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public generateId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->generateId()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColumnDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getColumnDefinition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPersister()Lcom/j256/ormlite/field/DataPersister;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    return-object v0
.end method

.method public getDataTypeConfigObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataTypeConfigObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValueIfNotDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FV:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TFV;"
        }
    .end annotation

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 905
    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/FieldType;->isFieldValueDefault(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    const/4 v0, 0x0

    .line 908
    :cond_0
    return-object v0
.end method

.method public getForeignIdField()Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->foreignIdField:Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneratedIdSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaDefaultValueDefault()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 926
    sget-boolean v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_BOOLEAN:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 942
    :goto_0
    return-object v0

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_2

    .line 928
    :cond_1
    sget-byte v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_BYTE:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_4

    .line 930
    :cond_3
    sget-char v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_CHAR:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_6

    .line 932
    :cond_5
    sget-short v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_SHORT:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 933
    :cond_6
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_8

    .line 934
    :cond_7
    sget v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 935
    :cond_8
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_a

    .line 936
    :cond_9
    sget-wide v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_LONG:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 937
    :cond_a
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_c

    .line 938
    :cond_b
    sget v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_FLOAT:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    .line 939
    :cond_c
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_e

    .line 940
    :cond_d
    sget-wide v0, Lcom/j256/ormlite/field/FieldType;->DEFAULT_VALUE_DOUBLE:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    .line 942
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getSqlType()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v0}, Lcom/j256/ormlite/field/FieldConverter;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueIndexName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUniqueIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownEnumVal()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getUnknownEnumValue()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAllowGeneratedIdInsert()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isAllowGeneratedIdInsert()Z

    move-result v0

    return v0
.end method

.method public isArgumentHolderRequired()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isArgumentHolderRequired()Z

    move-result v0

    return v0
.end method

.method public isCanBeNull()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isCanBeNull()Z

    move-result v0

    return v0
.end method

.method public isComparable()Z
    .locals 3

    .prologue
    .line 738
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 749
    :goto_0
    return v0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_1

    .line 746
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal error.  Data-persister is not configured for field.  Please post _full_ exception with associated data objects to mailing list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isComparable()Z

    move-result v0

    goto :goto_0
.end method

.method public isEncryption()Z
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isEncryption()Z

    move-result v0

    return v0
.end method

.method public isEscapedDefaultValue()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isEscapedDefaultValue()Z

    move-result v0

    return v0
.end method

.method public isEscapedValue()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isEscapedValue()Z

    move-result v0

    return v0
.end method

.method public isForeign()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v0

    return v0
.end method

.method public isForeignAutoCreate()Z
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignAutoCreate()Z

    move-result v0

    return v0
.end method

.method public isForeignCollection()Z
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeignCollection()Z

    move-result v0

    return v0
.end method

.method public isGeneratedId()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/j256/ormlite/field/FieldType;->isGeneratedId:Z

    return v0
.end method

.method public isGeneratedIdSequence()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->generatedIdSequence:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/j256/ormlite/field/FieldType;->isId:Z

    return v0
.end method

.method public isObjectsFieldValueDefault(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 917
    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/FieldType;->isFieldValueDefault(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isSelfGeneratedId()Z
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->isSelfGeneratedId()Z

    move-result v0

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUnique()Z

    move-result v0

    return v0
.end method

.method public isUniqueCombo()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isUniqueCombo()Z

    move-result v0

    return v0
.end method

.method public isVersion()Z
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isVersion()Z

    move-result v0

    return v0
.end method

.method public moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/field/DataPersister;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public resultToJava(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 813
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 814
    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseResults;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 816
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->columnName:Ljava/lang/String;

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    :cond_0
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, p1, v3}, Lcom/j256/ormlite/field/FieldConverter;->resultToJava(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;

    move-result-object v2

    .line 820
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isForeign()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 826
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseResults;->wasNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 838
    :goto_0
    return-object v0

    .line 829
    :cond_1
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v3}, Lcom/j256/ormlite/field/DataPersister;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 830
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->fieldConfig:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isThrowIfNull()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseResults;->wasNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 831
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Results value for primitive field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    const-string/jumbo v2, "\' was an invalid null value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_2
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->fieldConverter:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v3}, Lcom/j256/ormlite/field/FieldConverter;->isStreamType()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseResults;->wasNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 836
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 838
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 987
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 986
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
