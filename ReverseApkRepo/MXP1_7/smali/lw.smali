.class Llw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Llp;

.field private final 궗:Ljava/io/File;


# direct methods
.method public constructor <init>(Llp;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Llw;->癤욱븳援:Llp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llw;->궗:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Llw;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->癤욱븳援(Llp;)Llx;

    move-result-object v0

    invoke-interface {v0}, Llx;->먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :try_start_1
    check-cast p1, Landroid/app/Dialog;

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-static {v0, v2}, Leo;->癤욱븳援(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Llw;->궗:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Llw;->궗:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llw;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->癤욱븳援(Llp;)Llx;

    move-result-object v0

    invoke-interface {v0}, Llx;->꾨뱾()Lfm;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lnt;->edit_error_rename_folder_fail:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lnt;->error_rename_duplicates:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lnt;->edit_rename_to:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Lql;->먯꽌()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Llw;->궗:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Llw;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->弱밧(Llp;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Llw;->궗:Ljava/io/File;

    invoke-virtual {v8, v0, v3}, Lql;->癤욱븳援(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v9, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Llw;->궗:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    :try_start_4
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const-string v3, "_data"

    const/4 v4, 0x1

    invoke-static {v3, v10, v4}, Led;->癤욱븳援(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    if-eqz v2, :cond_c

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-eqz v1, :cond_b

    move v1, v6

    :cond_2
    const/4 v3, 0x1

    :try_start_6
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "_data"

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_2
    :try_start_8
    sget-object v2, Lms;->대떎:[Ljava/io/File;

    array-length v3, v2

    move-object v0, v7

    :goto_3
    if-lt v6, v3, :cond_4

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-static {v0}, Lms;->癤욱븳援([Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    :try_start_9
    invoke-virtual {v8}, Lql;->먯꽌()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move v1, v6

    :goto_5
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    :goto_6
    :try_start_b
    sget-object v2, Liw;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_c
    invoke-virtual {v8}, Lql;->먯꽌()V

    throw v0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    :cond_4
    :try_start_d
    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    sget-object v5, Lms;->대떎:[Ljava/io/File;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    iget-object v0, p0, Llw;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->癤욱븳援(Llp;)Llx;

    move-result-object v0

    invoke-interface {v0}, Llx;->붿슧()V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Llw;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->癤욱븳援(Llp;)Llx;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Llx;->癤욱븳援(IZ)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Llw;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->癤욱븳援(Llp;)Llx;

    move-result-object v0

    invoke-interface {v0}, Llx;->꾨뱾()Lfm;

    move-result-object v0

    sget v2, Lnt;->edit_error_rename_folder_fail:I

    sget v3, Lnt;->edit_rename_to:I

    invoke-static {v1, v0, v2, v3}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;II)Landroid/app/AlertDialog;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_a
    :try_start_e
    invoke-virtual {v8}, Lql;->먯꽌()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v1, v6

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    :cond_b
    move v1, v6

    goto/16 :goto_1

    :cond_c
    move v1, v6

    goto/16 :goto_2
.end method
