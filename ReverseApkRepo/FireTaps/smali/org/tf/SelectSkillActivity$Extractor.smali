.class public Lorg/tf/SelectSkillActivity$Extractor;
.super Ljava/lang/Object;
.source "SelectSkillActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/SelectSkillActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extractor"
.end annotation


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_converter:Lorg/tf/player/Vorbis2RawConverter;

.field private m_convertingGuitarFile:Z

.field private m_extractor:Lorg/tf/util/AssetExtractor;

.field private m_finishError:Ljava/lang/Exception;

.field private m_finished:Z

.field private m_song:Lorg/tf/song/SongInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/tf/song/SongInfo;)V
    .locals 0
    .parameter "context"
    .parameter "song"

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_context:Landroid/content/Context;

    .line 313
    iput-object p2, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    .line 314
    return-void
.end method

.method private setSongFiles()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v1}, Lorg/tf/song/SongInfo;->getID()I

    move-result v1

    invoke-static {v1}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/song/SongInfo;->setFilesPath(Ljava/io/File;)V

    .line 435
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getConvertedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v1}, Lorg/tf/SelectSkillActivity;->access$8(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/song/SongInfo;->setSongFile(Ljava/io/File;)V

    .line 436
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getConvertedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v1}, Lorg/tf/SelectSkillActivity;->access$9(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/song/SongInfo;->setGuitarFile(Ljava/io/File;)V

    .line 437
    return-void
.end method

.method private startConverter(Z)V
    .locals 7
    .parameter "convertSong"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 414
    if-eqz p1, :cond_0

    .line 415
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getExtractedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v3}, Lorg/tf/SelectSkillActivity;->access$6(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    .line 417
    .local v1, inputFile:Ljava/io/File;
    :goto_0
    if-eqz p1, :cond_1

    .line 418
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getConvertedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v3}, Lorg/tf/SelectSkillActivity;->access$8(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 421
    .local v2, outputFile:Ljava/io/File;
    :goto_1
    :try_start_0
    new-instance v3, Lorg/tf/player/Vorbis2RawConverter;

    invoke-direct {v3}, Lorg/tf/player/Vorbis2RawConverter;-><init>()V

    iput-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    .line 422
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/tf/player/Vorbis2RawConverter;->setPriority(I)V

    .line 423
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v3, v1, v2}, Lorg/tf/player/Vorbis2RawConverter;->start(Ljava/io/File;Ljava/io/File;)V

    .line 424
    if-eqz p1, :cond_2

    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_convertingGuitarFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_3
    return-void

    .line 416
    .end local v1           #inputFile:Ljava/io/File;
    .end local v2           #outputFile:Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getExtractedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v3}, Lorg/tf/SelectSkillActivity;->access$7(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 419
    .restart local v1       #inputFile:Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getConvertedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v3}, Lorg/tf/SelectSkillActivity;->access$9(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .restart local v2       #outputFile:Ljava/io/File;
    :cond_2
    move v3, v6

    .line 424
    goto :goto_2

    .line 426
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 427
    .local v0, e:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    .line 428
    iput-boolean v6, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finished:Z

    .line 429
    iput-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finishError:Ljava/lang/Exception;

    goto :goto_3
.end method


# virtual methods
.method public check()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 359
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finished:Z

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    invoke-virtual {v0}, Lorg/tf/util/AssetExtractor;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    invoke-virtual {v0}, Lorg/tf/util/AssetExtractor;->getFinishError()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finishError:Ljava/lang/Exception;

    .line 364
    iput-object v2, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    .line 365
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finishError:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 366
    iput-boolean v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finished:Z

    goto :goto_0

    .line 368
    :cond_2
    invoke-direct {p0, v1}, Lorg/tf/SelectSkillActivity$Extractor;->startConverter(Z)V

    goto :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->getFinishError()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finishError:Ljava/lang/Exception;

    .line 374
    iput-object v2, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    .line 375
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finishError:Ljava/lang/Exception;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_convertingGuitarFile:Z

    if-eqz v0, :cond_6

    .line 376
    :cond_4
    iput-boolean v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finished:Z

    .line 377
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finishError:Ljava/lang/Exception;

    if-nez v0, :cond_5

    .line 378
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity$Extractor;->setSongFiles()V

    goto :goto_0

    .line 380
    :cond_5
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v0

    invoke-static {v0}, Lorg/tf/song/SongCache;->remove(I)V

    goto :goto_0

    .line 383
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/tf/SelectSkillActivity$Extractor;->startConverter(Z)V

    goto :goto_0
.end method

.method public getFinishError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finishError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 390
    iget-boolean v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finished:Z

    if-eqz v1, :cond_0

    .line 391
    const/16 v1, 0x64

    .line 400
    :goto_0
    return v1

    .line 393
    :cond_0
    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    invoke-virtual {v1}, Lorg/tf/util/AssetExtractor;->getProgress()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 396
    :cond_1
    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-eqz v1, :cond_3

    .line 397
    iget-boolean v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_convertingGuitarFile:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x42

    move v0, v1

    .line 398
    .local v0, base:I
    :goto_1
    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v1}, Lorg/tf/player/Vorbis2RawConverter;->getProgress()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    goto :goto_0

    .line 397
    .end local v0           #base:I
    :cond_2
    const/16 v1, 0x21

    move v0, v1

    goto :goto_1

    .line 400
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finished:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    invoke-virtual {v0}, Lorg/tf/util/AssetExtractor;->pause()V

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->pause()V

    .line 348
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    invoke-virtual {v0}, Lorg/tf/util/AssetExtractor;->resume()V

    .line 353
    :cond_0
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->resume()V

    .line 356
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v0

    invoke-static {v0}, Lorg/tf/song/SongCache;->push(I)Ljava/io/File;

    .line 318
    new-instance v0, Lorg/tf/util/AssetExtractor;

    .line 319
    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_context:Landroid/content/Context;

    .line 320
    iget-object v2, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v2}, Lorg/tf/song/SongInfo;->getAssetPath()Ljava/io/File;

    move-result-object v2

    .line 321
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v3}, Lorg/tf/song/SongInfo;->getID()I

    move-result v3

    invoke-static {v3}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/tf/util/AssetExtractor;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    .line 318
    iput-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    .line 322
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    invoke-virtual {v0}, Lorg/tf/util/AssetExtractor;->start()V

    .line 323
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finished:Z

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    invoke-virtual {v0}, Lorg/tf/util/AssetExtractor;->stop()V

    .line 330
    iput-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_extractor:Lorg/tf/util/AssetExtractor;

    .line 332
    :cond_1
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->stop()V

    .line 334
    iput-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    .line 336
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finished:Z

    .line 337
    iput-object v1, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_finishError:Ljava/lang/Exception;

    .line 338
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Extractor;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v0

    invoke-static {v0}, Lorg/tf/song/SongCache;->remove(I)V

    goto :goto_0
.end method
