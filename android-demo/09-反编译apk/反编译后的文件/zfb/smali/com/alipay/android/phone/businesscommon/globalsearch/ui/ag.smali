.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d()V

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(J)V

    .line 138
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 139
    instance-of v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "WALLET-SEARCH|MoreCell"

    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    check-cast v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    .line 141
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->groupId:Ljava/lang/String;

    const-string/jumbo v2, "bill"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v2, "groupId"

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v0, "keyword"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v0, "userId"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    const-string/jumbo v2, "alipays://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/l;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_6
    if-eqz v0, :cond_1

    .line 161
    const-string/jumbo v1, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onItemClick : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " onClick ,actionType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 163
    const-string/jumbo v1, "text"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "group"

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "bizId"

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->position:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v1, "jiushi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "map : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->position:I

    sput v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    .line 169
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionType:Ljava/lang/String;

    const-string/jumbo v3, "chatGroup"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v4, "titleName"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "keyWord"

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "tableName"

    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "size"

    iget v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->chatMsgSize:I

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ag;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-static {v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "search"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tableName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "chatGroup"

    const-string/jumbo v1, "y"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "group"

    const-string/jumbo v1, "chatGroup"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/a/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 173
    :cond_7
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    const-string/jumbo v3, "local"

    iget-boolean v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->fromServer:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "y"

    :goto_1
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->position:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/alipay/android/phone/a/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    const-string/jumbo v2, "alipays://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 179
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/l;->a(Ljava/lang/String;)V

    .line 184
    :goto_2
    const-string/jumbo v1, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scheme : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_8
    const-string/jumbo v1, "n"

    goto :goto_1

    .line 182
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
