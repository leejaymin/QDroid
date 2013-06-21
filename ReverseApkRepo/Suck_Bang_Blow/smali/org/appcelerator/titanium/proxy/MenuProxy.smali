.class public Lorg/appcelerator/titanium/proxy/MenuProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "MenuProxy.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "MenuProxy"

.field private static final MSG_ADD:I = 0x44c

.field private static final MSG_CLEAR:I = 0x44e

.field private static final MSG_CLOSE:I = 0x44d

.field private static final MSG_FIRST_ID:I = 0x3e8

.field protected static final MSG_LAST_ID:I = 0x7cf

.field private static final MSG_REMOVE_GROUP:I = 0x44f

.field private static final MSG_REMOVE_ITEM:I = 0x450

.field private static final MSG_SET_GROUP_ENABLED:I = 0x451

.field private static final MSG_SET_GROUP_VISIBLE:I = 0x452


# instance fields
.field private final DBG:Z

.field protected menu:Landroid/view/Menu;

.field protected menuMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lorg/appcelerator/titanium/proxy/MenuItemProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/view/Menu;)V
    .locals 1
    .parameter "tiContext"
    .parameter "menu"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 30
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->DBG:Z

    .line 48
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    .line 50
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "d"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v0

    move-object v1, v0

    .line 100
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/16 v1, 0x44c

    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object v1, p0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClear()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClose()V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 164
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public findItem(I)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 5
    .parameter "itemId"

    .prologue
    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v3, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 178
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 179
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 180
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object v2, v0

    .line 181
    monitor-exit v4

    .line 184
    :cond_0
    return-object v2

    .line 181
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "item"

    .prologue
    .line 201
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    monitor-exit v0

    return-object p0

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItem(I)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 3
    .parameter "index"

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 193
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 194
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    check-cast v1, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 197
    .restart local v1       #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    return-object v1
.end method

.method public getItems()[Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 7

    .prologue
    .line 318
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v1

    .line 319
    .local v1, len:I
    new-array v4, v1, [Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 320
    .local v4, proxies:[Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 321
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 322
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v6, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 323
    .local v2, mi:Landroid/view/MenuItem;
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 324
    .local v3, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    aput-object v3, v4, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v2           #mi:Landroid/view/MenuItem;
    .end local v3           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    monitor-exit v5

    .line 327
    return-object v4

    .line 326
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 11
    .parameter "d"

    .prologue
    const-string v10, "title"

    const-string v9, "order"

    const-string v8, "itemId"

    const-string v7, "groupId"

    .line 105
    const/4 v3, 0x0

    .line 107
    .local v3, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    const-string v5, ""

    .line 108
    .local v5, title:Ljava/lang/String;
    const/4 v2, 0x0

    .line 109
    .local v2, itemId:I
    const/4 v0, 0x0

    .line 110
    .local v0, groupId:I
    const/4 v4, 0x0

    .line 112
    .local v4, order:I
    const-string v6, "title"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    const-string v6, "title"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    :cond_0
    const-string v6, "itemId"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    const-string v6, "itemId"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    .line 118
    :cond_1
    const-string v6, "groupId"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    const-string v6, "groupId"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    .line 121
    :cond_2
    const-string v6, "order"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 122
    const-string v6, "order"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v4

    .line 125
    :cond_3
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v6, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 126
    .local v1, item:Landroid/view/MenuItem;
    new-instance v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .end local v3           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Landroid/view/MenuItem;)V

    .line 127
    .restart local v3       #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 128
    :try_start_0
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    monitor-exit v6

    .line 131
    return-object v3

    .line 129
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public handleClear()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 149
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 151
    monitor-exit v0

    .line 153
    :cond_0
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 171
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 56
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 57
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 58
    goto :goto_0

    .line 61
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClose()V

    move v1, v2

    .line 62
    goto :goto_0

    .line 65
    :pswitch_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClear()V

    move v1, v2

    .line 66
    goto :goto_0

    .line 69
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveGroup(I)V

    move v1, v2

    .line 70
    goto :goto_0

    .line 73
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveItem(I)V

    move v1, v2

    .line 74
    goto :goto_0

    .line 77
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupEnabled(Ljava/util/HashMap;)V

    move v1, v2

    .line 78
    goto :goto_0

    .line 81
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupVisible(Ljava/util/HashMap;)V

    move v1, v2

    .line 82
    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleRemoveGroup(I)V
    .locals 7
    .parameter "groupId"

    .prologue
    .line 226
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 227
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v6, p1}, Landroid/view/Menu;->removeGroup(I)V

    .line 228
    new-instance v4, Ljava/util/HashMap;

    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 229
    .local v4, mm:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/MenuItem;Lorg/appcelerator/titanium/proxy/MenuItemProxy;>;"
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v6}, Landroid/view/Menu;->size()I

    move-result v1

    .line 230
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 231
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v6, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 232
    .local v2, mi:Landroid/view/MenuItem;
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 233
    .local v3, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v2           #mi:Landroid/view/MenuItem;
    .end local v3           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 236
    iput-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    .line 237
    monitor-exit v5

    .line 238
    return-void

    .line 237
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v4           #mm:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/MenuItem;Lorg/appcelerator/titanium/proxy/MenuItemProxy;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public handleRemoveItem(I)V
    .locals 4
    .parameter "itemId"

    .prologue
    .line 255
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 256
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v3, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 257
    .local v0, mi:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 258
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 259
    .local v1, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    if-eqz v1, :cond_0

    .line 262
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v3, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 264
    .end local v1           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_1
    monitor-exit v2

    .line 265
    return-void

    .line 264
    .end local v0           #mi:Landroid/view/MenuItem;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleSetGroupEnabled(Ljava/util/HashMap;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 288
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    const-string v1, "groupId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 289
    return-void
.end method

.method public handleSetGroupVisible(Ljava/util/HashMap;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 308
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    const-string v1, "groupId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "visible"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 309
    return-void
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 351
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 356
    return-void
.end method

.method public removeGroup(I)V
    .locals 3
    .parameter "groupId"

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveGroup(I)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 220
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 221
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveItem(I)V

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x450

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 250
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0
    .parameter "groupId"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 269
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .parameter "groupId"
    .parameter "enabled"

    .prologue
    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v0, args:Ljava/util/HashMap;
    const-string v2, "groupId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupEnabled(Ljava/util/HashMap;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x451

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 284
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setGroupVisible(IZ)V
    .locals 4
    .parameter "groupId"
    .parameter "visible"

    .prologue
    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v0, args:Ljava/util/HashMap;
    const-string v2, "groupId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v2, "visible"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupVisible(Ljava/util/HashMap;)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x452

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 335
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eq v0, p1, :cond_1

    .line 336
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "MenuProxy"

    const-string v1, "A new menu has been set, cleaning up old menu first"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->release()V

    .line 341
    :cond_1
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 342
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method
