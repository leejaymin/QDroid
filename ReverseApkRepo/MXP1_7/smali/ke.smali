.class public Lke;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private ㅼ꽑嫄:Ljava/util/HashSet;

.field private 弱밧:I

.field 癤욱븳援:Landroid/app/AlertDialog;

.field final synthetic 궗:Lcom/mxtech/videoplayer/ActivityScreen;

.field private 먯꽌:Ljava/io/File;

.field private 쇰뒗:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lke;->ㅼ꽑嫄:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->붿슧()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lke;->먯꽌:Ljava/io/File;

    iget-object v0, p0, Lke;->먯꽌:Ljava/io/File;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lke;->ㅼ꽑嫄:Ljava/util/HashSet;

    new-instance v1, Lht;

    invoke-direct {v1}, Lht;-><init>()V

    iget-object v2, p0, Lke;->먯꽌:Ljava/io/File;

    invoke-static {}, Lms;->붿슧()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lht;->癤욱븳援(Ljava/io/File;Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lke;->먯꽌:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lke;->ㅼ꽑嫄:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lnt;->menu_delete:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lnp;->delete_confirm:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lno;->message:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lnt;->edit_inquire_delete_file:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lno;->content:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v3, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lke;->癤욱븳援:Landroid/app/AlertDialog;

    iget-object v0, p0, Lke;->癤욱븳援:Landroid/app/AlertDialog;

    iget-object v1, p1, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p1, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    iget-object v1, p0, Lke;->癤욱븳援:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lke;->癤욱븳援:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private 癤욱븳援()V
    .locals 3

    iget-object v0, p0, Lke;->쇰뒗:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, p0, Lke;->쇰뒗:Landroid/net/Uri;

    iget v2, p0, Lke;->弱밧:I

    invoke-virtual {v0, v1, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Landroid/net/Uri;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting 1 + "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lke;->ㅼ꽑嫄:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " files & updating database."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "playback_complete_action"

    invoke-static {v0, v2, v5}, Lel;->癤욱븳援(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iput v1, p0, Lke;->弱밧:I

    iput-object v4, p0, Lke;->쇰뒗:Landroid/net/Uri;

    :goto_0
    iget-object v0, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->궗()V

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v2, v1, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lke;->먯꽌:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lke;->먯꽌:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " was deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lke;->먯꽌:Ljava/io/File;

    invoke-virtual {v1, v0}, Lql;->궗(Ljava/io/File;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lke;->먯꽌:Ljava/io/File;

    invoke-virtual {v1, v0, v3}, Lql;->癤욱븳援(ILjava/io/File;)V

    :cond_0
    iget-object v0, p0, Lke;->ㅼ꽑嫄:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object v0, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v2, "Updating Media Store."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const-string v2, "_data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lke;->먯꽌:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x29

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lql;->먯꽌()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    invoke-direct {p0}, Lke;->癤욱븳援()V

    :goto_4
    return-void

    :pswitch_0
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "shuffle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_5
    iput v0, p0, Lke;->弱밧:I

    iget-object v0, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->뚮젮議뚮떎怨(Lcom/mxtech/videoplayer/ActivityScreen;)Lmv;

    move-result-object v0

    iget-object v2, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, v2, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v2}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lke;->弱밧:I

    invoke-virtual {v0, v2, v3, v1}, Lmv;->癤욱븳援(Landroid/net/Uri;IZ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lke;->쇰뒗:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_5

    :cond_2
    :try_start_6
    sget-object v0, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lke;->먯꽌:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " was NOT deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lnt;->file_deletion_failure:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v3, v0, p0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v1}, Lql;->먯꽌()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    :try_start_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " was deleted."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_b
    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0

    :cond_4
    :try_start_c
    sget-object v4, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " was NOT deleted."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_d
    sget-object v2, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lke;->궗:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    invoke-direct {p0}, Lke;->癤욱븳援()V

    return-void
.end method
