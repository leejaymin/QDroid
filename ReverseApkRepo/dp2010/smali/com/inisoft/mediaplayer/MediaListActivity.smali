.class public Lcom/inisoft/mediaplayer/MediaListActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/inisoft/mediaplayer/dr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "_size"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "date_added"

    aput-object v3, v4, v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/inisoft/mediaplayer/MediaListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "album"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v2, "title"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v2, "_display_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v2, "_size"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string v2, "date_added"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    :cond_0
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Lcom/inisoft/mediaplayer/ds;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/inisoft/mediaplayer/ds;-><init>(Lcom/inisoft/mediaplayer/MediaListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/inisoft/mediaplayer/MediaListActivity;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/inisoft/mediaplayer/dr;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inisoft/mediaplayer/MediaListActivity;->a:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lcom/inisoft/mediaplayer/dr;-><init>(Lcom/inisoft/mediaplayer/MediaListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inisoft/mediaplayer/MediaListActivity;->b:Lcom/inisoft/mediaplayer/dr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inisoft/mediaplayer/MediaListActivity;->b:Lcom/inisoft/mediaplayer/dr;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/MediaListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method
