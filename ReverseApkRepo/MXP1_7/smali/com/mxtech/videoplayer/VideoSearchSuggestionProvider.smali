.class public Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;
.super Landroid/content/ContentProvider;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final 癤욱븳援:Ljava/lang/String;

.field private static final 궗:[Ljava/lang/String;

.field private static final 먯꽌:[Ljava/lang/String;


# instance fields
.field private ㅼ꽑嫄:Ljava/util/Set;

.field private 弱밧:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".SSP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->癤욱븳援:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "suggest_intent_query"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->궗:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Id AS _id"

    aput-object v1, v0, v2

    const-string v1, "Query AS suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "Query AS suggest_intent_query"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->먯꽌:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v0, v1, Lcom/mxtech/app/MXApplication;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/mxtech/app/MXApplication;

    invoke-virtual {v0}, Lcom/mxtech/app/MXApplication;->癤욱븳援()V

    check-cast v1, Lcom/mxtech/app/MXApplication;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/mxtech/app/MXApplication;->癤욱븳援(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->ㅼ꽑嫄:Ljava/util/Set;

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "video_scan_roots"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->ㅼ꽑嫄:Ljava/util/Set;

    goto :goto_0

    :pswitch_2
    const-string v0, "show_hidden"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->ㅼ꽑嫄:Ljava/util/Set;

    goto :goto_0

    :pswitch_3
    const-string v0, "respect_nomedia"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->ㅼ꽑嫄:Ljava/util/Set;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->먯꽌:[Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lql;->癤욱븳援([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v4}, Lql;->먯꽌()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const v0, 0x7fffffff

    if-eqz v1, :cond_8

    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    move v3, v0

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->ㅼ꽑嫄:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->弱밧:J

    const-wide/32 v6, 0xea60

    add-long/2addr v0, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-gez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->ㅼ꽑嫄:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lqp;->癤욱븳援(Landroid/content/Context;Lql;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->弱밧:J

    :cond_4
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->궗:[Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->ㅼ꽑嫄:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    :goto_3
    :try_start_5
    invoke-virtual {v4}, Lql;->먯꽌()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move v3, v0

    goto :goto_1

    :cond_6
    :try_start_6
    aget-object v6, v1, v0

    iget-object v7, p0, Lcom/mxtech/videoplayer/VideoSearchSuggestionProvider;->ㅼ꽑嫄:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgm;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getCount()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-ne v0, v3, :cond_5

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v4}, Lql;->먯꽌()V

    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_8
    move v3, v0

    goto/16 :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
