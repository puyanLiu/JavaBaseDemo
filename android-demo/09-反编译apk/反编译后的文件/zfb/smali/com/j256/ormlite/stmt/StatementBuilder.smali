.class public abstract Lcom/j256/ormlite/stmt/StatementBuilder;
.super Ljava/lang/Object;
.source "StatementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected addTableName:Z

.field protected final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field protected final tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected final tableName:Ljava/lang/String;

.field protected type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field protected where:Lcom/j256/ormlite/stmt/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 40
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 41
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 42
    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 44
    iput-object p4, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 45
    invoke-virtual {p4}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForStatementBuilder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Building a statement from a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statement is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract appendStatementEnd(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation
.end method

.method protected appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 140
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementEnd(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 142
    return-void
.end method

.method protected appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->appendBefore(Ljava/lang/StringBuilder;)V

    .line 158
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->addTableName:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->appendSql(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 159
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->appendAfter(Ljava/lang/StringBuilder;)V

    move v0, v1

    .line 160
    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected buildStatementString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "built statement {}"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-object v0
.end method

.method public clear()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->reset()V

    .line 112
    return-void
.end method

.method protected getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-object v0
.end method

.method protected prepareStatement(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 76
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/j256/ormlite/field/FieldType;

    .line 78
    const/4 v0, 0x0

    :goto_0
    array-length v1, v5

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForStatementBuilder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Building a statement from a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statement is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    aget-object v1, v5, v0

    invoke-interface {v1}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getFieldType()Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    aput-object v1, v3, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 85
    iget-object v6, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v6}, Lcom/j256/ormlite/db/DatabaseType;->isLimitSqlSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 84
    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/stmt/ArgumentHolder;Ljava/lang/Long;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V

    return-object v0

    :cond_2
    move-object v6, p1

    .line 85
    goto :goto_1
.end method

.method public prepareStatementInfo()Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;)V

    return-object v2
.end method

.method public prepareStatementString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 119
    return-void
.end method

.method public setWhere(Lcom/j256/ormlite/stmt/Where;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 64
    return-void
.end method

.method protected shouldPrependTableNameToColumns()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    return-object v0
.end method

.method public where()Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/j256/ormlite/stmt/Where;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-direct {v0, v1, p0, v2}, Lcom/j256/ormlite/stmt/Where;-><init>(Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/stmt/StatementBuilder;Lcom/j256/ormlite/db/DatabaseType;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 56
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    return-object v0
.end method
