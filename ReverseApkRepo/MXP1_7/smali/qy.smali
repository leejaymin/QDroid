.class public final Lqy;
.super Lrh;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private 癤욱븳援:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lgf;Lgg;Lql;I)V
    .locals 16

    invoke-direct/range {p0 .. p1}, Lrh;-><init>(Landroid/content/Context;)V

    invoke-static/range {p1 .. p2}, Lgm;->癤욱븳援(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v10

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-interface/range {p3 .. p3}, Lgf;->寃껋씠()I

    move-result v6

    invoke-interface/range {p3 .. p3}, Lgf;->뚮벏()I

    move-result v7

    if-lez v6, :cond_a

    if-lez v7, :cond_a

    const-string v8, "%d x %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v11

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    :goto_0
    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide v7, v4

    move-wide v5, v2

    :goto_1
    and-int/lit8 v2, p6, 0x4

    if-eqz v2, :cond_b

    sget v2, Lnt;->detail_title_detail:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lgm;->癤욱븳援(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lqy;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    if-eqz v10, :cond_c

    sget v3, Lnt;->detail_file:I

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lnt;->detail_folder:I

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v3, v5, v12

    if-eqz v3, :cond_0

    sget v3, Lnt;->detail_size:I

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v3, v7, v5

    if-eqz v3, :cond_1

    sget v3, Lnt;->detail_date:I

    const/16 v5, 0x15

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_3

    if-eqz v10, :cond_3

    sget-object v3, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p4, :cond_d

    invoke-interface/range {p4 .. p4}, Lgg;->embedSubtitle()Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_2

    sget-object v3, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    sget v5, Lnt;->detail_value_contained_subtitle:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v3, Lht;

    invoke-direct {v3}, Lht;-><init>()V

    invoke-static {}, Lms;->붿슧()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Lht;->癤욱븳援(Ljava/io/File;Ljava/io/File;)[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v6, :cond_e

    sget v3, Lnt;->detail_subtitle:I

    sget-object v5, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    sget v3, Lnt;->detail_mime:I

    invoke-interface/range {p3 .. p3}, Lgf;->대쫫()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v3, v11

    sget v5, Lnt;->detail_resolution:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    invoke-interface/range {p3 .. p3}, Lgf;->덉쓣()I

    move-result v5

    if-lez v5, :cond_4

    sget v6, Lnt;->detail_playtime:I

    sget-object v7, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v8, v5

    invoke-static {v7, v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_4
    sget v5, Lnt;->detail_genre:I

    invoke-interface/range {p3 .. p3}, Lgf;->弱밧()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_year:I

    invoke-interface/range {p3 .. p3}, Lgf;->먮()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_language:I

    invoke-interface/range {p3 .. p3}, Lgf;->留먰븷()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_album:I

    invoke-interface/range {p3 .. p3}, Lgf;->궗()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_artist:I

    invoke-interface/range {p3 .. p3}, Lgf;->먯꽌()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_composer:I

    invoke-interface/range {p3 .. p3}, Lgf;->ㅼ꽑嫄()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_performer:I

    invoke-interface/range {p3 .. p3}, Lgf;->뚮Ц()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_album_artist:I

    invoke-interface/range {p3 .. p3}, Lgf;->洹()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_publisher:I

    invoke-interface/range {p3 .. p3}, Lgf;->붿슧()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_copyright:I

    invoke-interface/range {p3 .. p3}, Lgf;->몃Ъ()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_encoded_by:I

    invoke-interface/range {p3 .. p3}, Lgf;->꾨뱾()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Lnt;->detail_encoder:I

    invoke-interface/range {p3 .. p3}, Lgf;->먯껜蹂대떎()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v5, v3

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_5

    if-eqz v10, :cond_1e

    :try_start_0
    move-object/from16 v0, p5

    iget-object v3, v0, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT LastWatchTime, FinishTime FROM VideoFile WHERE Id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lql;->癤욱븳援(Ljava/io/File;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_10

    sget v3, Lnt;->detail_finished:I

    sget v7, Lnt;->detail_value_unfinished:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v4, v3

    :goto_6
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_11

    sget v3, Lnt;->detail_last_watch_time:I

    sget v7, Lnt;->detail_value_none:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lqy;->궗(ILjava/lang/CharSequence;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-int/2addr v3, v4

    :goto_7
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lql;->먯꽌(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_13

    sget v4, Lnt;->detail_last_position:I

    sget v6, Lnt;->detail_value_none:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v4

    add-int/2addr v4, v3

    :cond_5
    :goto_9
    if-lez v4, :cond_6

    sget v3, Lnt;->detail_group_record:I

    add-int v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lqy;->癤욱븳援(II)Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lqy;->癤욱븳援:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lqy;->癤욱븳援:I

    :cond_6
    if-lez v5, :cond_7

    sget v3, Lnt;->detail_group_media:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lqy;->癤욱븳援(II)Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lqy;->癤욱븳援:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lqy;->癤욱븳援:I

    :cond_7
    if-lez v2, :cond_8

    sget v3, Lnt;->detail_group_file:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lqy;->癤욱븳援(II)Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lqy;->癤욱븳援:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lqy;->癤욱븳援:I

    :cond_8
    if-eqz p4, :cond_9

    invoke-interface/range {p4 .. p4}, Lgg;->getStreamCount()I

    move-result v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    move v2, v3

    :goto_a
    if-lt v4, v5, :cond_14

    new-instance v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    sget v3, Lnt;->learn_more:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x4100

    invoke-static {v4}, Lee;->먯꽌(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/TableLayout$LayoutParams;->leftMargin:I

    iput v4, v3, Landroid/widget/TableLayout$LayoutParams;->rightMargin:I

    const/4 v4, 0x5

    iput v4, v3, Landroid/widget/TableLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lqy;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void

    :cond_a
    const/4 v6, 0x0

    move-object v9, v6

    goto/16 :goto_0

    :cond_b
    sget v2, Lnt;->detail_title_simple:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lqy;->setTitle(I)V

    goto/16 :goto_2

    :cond_c
    sget v3, Lnt;->detail_uri:I

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_e
    aget-object v7, v5, v3

    sget-object v8, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_f

    sget-object v8, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    sget-object v8, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_10
    :try_start_3
    sget v3, Lnt;->detail_finished:I

    sget v7, Lnt;->detail_value_finished:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v4, v3

    goto/16 :goto_6

    :cond_11
    sget v3, Lnt;->detail_last_watch_time:I

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/16 v9, 0x15

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v3, v4

    goto/16 :goto_7

    :cond_12
    sget v3, Lnt;->detail_finished:I

    sget v7, Lnt;->detail_value_unfinished:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v4, v3

    sget v3, Lnt;->detail_last_watch_time:I

    sget v7, Lnt;->detail_value_none:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lqy;->궗(ILjava/lang/CharSequence;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    add-int/2addr v3, v4

    goto/16 :goto_7

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    :goto_b
    sget v3, Lnt;->detail_finished:I

    sget v6, Lnt;->detail_value_unfinished:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v3, v4

    sget v4, Lnt;->detail_last_watch_time:I

    sget v6, Lnt;->detail_value_none:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v4

    add-int/2addr v3, v4

    goto/16 :goto_8

    :cond_13
    sget v6, Lnt;->detail_last_position:I

    sget-object v7, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v8, v4

    invoke-static {v7, v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lqy;->궗(ILjava/lang/CharSequence;)I

    move-result v4

    add-int/2addr v4, v3

    goto/16 :goto_9

    :cond_14
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lgg;->癤욱븳援(I)Lgh;

    move-result-object v6

    :try_start_5
    invoke-interface {v6}, Lgh;->紐낆옱()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    invoke-interface {v6}, Lgh;->癤욱븳援()V

    :goto_c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_a

    :pswitch_1
    :try_start_6
    sget v3, Lnt;->detail_group_video:I

    :goto_d
    sget v8, Lnt;->stream_with_index:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lqy;->癤욱븳援(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    sget v8, Lnt;->type:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->codec:I

    invoke-interface {v6}, Lgh;->롩퐢()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    if-nez v7, :cond_16

    invoke-interface {v6}, Lgh;->寃껋씠()I

    move-result v3

    invoke-interface {v6}, Lgh;->뚮벏()I

    move-result v8

    if-lez v3, :cond_15

    if-lez v8, :cond_15

    sget v9, Lnt;->detail_resolution:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " x "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    :cond_15
    invoke-interface {v6}, Lgh;->ㅼ쬆()I

    move-result v3

    if-lez v3, :cond_16

    const v8, 0x4e6e6b28

    int-to-float v3, v3

    div-float v3, v8, v3

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v3, v10

    int-to-double v10, v3

    sub-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f847ae147ae147bL

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1a

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_e
    sget v8, Lnt;->frame_rate:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    :cond_16
    const/4 v3, 0x1

    if-ne v7, v3, :cond_18

    invoke-interface {v6}, Lgh;->대떎()I

    move-result v3

    if-lez v3, :cond_17

    sget v7, Lnt;->sample_rate:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Hz"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    :cond_17
    invoke-interface {v6}, Lgh;->ㅼ꽑嫄곗쓽()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-eqz v3, :cond_18

    long-to-int v3, v7

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    long-to-int v7, v7

    invoke-static {v7}, Lel;->癤욱븳援(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v7, Lnt;->channel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_f
    sget v7, Lnt;->channels:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    :cond_18
    invoke-interface {v6}, Lgh;->弱방떙()I

    move-result v3

    if-lez v3, :cond_19

    const v7, 0x3b9aca00

    if-lt v3, v7, :cond_1b

    sget v7, Lnt;->bit_rate:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "%.1f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    int-to-double v12, v3

    const-wide v14, 0x41cdcd6500000000L

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Gbits/sec"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    :cond_19
    :goto_10
    sget v3, Lnt;->detail_description:I

    invoke-interface {v6}, Lgh;->쇰뒗()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_genre:I

    invoke-interface {v6}, Lgh;->弱밧()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_year:I

    invoke-interface {v6}, Lgh;->먮()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_language:I

    invoke-interface {v6}, Lgh;->留먰븷()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_album:I

    invoke-interface {v6}, Lgh;->궗()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_artist:I

    invoke-interface {v6}, Lgh;->먯꽌()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_composer:I

    invoke-interface {v6}, Lgh;->ㅼ꽑嫄()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_performer:I

    invoke-interface {v6}, Lgh;->뚮Ц()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_album_artist:I

    invoke-interface {v6}, Lgh;->洹()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_publisher:I

    invoke-interface {v6}, Lgh;->붿슧()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_copyright:I

    invoke-interface {v6}, Lgh;->몃Ъ()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_encoded_by:I

    invoke-interface {v6}, Lgh;->꾨뱾()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    sget v3, Lnt;->detail_encoder:I

    invoke-interface {v6}, Lgh;->먯껜蹂대떎()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-interface {v6}, Lgh;->癤욱븳援()V

    goto/16 :goto_c

    :pswitch_2
    :try_start_7
    sget v3, Lnt;->audio:I

    goto/16 :goto_d

    :pswitch_3
    sget v3, Lnt;->subtitle:I

    goto/16 :goto_d

    :cond_1a
    const-string v3, "%.5f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e

    :sswitch_0
    sget v3, Lnt;->channel_mono:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :sswitch_1
    sget v3, Lnt;->channel_stereo:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :sswitch_2
    sget v3, Lnt;->channel_surround:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "2.1 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lnt;->channel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :sswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "5.1 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lnt;->channel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :sswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "5.1 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lnt;->channel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " (back)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :sswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "7.1 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lnt;->channel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :sswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "7.1 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lnt;->channel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " (wide)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    :cond_1b
    const v7, 0xf4240

    if-lt v3, v7, :cond_1c

    sget v7, Lnt;->bit_rate:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "%.1f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    int-to-double v12, v3

    const-wide v14, 0x412e848000000000L

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Mbits/sec"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_10

    :catchall_1
    move-exception v2

    invoke-interface {v6}, Lgh;->癤욱븳援()V

    throw v2

    :cond_1c
    const/16 v7, 0x3e8

    if-lt v3, v7, :cond_1d

    :try_start_8
    sget v7, Lnt;->bit_rate:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "%.1f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    int-to-double v12, v3

    const-wide v14, 0x408f400000000000L

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " kbits/sec"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_1d
    sget v7, Lnt;->bit_rate:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " bits/sec"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lqy;->먯꽌(ILjava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_10

    :catch_1
    move-exception v4

    move v4, v3

    goto/16 :goto_b

    :cond_1e
    move v3, v4

    goto/16 :goto_8

    :cond_1f
    move-wide v7, v4

    move-wide v5, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x7 -> :sswitch_2
        0x3f -> :sswitch_5
        0xff -> :sswitch_7
        0x103 -> :sswitch_3
        0x60f -> :sswitch_4
        0x63f -> :sswitch_6
    .end sparse-switch
.end method

.method private 먯꽌(ILjava/lang/CharSequence;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lrh;->癤욱븳援(ILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/16 v3, 0x8

    if-eqz p2, :cond_2

    iget-object v0, p0, Lqy;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    iget v1, p0, Lqy;->癤욱븳援:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lqy;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lqy;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_1
    iget v1, p0, Lqy;->癤욱븳援:I

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lqy;->궗:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
