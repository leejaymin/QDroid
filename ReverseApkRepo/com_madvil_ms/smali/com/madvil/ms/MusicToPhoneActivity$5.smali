.class Lcom/madvil/ms/MusicToPhoneActivity$5;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$5;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity$5;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->currentTab:I
    invoke-static/range {v16 .. v16}, Lcom/madvil/ms/MusicToPhoneActivity;->access$0(Lcom/madvil/ms/MusicToPhoneActivity;)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 266
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v16

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 272
    .local v6, files:[Ljava/io/File;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    .line 305
    .end local v5           #dir:Ljava/io/File;
    .end local v6           #files:[Ljava/io/File;
    .end local v7           #i:I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity$5;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    move-object/from16 v16, v0

    const-string v17, "Library is empty"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 309
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity$5;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    move-object/from16 v16, v0

    new-instance v17, Lcom/madvil/core/LibraryAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity$5;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/madvil/core/LibraryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/madvil/ms/MusicToPhoneActivity;->libraryAdapter:Lcom/madvil/core/LibraryAdapter;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity$5;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryListView:Landroid/widget/ListView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity$5;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryAdapter:Lcom/madvil/core/LibraryAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity$5;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Lcom/madvil/ms/MusicToPhoneActivity;->changeTab(I)V

    .line 314
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    :cond_1
    return-void

    .line 273
    .restart local v5       #dir:Ljava/io/File;
    .restart local v6       #files:[Ljava/io/File;
    .restart local v7       #i:I
    .restart local v8       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    :cond_2
    const/4 v3, 0x1

    .line 277
    .local v3, b:Z
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    :try_start_1
    sget-object v16, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    move v0, v9

    move/from16 v1, v16

    if-lt v0, v1, :cond_4

    .line 288
    :goto_3
    if-eqz v3, :cond_3

    .line 289
    :try_start_2
    new-instance v15, Lcom/madvil/core/SimpleSong;

    invoke-direct {v15}, Lcom/madvil/core/SimpleSong;-><init>()V

    .line 290
    .local v15, ss:Lcom/madvil/core/SimpleSong;
    aget-object v16, v6, v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/madvil/core/SimpleSong;->setFileName(Ljava/lang/String;)V

    .line 292
    aget-object v16, v6, v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4130

    div-double v13, v16, v18

    .line 293
    .local v13, sizeMb:D
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v16, "#.##"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 294
    .local v4, df:Ljava/text/DecimalFormat;
    invoke-virtual {v4, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/madvil/core/SimpleSong;->setSize(Ljava/lang/String;)V

    .line 296
    aget-object v16, v6, v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3f80624dd2f1a9fcL

    mul-double v16, v16, v18

    invoke-virtual {v15}, Lcom/madvil/core/SimpleSong;->getDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v10, v16, v18

    .line 297
    .local v10, kbps:D
    invoke-static {v10, v11}, Lcom/madvil/core/Helper;->parseBitrate(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/madvil/core/SimpleSong;->setRate(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 272
    .end local v4           #df:Ljava/text/DecimalFormat;
    .end local v10           #kbps:D
    .end local v13           #sizeMb:D
    .end local v15           #ss:Lcom/madvil/core/SimpleSong;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 278
    :cond_4
    :try_start_3
    sget-object v16, Lcom/madvil/core/DownloadService;->activeDownloads:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/madvil/core/SimpleDownload;

    .line 280
    .local v12, sd:Lcom/madvil/core/SimpleDownload;
    aget-object v16, v6, v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".mp3"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v16

    if-eqz v16, :cond_5

    .line 281
    const/4 v3, 0x0

    .line 282
    goto/16 :goto_3

    .line 277
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 303
    .end local v3           #b:Z
    .end local v5           #dir:Ljava/io/File;
    .end local v6           #files:[Ljava/io/File;
    .end local v7           #i:I
    .end local v9           #j:I
    .end local v12           #sd:Lcom/madvil/core/SimpleDownload;
    :catch_0
    move-exception v16

    goto/16 :goto_1

    .line 286
    .restart local v3       #b:Z
    .restart local v5       #dir:Ljava/io/File;
    .restart local v6       #files:[Ljava/io/File;
    .restart local v7       #i:I
    .restart local v9       #j:I
    :catch_1
    move-exception v16

    goto/16 :goto_3
.end method
