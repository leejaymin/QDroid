.class public Lorg/tf/BrowserActivity;
.super Lorg/tf/ui/ActivityBase;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/BrowserActivity$SongComparator;,
        Lorg/tf/BrowserActivity$SongLoadedRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/tf/ui/ActivityBase;",
        "Landroid/widget/ListAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final ITEMVIEW_HEADER:I = 0x0

.field private static final ITEMVIEW_ITEM:I = 0x1

.field private static final ITEM_ALL:I = 0x301

.field private static final ITEM_ALL_HEADER:I = 0x200

.field private static final ITEM_ITEMVIEW_COUNT:I = 0x2

.field private static final ITEM_ITEMVIEW_MASK:I = 0xff

.field private static final ITEM_RECENT:I = 0x101

.field private static final ITEM_RECENT_HEADER:I = 0x0

.field private static final ITEM_UNKNOWN:I = 0xff00

.field private static final PAGE_LOADER:I = 0x1

.field private static final SONGS_FILE:Ljava/lang/String; = "browser.cache"

.field private static final SONG_COMPARATOR:Lorg/tf/BrowserActivity$SongComparator;


# instance fields
.field private m_loadingPauseEvent:Ljava/lang/Object;

.field private m_loadingPaused:Z

.field private m_loadingThread:Ljava/lang/Thread;

