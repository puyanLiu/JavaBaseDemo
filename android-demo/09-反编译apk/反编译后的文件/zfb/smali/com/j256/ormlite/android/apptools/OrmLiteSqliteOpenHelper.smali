.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;
.source "OrmLiteSqliteOpenHelper.java"


# static fields
.field protected static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected cancelQueriesEnabled:Z

.field protected connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

.field private volatile isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    new-instance v0, Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen:Z

    .line 57
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;

    move-result-object v0

    invoke-static {v0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->setOrmLiteEncryptionAgent(Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;)V

    .line 58
    sget-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "{}: constructed connectionSource {}"

    iget-object v2, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;II)V
    .locals 6

    .prologue
    .line 79
    invoke-static {p1, p5}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->openFileId(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/InputStream;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/File;)V
    .locals 6

    .prologue
    .line 99
    invoke-static {p5}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->openFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/InputStream;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILjava/io/InputStream;)V
    .locals 3

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    new-instance v0, Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen:Z

    .line 121
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/storage/database/TaobaoOrmLiteEncryptionAgent;

    move-result-object v0

    invoke-static {v0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->setOrmLiteEncryptionAgent(Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;)V

    .line 122
    if-nez p5, :cond_0

    .line 140
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 129
    invoke-static {v0}, Lcom/j256/ormlite/table/DatabaseTableConfigLoader;->loadDatabaseConfigFromReader(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/j256/ormlite/dao/DaoManager;->addCachedDatabaseConfigs(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not load object config file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    .line 135
    :try_start_3
    invoke-virtual {p5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 139
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static openFile(Ljava/io/File;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not open config file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static openFileId(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 315
    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find object config file with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->close()V

    .line 258
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->close()V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen:Z

    .line 264
    return-void
.end method

.method public getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 3

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen:Z

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->logger:Lcom/j256/ormlite/logger/Logger;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string/jumbo v2, "Getting connectionSource was called after closed"

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->warn(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    return-object v0
.end method

.method public getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TD;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 285
    return-object v0
.end method

.method public getRuntimeExceptionDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TD;"
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    invoke-direct {v1, v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;-><init>(Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not create RuntimeExcepitionDao for class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen:Z

    return v0
.end method

.method public final onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v3

    .line 201
    invoke-interface {v3}, Lcom/j256/ormlite/support/ConnectionSource;->getSpecialConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    .line 202
    const/4 v1, 0x0

    .line 203
    if-nez v2, :cond_2

    .line 204
    new-instance v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    iget-boolean v2, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->cancelQueriesEnabled:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;ZZ)V

    .line 206
    :try_start_0
    invoke-interface {v3, v1}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v3, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 219
    :cond_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not save special connection"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 214
    :catchall_0
    move-exception v2

    .line 215
    if-eqz v0, :cond_1

    .line 216
    invoke-interface {v3, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 218
    :cond_1
    throw v2

    :cond_2
    move v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public abstract onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
.end method

.method public final onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v3

    .line 232
    invoke-interface {v3}, Lcom/j256/ormlite/support/ConnectionSource;->getSpecialConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    .line 233
    const/4 v1, 0x0

    .line 234
    if-nez v2, :cond_2

    .line 235
    new-instance v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    iget-boolean v2, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->cancelQueriesEnabled:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;ZZ)V

    .line 237
    :try_start_0
    invoke-interface {v3, v1}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, v3, p2, p3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v3, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 250
    :cond_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not save special connection"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 245
    :catchall_0
    move-exception v2

    .line 246
    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v3, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 249
    :cond_1
    throw v2

    :cond_2
    move v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public abstract onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
