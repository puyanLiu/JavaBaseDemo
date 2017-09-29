.class public Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;
.super Ljava/lang/Object;
.source "FollowAccountInfoDaoImpl.java"

# interfaces
.implements Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "public_follow_db"

.field private static c:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "SELECT FollowAccountBaseInfo.userId, FollowAccountBaseInfo.followObjectId, FollowAccountBaseInfo.name, FollowAccountBaseInfo.avatar, FollowAccountBaseInfo.disturb, FollowAccountBaseInfo.gmtFollowTime, FollowAccountBaseInfo.gotoAppUri, FollowAccountBaseInfo.msgNoteType, FollowAccountBaseInfo.followType, FollowAccountBaseInfo.topType, FollowAccountBaseInfo.vip, FollowAccountShowInfo.lastOperateTime, FollowAccountShowInfo.latestMsg, FollowAccountShowInfo.latestMsgTime, FollowAccountShowInfo.latestMsgThridAccount, ( case when (FollowAccountShowInfo.unReadMsgCount > 0 ) then FollowAccountShowInfo.unReadMsgCount else FollowAccountShowInfo.markUnReadMsgCount  end ) as unReadMsgCount, FollowAccountShowInfo.top, FollowAccountShowInfo.topOperateTime, FollowAccountBaseInfo.pluginType, FollowAccountBaseInfo.isFollow  FROM FollowAccountShowInfo,  FollowAccountBaseInfo "

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .prologue
    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    .line 584
    const-string/jumbo v0, "SELECT count(*)  from FollowAccountBaseInfo where userId=? and isFollow=? "

    .line 585
    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 594
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    aput-object p1, v5, v6

    const/4 v3, 0x1

    const-string/jumbo v6, "1"

    aput-object v6, v5, v3

    .line 595
    const/4 v3, 0x0

    .line 604
    :try_start_0
    invoke-virtual {v4, v0, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 605
    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_4

    .line 613
    :cond_1
    if-eqz v3, :cond_2

    .line 614
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide v0, v1

    .line 617
    :cond_3
    :goto_0
    return-wide v0

    .line 608
    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 609
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 610
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    int-to-long v0, v0

    .line 613
    if-eqz v3, :cond_3

    .line 614
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    move-object v1, v3

    .line 613
    :goto_1
    if-eqz v1, :cond_5

    .line 614
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 616
    :cond_5
    throw v0

    .line 613
    :cond_6
    if-eqz v3, :cond_7

    .line 614
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move-wide v0, v1

    .line 617
    goto :goto_0

    .line 612
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_1
.end method

.method private static a(Landroid/database/Cursor;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 244
    new-instance v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    invoke-direct {v3}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;-><init>()V

    .line 245
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->userId:Ljava/lang/String;

    .line 246
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    .line 247
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    .line 248
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->avatar:Ljava/lang/String;

    .line 249
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->disturb:Z

    .line 250
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gmtFollowTime:J

    .line 251
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    .line 252
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->msgNoteType:Ljava/lang/String;

    .line 253
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followType:Ljava/lang/String;

    .line 254
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->topType:Ljava/lang/String;

    .line 255
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->vip:Ljava/lang/String;

    .line 256
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->lastOperateTime:J

    .line 257
    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    .line 258
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgTime:J

    .line 259
    const/16 v0, 0xe

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    .line 260
    const/16 v0, 0xf

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->unReadMsgCount:I

    .line 261
    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_1
    iput-boolean v1, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->top:Z

    .line 262
    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->topOperateTime:J

    .line 263
    const/16 v0, 0x12

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->pluginType:Ljava/lang/String;

    .line 264
    const/16 v0, 0x13

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->isFollow:Ljava/lang/String;

    .line 266
    :try_start_0
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    .line 269
    :cond_0
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    .line 272
    :cond_1
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_2
    :goto_2
    return-object v3

    :cond_3
    move v0, v2

    .line 249
    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 261
    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "public_follow_db"

    const-string/jumbo v4, "decrypt exception "

    invoke-interface {v1, v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public calcelTop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 461
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 462
    const-string/jumbo v1, "top"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 463
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 464
    return-void
.end method

.method public calculateUnreadMsgCount(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->calculateUnreadMsgCount(Ljava/lang/String;ILjava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    move-result-object v0

    return-object v0
.end method

.method public calculateUnreadMsgCount(Ljava/lang/String;ILjava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 515
    const-string/jumbo v0, "SELECT SUM(case when (FollowAccountBaseInfo.msgNoteType = \'number\' or FollowAccountBaseInfo.msgNoteType = \'wgt_number\') then  ( case when (FollowAccountShowInfo.unReadMsgCount > 0 ) then FollowAccountShowInfo.unReadMsgCount else FollowAccountShowInfo.markUnReadMsgCount  end )  else 0  end) as num_unread_count, SUM(case when (FollowAccountBaseInfo.msgNoteType = \'dot\' or FollowAccountBaseInfo.msgNoteType = \'wgt_dot\') then ( case when (FollowAccountShowInfo.unReadMsgCount > 0 ) then FollowAccountShowInfo.unReadMsgCount else FollowAccountShowInfo.markUnReadMsgCount  end )  else 0  end ) as dot_unread_count FROM FollowAccountShowInfo,FollowAccountBaseInfo "

    .line 516
    if-ne p2, v3, :cond_3

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountBaseInfo.id= FollowAccountShowInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'1\'  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    :goto_0
    if-eqz p3, :cond_0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " and  (FollowAccountBaseInfo.pluginType IS NULL   OR FollowAccountBaseInfo.pluginType <> ?)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 533
    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    .line 534
    const/4 v1, 0x0

    .line 537
    if-eqz p3, :cond_5

    .line 538
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 543
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 544
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "public_follow_db"

    const-string/jumbo v3, "sum of unread count is 0"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    invoke-direct {v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    if-eqz v1, :cond_2

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_2
    :goto_2
    return-object v0

    .line 518
    :cond_3
    if-nez p2, :cond_4

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountBaseInfo.id= FollowAccountShowInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'0\'  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountBaseInfo.id= FollowAccountShowInfo.id and FollowAccountShowInfo.userId=?   "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 540
    :cond_5
    :try_start_1
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 547
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 548
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 549
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    invoke-direct {v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;-><init>()V

    .line 550
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->numberCount:I

    .line 551
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->dotCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    if-eqz v1, :cond_2

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 554
    :catchall_0
    move-exception v0

    .line 555
    if-eqz v1, :cond_7

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_7
    throw v0

    .line 555
    :cond_8
    if-eqz v1, :cond_9

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_9
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    invoke-direct {v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;-><init>()V

    goto :goto_2
.end method

.method public deleteFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 422
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 423
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    return v0
.end method

.method public deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 568
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 569
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    return v0
.end method

.method public getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    return-object v0
.end method

.method public getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 286
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 293
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 294
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 297
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    .line 298
    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFollowAccountBaseInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "isFollow"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "followType"

    const-string/jumbo v3, "PUBLIC"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 113
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 308
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 312
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 315
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 316
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 318
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    .line 320
    :cond_2
    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 325
    :cond_3
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "public_follow_db"

    const-string/jumbo v4, "decrypt exception "

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v2, "WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.followObjectId=?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 132
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 137
    :try_start_0
    invoke-virtual {v2, v1, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-gtz v2, :cond_2

    .line 147
    :cond_0
    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_1
    :goto_0
    return-object v0

    .line 141
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 143
    invoke-static {v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 147
    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 147
    :goto_1
    if-eqz v1, :cond_3

    .line 148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_3
    throw v0

    .line 147
    :cond_4
    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 146
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getFollowAccountShowModelCount(Ljava/lang/String;I)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "public_follow_db"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start query getFollowAccountShowModelCount  by userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-ne p2, v5, :cond_3

    .line 210
    const-string/jumbo v0, "SELECT count(*) FROM FollowAccountShowInfo,  FollowAccountBaseInfo  WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'1\' "

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 217
    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    .line 218
    const/4 v1, 0x0

    .line 220
    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 221
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "public_follow_db"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "can find any chat info by userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    if-eqz v2, :cond_1

    .line 230
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_1
    const-wide/16 v0, 0x0

    .line 227
    :cond_2
    :goto_1
    return-wide v0

    .line 211
    :cond_3
    if-nez p2, :cond_4

    .line 212
    const-string/jumbo v0, "SELECT count(*) FROM FollowAccountShowInfo,  FollowAccountBaseInfo WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'0\' "

    goto :goto_0

    .line 214
    :cond_4
    const-string/jumbo v0, "SELECT count(*) FROM FollowAccountShowInfo,  FollowAccountBaseInfo WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and (FollowAccountBaseInfo.pluginType is null  or FollowAccountBaseInfo.pluginType=\'\') "

    goto :goto_0

    .line 225
    :cond_5
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 229
    if-eqz v2, :cond_2

    .line 230
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    :goto_2
    if-eqz v1, :cond_6

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_6
    throw v0

    .line 228
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public getFollowAccountShowModels(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "public_follow_db"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start query followAccountShowInfos by userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-ne p2, v5, :cond_3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'1\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 173
    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 176
    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 177
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 178
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "public_follow_db"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "can find any chat info by userId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    if-eqz v2, :cond_1

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v1

    .line 189
    :cond_2
    :goto_1
    return-object v0

    .line 166
    :cond_3
    if-nez p2, :cond_4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'0\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_5
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    .line 189
    if-eqz v2, :cond_2

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 183
    :cond_6
    :try_start_3
    invoke-static {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v1

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "public_follow_db"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "find chat  item :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 190
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 191
    :goto_3
    if-eqz v1, :cond_7

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_7
    throw v0

    .line 190
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public getFollowCount(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFollowCountExcludeSinaNews(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 574
    const-string/jumbo v0, " (pluginType IS  NULL OR pluginType <> \'sina_news\' )"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLatestFollowAccountShowModel(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 625
    sget-object v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    .line 626
    if-ne p2, v6, :cond_3

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and  FollowAccountBaseInfo.userId=? AND FollowAccountBaseInfo.vip=\'1\'   ORDER BY FollowAccountShowInfo.latestMsgTime DESC , FollowAccountBaseInfo.gmtFollowTime  DESC LIMIT 1 OFFSET 0 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "public_follow_db"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sql:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " showLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 639
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 643
    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 644
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_5

    .line 653
    :cond_0
    if-eqz v2, :cond_1

    .line 654
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v1

    .line 657
    :cond_2
    :goto_1
    return-object v0

    .line 628
    :cond_3
    if-nez p2, :cond_4

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and  FollowAccountBaseInfo.userId=? AND FollowAccountBaseInfo.vip=\'0\'  ORDER BY FollowAccountShowInfo.latestMsgTime DESC , FollowAccountBaseInfo.gmtFollowTime  DESC LIMIT 1 OFFSET 0 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 631
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and  FollowAccountBaseInfo.userId=?  ORDER BY FollowAccountShowInfo.latestMsgTime DESC LIMIT 1 OFFSET 0 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 648
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 649
    invoke-static {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 653
    if-eqz v2, :cond_2

    .line 654
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 652
    :catchall_0
    move-exception v0

    .line 653
    :goto_2
    if-eqz v1, :cond_6

    .line 654
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_6
    throw v0

    .line 653
    :cond_7
    if-eqz v2, :cond_8

    .line 654
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v1

    .line 657
    goto :goto_1

    .line 652
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public initFollowAccountShowInfos(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    return-void

    .line 386
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    .line 387
    if-eqz v0, :cond_2

    .line 388
    iget-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 392
    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 395
    :try_start_0
    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 399
    :cond_3
    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 400
    invoke-static {v4}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 404
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    iput-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 409
    iput-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "FollowAccountInfoDao"

    const-string/jumbo v7, "\u5b58\u50a8\u6570\u636e\u5931\u8d25"

    invoke-interface {v5, v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    iput-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 409
    iput-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v1

    .line 408
    iput-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 409
    iput-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 410
    throw v1
.end method

.method public saveFollowBaseAccountInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V
    .locals 5

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 96
    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "FollowAccountInfoDao"

    const-string/jumbo v4, "\u5b58\u50a8\u6570\u636e\u5931\u8d25"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    throw v0
.end method

.method public setTop(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 438
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 441
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 442
    const-string/jumbo v1, "top"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 443
    const-string/jumbo v1, "topOperateTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 444
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 445
    return-void
.end method

.method public updateDisturb(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 500
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 503
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 504
    const-string/jumbo v1, "disturb"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 505
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 506
    return-void
.end method

.method public updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    .locals 7

    .prologue
    .line 345
    if-nez p2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 352
    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 354
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    iput-object v0, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 358
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-static {v2}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 363
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 364
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "createor update "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "info.userId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " info.followObjectId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 370
    iput-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "FollowAccountInfoDao"

    const-string/jumbo v5, "\u5b58\u50a8\u6570\u636e\u5931\u8d25"

    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 370
    iput-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    .line 369
    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 370
    iput-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 371
    throw v0
.end method

.method public updateThirdPartyLastMsg(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 489
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 490
    invoke-static {p5}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    const-string/jumbo v2, "latestMsgTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 492
    const-string/jumbo v2, "latestMsg"

    invoke-virtual {v0, v2, v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 493
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 494
    return-void
.end method

.method public updateUnreadMsgCount(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 474
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 475
    const-string/jumbo v1, "unReadMsgCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 476
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 478
    return-void
.end method
