.class public Lcom/addthis/core/AddThis;
.super Ljava/lang/Object;
.source "AddThis.java"


# static fields
.field public static final ADDTHIS_VERSION:Ljava/lang/String; = "0.0.5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllServices(Landroid/content/Context;Z)Lcom/addthis/models/ATServiceList;
    .locals 3
    .parameter "context"
    .parameter "forImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, serviceList:Lcom/addthis/models/ATServiceList;
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 232
    .local v0, m:Lcom/addthis/data/ATDataFetcher;
    invoke-virtual {v0, p1}, Lcom/addthis/data/ATDataFetcher;->getAllServices(Z)Lcom/addthis/models/ATServiceList;

    move-result-object v1

    .line 233
    return-object v1
.end method

.method public static presentAddThisMenu(Landroid/content/Context;Lcom/addthis/models/ATShareItem;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/addthis/ui/activities/ATActivityGroup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/addthis/core/ATController;->addExtraParams(Landroid/content/Intent;Lcom/addthis/models/ATShareItem;)V

    .line 48
    const-string v1, "view"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public static presentAddThisMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "description"
    .parameter "image"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/addthis/core/AddThis;->presentAddThisMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method public static presentAddThisMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "title"
    .parameter "description"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/addthis/core/AddThis;->presentAddThisMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method

.method public static presentAddThisMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "title"
    .parameter "description"
    .parameter "image"

    .prologue
    .line 105
    new-instance v0, Lcom/addthis/models/ATShareItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/addthis/models/ATShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 106
    .local v0, item:Lcom/addthis/models/ATShareItem;
    invoke-static {p0, v0}, Lcom/addthis/core/AddThis;->presentAddThisMenu(Landroid/content/Context;Lcom/addthis/models/ATShareItem;)V

    .line 107
    return-void
.end method

.method public static varargs setBlackListedServices(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "services"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    invoke-direct {v0, p0}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, dataF:Lcom/addthis/data/ATDataFetcher;
    invoke-virtual {v0, p1}, Lcom/addthis/data/ATDataFetcher;->blackListServices([Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static varargs setFavoriteMenuServices(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "services"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 252
    .local v0, m:Lcom/addthis/data/ATDataFetcher;
    invoke-virtual {v0, p1}, Lcom/addthis/data/ATDataFetcher;->addFavoriteServices([Ljava/lang/String;)Z

    .line 254
    return-void
.end method

.method public static shareItem(Landroid/content/Context;Lcom/addthis/models/ATShareItem;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "serviceCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;,
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-static {p2}, Lcom/addthis/utils/ATUtil;->doesSupportImageSharing(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    new-instance v2, Lcom/addthis/error/ATSharerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " does not supports image sharing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/addthis/error/ATSharerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_0
    new-instance v1, Lcom/addthis/data/ATDataFetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 139
    .local v1, m:Lcom/addthis/data/ATDataFetcher;
    invoke-virtual {v1, p2}, Lcom/addthis/data/ATDataFetcher;->getService(Ljava/lang/String;)Lcom/addthis/models/ATService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 140
    new-instance v2, Lcom/addthis/error/ATDatabaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldnot find the service "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "in the database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/addthis/error/ATDatabaseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/addthis/ui/activities/ATActivityGroup;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/addthis/core/ATController;->addExtraParams(Landroid/content/Intent;Lcom/addthis/models/ATShareItem;)V

    .line 145
    const-string v2, "code"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "view"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public static shareItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "serviceCode"
    .parameter "url"
    .parameter "image"
    .parameter "title"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;,
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/addthis/models/ATShareItem;

    invoke-direct {v0, p2, p4, p5, p3}, Lcom/addthis/models/ATShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 210
    .local v0, item:Lcom/addthis/models/ATShareItem;
    invoke-static {p0, v0, p1}, Lcom/addthis/core/AddThis;->shareItem(Landroid/content/Context;Lcom/addthis/models/ATShareItem;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public static shareItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "context"
    .parameter "serviceCode"
    .parameter "title"
    .parameter "description"
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;,
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/addthis/core/AddThis;->shareItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static shareItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "serviceCode"
    .parameter "url"
    .parameter "title"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;,
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/addthis/core/AddThis;->shareItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static startServiceUpdate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 269
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 270
    .local v0, dataFetcher:Lcom/addthis/data/ATDataFetcher;
    invoke-virtual {v0}, Lcom/addthis/data/ATDataFetcher;->startAsyncServiceFetch()V

    .line 271
    return-void
.end method