.field private m_observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private m_recentSongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/song/SongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_songTraceViews:[Landroid/widget/TextView;

.field private m_songs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/song/SongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_songsCookie:J

.field private m_songsLoaded:I

.field private m_songsLoadedView:Landroid/widget/TextView;

.field private volatile m_stopLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Lorg/tf/BrowserActivity$SongComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/tf/BrowserActivity$SongComparator;-><init>(Lorg/tf/BrowserActivity$SongComparator;)V

    sput-object v0, Lorg/tf/BrowserActivity;->SONG_COMPARATOR:Lorg/tf/BrowserActivity$SongComparator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/tf/ui/ActivityBase;-><init>()V

    .line 547
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/BrowserActivity;->m_loadingPauseEvent:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method static synthetic access$1(Lorg/tf/BrowserActivity;Lorg/tf/song/SongInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lorg/tf/BrowserActivity;->updateLoadingProgress(Lorg/tf/song/SongInfo;)V

    return-void
.end method

.method static synthetic access$2(Lorg/tf/BrowserActivity;Lorg/tf/song/SongInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/tf/BrowserActivity;->onSongLoaded(Lorg/tf/song/SongInfo;)V

    return-void
.end method

.method static synthetic access$3(Lorg/tf/BrowserActivity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lorg/tf/BrowserActivity;->loadBuiltinSongs(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$4(Lorg/tf/BrowserActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->checkLoadingStopped()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lorg/tf/BrowserActivity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lorg/tf/BrowserActivity;->loadSongs(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$6(Lorg/tf/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->reportLoadingFinished()V

    return-void
.end method

.method static synthetic access$7(Lorg/tf/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->onLoadingFinished()V

    return-void
.end method

.method private static addSorted(Ljava/util/ArrayList;Lorg/tf/song/SongInfo;)V
    .locals 3
    .parameter
    .parameter "song"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/song/SongInfo;",
            ">;",
            "Lorg/tf/song/SongInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/tf/song/SongInfo;>;"
    sget-object v1, Lorg/tf/BrowserActivity;->SONG_COMPARATOR:Lorg/tf/BrowserActivity$SongComparator;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 520
    .local v0, i:I
    if-gez v0, :cond_0

    .line 521
    neg-int v1, v0

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 523
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 524
    return-void
.end method

.method private checkLoadingStopped()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_loadingPauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-boolean v1, p0, Lorg/tf/BrowserActivity;->m_loadingPaused:Z

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_loadingPauseEvent:Ljava/lang/Object;

    invoke-static {v1}, Lskiba/util/Simply;->waitNoLock(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-boolean v0, p0, Lorg/tf/BrowserActivity;->m_stopLoading:Z

    return v0

    .line 262
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getItemType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 410
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    if-nez p1, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 414
    const/16 v0, 0x101

    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 419
    :cond_2
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    if-nez p1, :cond_3

    .line 421
    const/16 v0, 0x200

    goto :goto_0

    .line 422
    :cond_3
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 423
    const/16 v0, 0x301

    goto :goto_0

    .line 425
    :cond_4
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 428
    :cond_5
    const v0, 0xff00

    goto :goto_0
.end method

.method private loadBuiltinSongs(Ljava/io/File;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 272
    :try_start_0
    new-instance v3, Lorg/tf/song/SongInfo;

    invoke-virtual {p0}, Lorg/tf/BrowserActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lorg/tf/song/SongInfo;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;)V

    invoke-direct {p0, v3}, Lorg/tf/BrowserActivity;->reportSongLoaded(Lorg/tf/song/SongInfo;)V
    :try_end_0
    .catch Lorg/tf/song/InvalidSongException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->checkLoadingStopped()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0}, Lorg/tf/BrowserActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, fileNames:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 285
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_0

    aget-object v1, v2, v4

    .line 286
    .local v1, fileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lorg/tf/BrowserActivity;->loadBuiltinSongs(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 289
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #fileNames:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 290
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private loadSongs(Ljava/io/File;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 295
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    :cond_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 299
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 302
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, v1, v3

    .line 303
    .local v0, file:Ljava/io/File;
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->checkLoadingStopped()Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 302
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_2
    :try_start_0
    new-instance v4, Lorg/tf/song/SongInfo;

    invoke-direct {v4, v0}, Lorg/tf/song/SongInfo;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v4}, Lorg/tf/BrowserActivity;->reportSongLoaded(Lorg/tf/song/SongInfo;)V
    :try_end_0
    .catch Lorg/tf/song/InvalidSongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_2
    invoke-direct {p0, v0}, Lorg/tf/BrowserActivity;->loadSongs(Ljava/io/File;)V

    goto :goto_1

    .line 312
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 509
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_observers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    :cond_0
    return-void

    .line 510
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 511
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method private obtainSongsCookie()Z
    .locals 6

    .prologue
    .line 179
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/tf/BrowserActivity;->m_songsCookie:J

    .line 180
    invoke-static {}, Lorg/tf/Config;->getSongsPath()Ljava/io/File;

    move-result-object v1

    .line 181
    .local v1, path:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, files:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    array-length v4, v0

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tf/BrowserActivity;->m_songsCookie:J

    .line 185
    const/4 v2, 0x1

    .line 188
    .end local v0           #files:[Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onLoadingFinished()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->saveSongs()V

    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/tf/BrowserActivity;->flipToPage(IZ)V

    .line 156
    return-void
.end method

.method private onSongLoaded(Lorg/tf/song/SongInfo;)V
    .locals 1
    .parameter "song"

    .prologue
    .line 149
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/tf/BrowserActivity;->addSorted(Ljava/util/ArrayList;Lorg/tf/song/SongInfo;)V

    .line 150
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method private pauseLoading()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_loadingPauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/tf/BrowserActivity;->m_loadingPaused:Z

    .line 249
    monitor-exit v0

    .line 252
    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportLoadingFinished()V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lorg/tf/BrowserActivity$2;

    invoke-direct {v0, p0}, Lorg/tf/BrowserActivity$2;-><init>(Lorg/tf/BrowserActivity;)V

    invoke-virtual {p0, v0}, Lorg/tf/BrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method private reportSongLoaded(Lorg/tf/song/SongInfo;)V
    .locals 1
    .parameter "song"

    .prologue
    .line 320
    new-instance v0, Lorg/tf/BrowserActivity$SongLoadedRunnable;

    invoke-direct {v0, p0, p1}, Lorg/tf/BrowserActivity$SongLoadedRunnable;-><init>(Lorg/tf/BrowserActivity;Lorg/tf/song/SongInfo;)V

    invoke-virtual {p0, v0}, Lorg/tf/BrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method private reportSongsLoaded()V
    .locals 5

    .prologue
    .line 367
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songsLoadedView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songsLoadedView:Landroid/widget/TextView;

    .line 369
    const v1, 0x7f06002b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/tf/BrowserActivity;->m_songsLoaded:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/tf/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :cond_0
    return-void
.end method

.method private resetLoadingProgress()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 357
    iput v3, p0, Lorg/tf/BrowserActivity;->m_songsLoaded:I

    .line 358
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->reportSongsLoaded()V

    .line 359
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    array-length v2, v1

    :goto_0
    if-lt v3, v2, :cond_1

    .line 364
    :cond_0
    return-void

    .line 360
    :cond_1
    aget-object v0, v1, v3

    .line 361
    .local v0, view:Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private restoreSongs()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 193
    :try_start_0
    const-string v7, "browser.cache"

    invoke-virtual {p0, v7}, Lorg/tf/BrowserActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 194
    .local v6, stream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v3, dataIn:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 196
    .local v0, cacheTime:J
    iget-wide v7, p0, Lorg/tf/BrowserActivity;->m_songsCookie:J

    cmp-long v7, v7, v0

    if-eqz v7, :cond_0

    move v7, v9

    .line 206
    .end local v0           #cacheTime:J
    .end local v3           #dataIn:Ljava/io/DataInputStream;
    .end local v6           #stream:Ljava/io/InputStream;
    :goto_0
    return v7

    .line 199
    .restart local v0       #cacheTime:J
    .restart local v3       #dataIn:Ljava/io/DataInputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 200
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ne v5, v2, :cond_1

    .line 203
    const/4 v7, 0x1

    goto :goto_0

    .line 201
    :cond_1
    new-instance v7, Lorg/tf/song/SongInfo;

    invoke-direct {v7, v3}, Lorg/tf/song/SongInfo;-><init>(Ljava/io/DataInput;)V

    invoke-direct {p0, v7}, Lorg/tf/BrowserActivity;->onSongLoaded(Lorg/tf/song/SongInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 205
    .end local v0           #cacheTime:J
    .end local v2           #count:I
    .end local v3           #dataIn:Ljava/io/DataInputStream;
    .end local v5           #i:I
    .end local v6           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, e:Ljava/io/IOException;
    move v7, v9

    .line 206
    goto :goto_0
.end method

.method private resumeLoading()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_loadingPauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/tf/BrowserActivity;->m_loadingPaused:Z

    .line 257
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_loadingPauseEvent:Ljava/lang/Object;

    invoke-static {v1}, Lskiba/util/Simply;->notify(Ljava/lang/Object;)V

    .line 255
    monitor-exit v0

    .line 259
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveSongs()V
    .locals 6

    .prologue
    .line 162
    :try_start_0
    const-string v4, "browser.cache"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/tf/BrowserActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 163
    .local v3, stream:Ljava/io/OutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    .local v0, dataOut:Ljava/io/DataOutputStream;
    iget-wide v4, p0, Lorg/tf/BrowserActivity;->m_songsCookie:J

    invoke-virtual {v0, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 165
    iget-object v4, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 166
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, e:I
    :goto_0
    if-ne v2, v1, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 170
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 171
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 176
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .end local v1           #e:I
    .end local v2           #i:I
    .end local v3           #stream:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 167
    .restart local v0       #dataOut:Ljava/io/DataOutputStream;
    .restart local v1       #e:I
    .restart local v2       #i:I
    .restart local v3       #stream:Ljava/io/OutputStream;
    :cond_0
    iget-object v4, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/tf/song/SongInfo;

    invoke-virtual {v4, v0}, Lorg/tf/song/SongInfo;->saveState(Ljava/io/DataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .end local v1           #e:I
    .end local v2           #i:I
    .end local v3           #stream:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private startLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tf/BrowserActivity;->stopLoading(Z)V

    .line 214
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->resetLoadingProgress()V

    .line 215
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->notifyDataSetChanged()V

    .line 219
    iput-boolean v1, p0, Lorg/tf/BrowserActivity;->m_stopLoading:Z

    .line 220
    iput-boolean v1, p0, Lorg/tf/BrowserActivity;->m_loadingPaused:Z

    .line 221
    new-instance v0, Lorg/tf/BrowserActivity$1;

    invoke-direct {v0, p0}, Lorg/tf/BrowserActivity$1;-><init>(Lorg/tf/BrowserActivity;)V

    iput-object v0, p0, Lorg/tf/BrowserActivity;->m_loadingThread:Ljava/lang/Thread;

    .line 237
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_loadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    return-void
.end method

.method private stopLoading(Z)V
    .locals 1
    .parameter "join"

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/BrowserActivity;->m_stopLoading:Z

    .line 242
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->resumeLoading()V

    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_loadingThread:Ljava/lang/Thread;

    invoke-static {v0}, Lskiba/util/Simply;->join(Ljava/lang/Thread;)Z

    .line 246
    :cond_0
    return-void
.end method

.method private updateLoadingProgress(Lorg/tf/song/SongInfo;)V
    .locals 7
    .parameter "song"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 343
    iget v2, p0, Lorg/tf/BrowserActivity;->m_songsLoaded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tf/BrowserActivity;->m_songsLoaded:I

    .line 344
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->reportSongsLoaded()V

    .line 345
    iget-object v2, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 347
    const v2, 0x7f06002a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 348
    invoke-virtual {p1}, Lorg/tf/song/SongInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lorg/tf/song/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 346
    invoke-virtual {p0, v2, v3}, Lorg/tf/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, trace:Ljava/lang/String;
    iget-object v2, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    array-length v2, v2

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_0
    if-gtz v0, :cond_1

    .line 352
    iget-object v2, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .end local v0           #i:I
    .end local v1           #trace:Ljava/lang/String;
    :cond_0
    return-void

    .line 350
    .restart local v0       #i:I
    .restart local v1       #trace:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    sub-int v4, v0, v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method protected doPageAction(II)V
    .locals 4
    .parameter "page"
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    .line 375
    if-ne p1, v3, :cond_0

    if-nez p2, :cond_0

    .line 376
    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Lorg/tf/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/tf/BrowserActivity;->m_songsLoadedView:Landroid/widget/TextView;

    .line 377
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    .line 378
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lorg/tf/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 379
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lorg/tf/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 380
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lorg/tf/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 381
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songTraceViews:[Landroid/widget/TextView;

    const/4 v1, 0x3

    const v2, 0x7f0c000a

    invoke-virtual {p0, v2}, Lorg/tf/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    aput-object p0, v0, v1

    .line 383
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, count:I
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 447
    :cond_1
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/tf/BrowserActivity;->getItem(I)Lorg/tf/song/SongInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/tf/song/SongInfo;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    if-nez p1, :cond_0

    move-object v0, v1

    .line 406
    .end local p0
    :goto_0
    return-object v0

    .line 391
    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 392
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    sub-int v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/tf/song/SongInfo;

    move-object v0, p0

    goto :goto_0

    .line 394
    .restart local p0
    :cond_1
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 397
    :cond_2
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    if-nez p1, :cond_3

    move-object v0, v1

    .line 399
    goto :goto_0

    .line 400
    :cond_3
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 401
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    sub-int v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/tf/song/SongInfo;

    move-object v0, p0

    goto :goto_0

    .line 403
    .restart local p0
    :cond_4
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    :cond_5
    move-object v0, v1

    .line 406
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 451
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lorg/tf/BrowserActivity;->getItemType(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0c0004

    .line 484
    invoke-virtual {p0, p1}, Lorg/tf/BrowserActivity;->getItemViewType(I)I

    move-result v0

    .line 485
    .local v0, itemViewType:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 486
    if-nez p2, :cond_0

    .line 487
    invoke-virtual {p0}, Lorg/tf/BrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 489
    :cond_0
    invoke-virtual {p0, p1}, Lorg/tf/BrowserActivity;->getItem(I)Lorg/tf/song/SongInfo;

    move-result-object v1

    .line 490
    .local v1, song:Lorg/tf/song/SongInfo;
    invoke-virtual {v1}, Lorg/tf/song/SongInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v4, v2}, Lorg/tf/ui/UIHelpers;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 491
    const v2, 0x7f0c0005

    invoke-virtual {v1}, Lorg/tf/song/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lorg/tf/ui/UIHelpers;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 505
    .end local v1           #song:Lorg/tf/song/SongInfo;
    :goto_0
    return-object p2

    .line 493
    :cond_1
    if-nez p2, :cond_2

    .line 494
    invoke-virtual {p0}, Lorg/tf/BrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 496
    :cond_2
    invoke-direct {p0, p1}, Lorg/tf/BrowserActivity;->getItemType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 498
    :sswitch_0
    const v2, 0x7f060029

    invoke-virtual {p0, v2}, Lorg/tf/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v4, v2}, Lorg/tf/ui/UIHelpers;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 501
    :sswitch_1
    const v2, 0x7f060028

    invoke-virtual {p0, v2}, Lorg/tf/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v4, v2}, Lorg/tf/ui/UIHelpers;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lorg/tf/BrowserActivity;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 436
    invoke-virtual {p0, p1}, Lorg/tf/BrowserActivity;->getItemViewType(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBackToMainPage()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lorg/tf/BrowserActivity;->setContentView(I)V

    .line 59
    const v3, 0x7f0c0003

    invoke-virtual {p0, v3}, Lorg/tf/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    .line 63
    .local v0, banner_adview:Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;
    :try_start_0
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->getAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-virtual {p0, p1}, Lorg/tf/BrowserActivity;->usePageFlipper(Landroid/os/Bundle;)V

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/tf/BrowserActivity;->m_recentSongs:Ljava/util/ArrayList;

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/tf/BrowserActivity;->m_songs:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->obtainSongsCookie()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->restoreSongs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    invoke-virtual {p0, v4, v4}, Lorg/tf/BrowserActivity;->flipToPage(IZ)V

    .line 82
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->startLoading()V

    .line 88
    :cond_0
    :goto_1
    const v3, 0x7f0c0002

    invoke-virtual {p0, v3}, Lorg/tf/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 89
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    return-void

    .line 65
    .end local v2           #list:Landroid/widget/ListView;
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->startLoading()V

    goto :goto_1
.end method

.method protected onCreateMenuView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lorg/tf/BrowserActivity;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 115
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/tf/BrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onDestroy()V

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tf/BrowserActivity;->stopLoading(Z)V

    .line 109
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 134
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lorg/tf/BrowserActivity;->getItem(I)Lorg/tf/song/SongInfo;

    move-result-object v3

    .line 135
    .local v3, song:Lorg/tf/song/SongInfo;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lorg/tf/SelectSkillActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v0, Lorg/tf/util/DataOutputBA;

    invoke-direct {v0}, Lorg/tf/util/DataOutputBA;-><init>()V

    .line 138
    .local v0, dataOut:Lorg/tf/util/DataOutputBA;
    invoke-virtual {v3, v0}, Lorg/tf/song/SongInfo;->saveState(Ljava/io/DataOutput;)V

    .line 139
    const-string v4, "org.tf.SongInfo"

    invoke-virtual {v0}, Lorg/tf/util/DataOutputBA;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    invoke-virtual {p0, v2}, Lorg/tf/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void

    .line 141
    .end local v0           #dataOut:Lorg/tf/util/DataOutputBA;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 142
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public onMenuItemClick(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 119
    const v0, 0x7f0c0029

    if-ne p1, v0, :cond_0

    .line 120
    invoke-virtual {p0, v1, v1}, Lorg/tf/BrowserActivity;->flipToPage(IZ)V

    .line 121
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->obtainSongsCookie()Z

    .line 122
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->startLoading()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onPause()V

    .line 98
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->pauseLoading()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onResume()V

    .line 103
    invoke-direct {p0}, Lorg/tf/BrowserActivity;->resumeLoading()V

    .line 104
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 471
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_observers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tf/BrowserActivity;->m_observers:Ljava/util/ArrayList;

    .line 474
    :cond_0
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 478
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/tf/BrowserActivity;->m_observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 481
    :cond_0
    return-void
.end method
