.class public abstract Lcom/j256/ormlite/support/BaseConnectionSource;
.super Ljava/lang/Object;
.source "BaseConnectionSource.java"

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# instance fields
.field private specialConnection:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    .line 12
    return-void
.end method


# virtual methods
.method protected clearSpecial(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/logger/Logger;)Z
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 81
    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_3

    .line 84
    if-nez v0, :cond_0

    .line 85
    const-string/jumbo v0, "no connection has been saved when clear() called"

    invoke-virtual {p2, v0}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;)V

    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v2, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-ne v2, p1, :cond_2

    .line 87
    invoke-virtual {v0}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    const-string/jumbo v2, "connection saved {} is not the one being cleared {}"

    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-virtual {p2, v2, v0, p1}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected getSavedConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    goto :goto_0
.end method

.method public getSpecialConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    goto :goto_0
.end method

.method protected isSavedConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 42
    if-nez v0, :cond_0

    move v0, v1

    .line 48
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-ne v0, p1, :cond_1

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method protected saveSpecial(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 60
    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    invoke-direct {v1, p1}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;-><init>(Lcom/j256/ormlite/support/DatabaseConnection;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-eq v1, p1, :cond_1

    .line 65
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trying to save connection "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    const-string/jumbo v3, " but already have saved connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->increment()V

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method
