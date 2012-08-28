.class final Lorg/connectbot/HostList$5;
.super Ljava/lang/Object;
.source "HostList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostList;


# direct methods
.method constructor <init>(Lorg/connectbot/HostList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 215
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Ljava/lang/Object;

    check-cast p1, Landroid/widget/Adapter;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 216
    .local v2, c:Landroid/database/Cursor;
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    iget v11, v11, Lorg/connectbot/HostList;->COL_USERNAME:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, username:Ljava/lang/String;
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    iget v11, v11, Lorg/connectbot/HostList;->COL_HOSTNAME:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, hostname:Ljava/lang/String;
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    iget v11, v11, Lorg/connectbot/HostList;->COL_PORT:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 219
    .local v8, port:I
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    iget v11, v11, Lorg/connectbot/HostList;->COL_NICKNAME:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, nickname:Ljava/lang/String;
    const-string v11, "ssh://%s@%s:%s/#%s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    const/4 v13, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 222
    .local v9, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v3, v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    .local v3, contents:Landroid/content/Intent;
    const/high16 v11, 0x400

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    iget-boolean v11, v11, Lorg/connectbot/HostList;->shortcut:Z

    if-eqz v11, :cond_0

    .line 228
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    const v12, 0x7f020004

    invoke-static {v11, v12}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    .line 230
    .local v5, icon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v6, intent:Landroid/content/Intent;
    const-string v11, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v6, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    const-string v11, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v6, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v11, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v6, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 235
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    const/4 v12, -0x1

    invoke-virtual {v11, v12, v6}, Lorg/connectbot/HostList;->setResult(ILandroid/content/Intent;)V

    .line 236
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    invoke-virtual {v11}, Lorg/connectbot/HostList;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v5           #icon:Landroid/content/Intent$ShortcutIconResource;
    .end local v6           #intent:Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_1
    iget-object v11, p0, Lorg/connectbot/HostList$5;->this$0:Lorg/connectbot/HostList;

    invoke-virtual {v11, v3}, Lorg/connectbot/HostList;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    .end local v2           #c:Landroid/database/Cursor;
    .end local v10           #username:Ljava/lang/String;
    .end local v4           #hostname:Ljava/lang/String;
    .end local v8           #port:I
    .end local v7           #nickname:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v3           #contents:Landroid/content/Intent;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method
