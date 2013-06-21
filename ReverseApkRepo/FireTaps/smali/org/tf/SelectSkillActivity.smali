.class public Lorg/tf/SelectSkillActivity;
.super Lorg/tf/ui/ActivityBase;
.source "SelectSkillActivity.java"

# interfaces
.implements Lorg/tf/ui/PlayableSkillView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/SelectSkillActivity$Converter;,
        Lorg/tf/SelectSkillActivity$Extractor;
    }
.end annotation


# static fields
.field private static final CONVERTER_DELAY:I = 0x2bc

.field private static final CONVERTER_PRIORITY:I = 0x0

.field private static final PAGE_CONVERTER:I = 0x3

.field private static final PAGE_EXTRACTOR:I = 0x2

.field private static final PAGE_SDCARD:I = 0x1

.field private static final SKILLPAGE_IDS:[I


# instance fields
.field private m_converter:Lorg/tf/SelectSkillActivity$Converter;

.field private m_converterPoller:Ljava/lang/Runnable;

.field private m_converterStarter:Ljava/lang/Runnable;

.field private m_converterStarting:Z

.field private m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

.field private m_extractorPoller:Ljava/lang/Runnable;

.field private m_extractorStarter:Ljava/lang/Runnable;

.field private m_extractorStarting:Z

.field private m_handler:Landroid/os/Handler;

.field private m_originalSong:Lorg/tf/song/SongInfo;

.field private m_song:Lorg/tf/song/SongInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 837
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tf/SelectSkillActivity;->SKILLPAGE_IDS:[I

    .line 52
    return-void

    .line 837
    :array_0
    .array-data 0x4
        0x32t 0x0t 0xct 0x7ft
        0x31t 0x0t 0xct 0x7ft
        0x30t 0x0t 0xct 0x7ft
        0x2ft 0x0t 0xct 0x7ft
        0x2et 0x0t 0xct 0x7ft
        0x2dt 0x0t 0xct 0x7ft
        0x2ct 0x0t 0xct 0x7ft
        0x2bt 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/tf/ui/ActivityBase;-><init>()V

    .line 805
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    .line 809
    new-instance v0, Lorg/tf/SelectSkillActivity$1;

    invoke-direct {v0, p0}, Lorg/tf/SelectSkillActivity$1;-><init>(Lorg/tf/SelectSkillActivity;)V

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractorPoller:Ljava/lang/Runnable;

    .line 814
    new-instance v0, Lorg/tf/SelectSkillActivity$2;

    invoke-direct {v0, p0}, Lorg/tf/SelectSkillActivity$2;-><init>(Lorg/tf/SelectSkillActivity;)V

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractorStarter:Ljava/lang/Runnable;

    .line 823
    new-instance v0, Lorg/tf/SelectSkillActivity$3;

    invoke-direct {v0, p0}, Lorg/tf/SelectSkillActivity$3;-><init>(Lorg/tf/SelectSkillActivity;)V

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converterPoller:Ljava/lang/Runnable;

    .line 828
    new-instance v0, Lorg/tf/SelectSkillActivity$4;

    invoke-direct {v0, p0}, Lorg/tf/SelectSkillActivity$4;-><init>(Lorg/tf/SelectSkillActivity;)V

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converterStarter:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lorg/tf/SelectSkillActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->pollExtractor()V

    return-void
.end method

.method static synthetic access$1(Lorg/tf/SelectSkillActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 808
    iput-boolean p1, p0, Lorg/tf/SelectSkillActivity;->m_extractorStarting:Z

    return-void
.end method

.method static synthetic access$10(Lorg/tf/SelectSkillActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/tf/SelectSkillActivity;->flipToPage(IZ)V

    return-void
.end method

.method static synthetic access$11(Lorg/tf/SelectSkillActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->prepareSong()V

    return-void
.end method

.method static synthetic access$12(Lorg/tf/SelectSkillActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->playSong()V

    return-void
.end method

.method static synthetic access$13(Lorg/tf/SelectSkillActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lorg/tf/SelectSkillActivity;->onConverterPageAction(I)V

    return-void
.end method

.method static synthetic access$2(Lorg/tf/SelectSkillActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->startExtractor()V

    return-void
.end method

.method static synthetic access$3(Lorg/tf/SelectSkillActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->pollConverter()V

    return-void
.end method

.method static synthetic access$4(Lorg/tf/SelectSkillActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 822
    iput-boolean p1, p0, Lorg/tf/SelectSkillActivity;->m_converterStarting:Z

    return-void
.end method

.method static synthetic access$5(Lorg/tf/SelectSkillActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->startConverter()V

    return-void
.end method

.method static synthetic access$6(Lorg/tf/song/SongInfo;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 297
    invoke-static {p0}, Lorg/tf/SelectSkillActivity;->getExtractedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lorg/tf/song/SongInfo;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-static {p0}, Lorg/tf/SelectSkillActivity;->getExtractedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lorg/tf/song/SongInfo;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 583
    invoke-static {p0}, Lorg/tf/SelectSkillActivity;->getConvertedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lorg/tf/song/SongInfo;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 588
    invoke-static {p0}, Lorg/tf/SelectSkillActivity;->getConvertedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private animate()V
    .locals 3

    .prologue
    .line 161
    .line 162
    const v1, 0x7f0c0001

    const v2, 0x7f04000a

    .line 160
    invoke-static {p0, v1, v2}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;II)I

    move-result v0

    .line 163
    .local v0, offset:I
    invoke-direct {p0, v0}, Lorg/tf/SelectSkillActivity;->animateSkillViews(I)V

    .line 164
    return-void
.end method

.method private animateSkillViews(I)V
    .locals 8
    .parameter "offset"

    .prologue
    const v7, 0x7f040006

    .line 759
    .line 760
    const v5, 0x7f090001

    .line 758
    invoke-static {p0, v5}, Lorg/tf/ui/UIHelpers;->getInteger(Landroid/content/Context;I)I

    move-result v0

    .line 761
    .local v0, delay:I
    const/4 v2, 0x3

    .local v2, i:I
    :goto_0
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 780
    const v5, 0x7f0c0033

    .line 778
    invoke-static {p0, v5, v7, p1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;III)I

    .line 782
    return-void

    .line 762
    :cond_0
    invoke-static {v2}, Lorg/tf/song/Song;->indexToSkill(I)I

    move-result v3

    .line 763
    .local v3, skill:I
    iget-object v5, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v5}, Lorg/tf/song/SongInfo;->getSkills()I

    move-result v5

    and-int/2addr v5, v3

    if-nez v5, :cond_1

    .line 761
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 766
    :cond_1
    sget-object v5, Lorg/tf/SelectSkillActivity;->SKILLPAGE_IDS:[I

    mul-int/lit8 v6, v2, 0x2

    aget v4, v5, v6

    .line 767
    .local v4, viewID:I
    sget-object v5, Lorg/tf/SelectSkillActivity;->SKILLPAGE_IDS:[I

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v1, v5, v6

    .line 768
    .local v1, dividerID:I
    invoke-static {p0, v1, v7, p1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;III)I

    .line 772
    invoke-static {p0, v4, v7, p1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;III)I

    .line 776
    add-int/2addr p1, v0

    goto :goto_1
.end method

.method private checkConverted()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 454
    iget-object v5, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v5}, Lorg/tf/song/SongInfo;->getID()I

    move-result v5

    invoke-static {v5}, Lorg/tf/song/SongCache;->find(I)Ljava/io/File;

    move-result-object v0

    .line 455
    .local v0, cachePath:Ljava/io/File;
    if-nez v0, :cond_0

    move v5, v6

    .line 471
    :goto_0
    return v5

    .line 458
    :cond_0
    iget-object v5, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-static {v5}, Lorg/tf/SelectSkillActivity;->getConvertedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v4

    .line 459
    .local v4, songFile:Ljava/io/File;
    iget-object v5, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-static {v5}, Lorg/tf/SelectSkillActivity;->getConvertedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v2

    .line 461
    .local v2, guitarFile:Ljava/io/File;
    iget-object v5, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v5}, Lorg/tf/song/SongInfo;->getSongFile()Ljava/io/File;

    move-result-object v5

    .line 460
    invoke-static {v5, v4}, Lorg/tf/SelectSkillActivity;->checkConverted(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    .line 464
    .local v3, songConverted:Z
    iget-object v5, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v5}, Lorg/tf/song/SongInfo;->getGuitarFile()Ljava/io/File;

    move-result-object v5

    .line 463
    invoke-static {v5, v2}, Lorg/tf/SelectSkillActivity;->checkConverted(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 466
    .local v1, guitarConverted:Z
    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v5, v6

    .line 467
    goto :goto_0

    .line 469
    :cond_2
    iget-object v5, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v5, v4}, Lorg/tf/song/SongInfo;->setSongFile(Ljava/io/File;)V

    .line 470
    iget-object v5, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v5, v2}, Lorg/tf/song/SongInfo;->setGuitarFile(Ljava/io/File;)V

    .line 471
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static checkConverted(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .parameter "file"
    .parameter "convertedFile"

    .prologue
    .line 574
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    .line 577
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    :cond_1
    invoke-static {p0, p1}, Lorg/tf/player/Vorbis2RawConverter;->isConvertedFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkExtracted()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v2, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v2}, Lorg/tf/song/SongInfo;->getID()I

    move-result v2

    invoke-static {v2}, Lorg/tf/song/SongCache;->find(I)Ljava/io/File;

    move-result-object v0

    .line 191
    .local v0, cachePath:Ljava/io/File;
    if-nez v0, :cond_0

    move v2, v3

    .line 203
    :goto_0
    return v2

    .line 196
    :cond_0
    iget-object v2, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v2}, Lorg/tf/song/SongInfo;->getAssetPath()Ljava/io/File;

    move-result-object v2

    .line 194
    invoke-static {p0, v2, v0}, Lorg/tf/util/AssetExtractor;->isExtracted(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 198
    .local v1, extracted:Z
    if-nez v1, :cond_1

    .line 199
    invoke-static {v0}, Lorg/tf/util/MiscHelpers;->cleanup(Ljava/io/File;)V

    move v2, v3

    .line 200
    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v2, v0}, Lorg/tf/song/SongInfo;->setFilesPath(Ljava/io/File;)V

    .line 203
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->checkConverted()Z

    move-result v2

    goto :goto_0
.end method

.method private checkSDCard()Z
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "mounted"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private freeConverter()V
    .locals 2

    .prologue
    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    .line 562
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_converterPoller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    return-void
.end method

.method private freeExtractor()V
    .locals 2

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    .line 286
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_extractorPoller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method private static getConvertedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    .locals 3
    .parameter "song"

    .prologue
    .line 589
    new-instance v0, Ljava/io/File;

    .line 590
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v1

    invoke-static {v1}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v1

    .line 591
    const-string v2, "guitar.ogg"

    invoke-static {v2}, Lorg/tf/stage/SongPlayer;->getRawFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getConvertedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    .locals 3
    .parameter "song"

    .prologue
    .line 584
    new-instance v0, Ljava/io/File;

    .line 585
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v1

    invoke-static {v1}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v1

    .line 586
    const-string v2, "song.ogg"

    invoke-static {v2}, Lorg/tf/stage/SongPlayer;->getRawFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getExtractedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    .locals 3
    .parameter "song"

    .prologue
    .line 303
    new-instance v0, Ljava/io/File;

    .line 304
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v1

    invoke-static {v1}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v1

    .line 305
    const-string v2, "guitar.ogg"

    .line 303
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getExtractedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    .locals 3
    .parameter "song"

    .prologue
    .line 298
    new-instance v0, Ljava/io/File;

    .line 299
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v1

    invoke-static {v1}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v1

    .line 300
    const-string v2, "song.ogg"

    .line 298
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSkillView(I)Lorg/tf/ui/PlayableSkillView;
    .locals 0
    .parameter "id"

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lorg/tf/SelectSkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/tf/ui/PlayableSkillView;

    return-object p0
.end method

.method private initializeSkillViews()V
    .locals 4

    .prologue
    .line 723
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 727
    return-void

    .line 724
    :cond_0
    sget-object v2, Lorg/tf/SelectSkillActivity;->SKILLPAGE_IDS:[I

    mul-int/lit8 v3, v0, 0x2

    aget v1, v2, v3

    .line 725
    .local v1, id:I
    invoke-direct {p0, v1}, Lorg/tf/SelectSkillActivity;->getSkillView(I)Lorg/tf/ui/PlayableSkillView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/tf/ui/PlayableSkillView;->setCallback(Lorg/tf/ui/PlayableSkillView$Callback;)V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadSong([B)V
    .locals 3
    .parameter "song"

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Lorg/tf/song/SongInfo;

    new-instance v2, Lorg/tf/util/DataInputBA;

    invoke-direct {v2, p1}, Lorg/tf/util/DataInputBA;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/tf/song/SongInfo;-><init>(Ljava/io/DataInput;)V

    iput-object v1, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    .line 112
    new-instance v1, Lorg/tf/song/SongInfo;

    iget-object v2, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-direct {v1, v2}, Lorg/tf/song/SongInfo;-><init>(Lorg/tf/song/SongInfo;)V

    iput-object v1, p0, Lorg/tf/SelectSkillActivity;->m_originalSong:Lorg/tf/song/SongInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onConverterPageAction(I)V
    .locals 4
    .parameter "action"

    .prologue
    .line 475
    packed-switch p1, :pswitch_data_0

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 477
    :pswitch_0
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lorg/tf/SelectSkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 478
    new-instance v1, Lorg/tf/SelectSkillActivity$7;

    invoke-direct {v1, p0}, Lorg/tf/SelectSkillActivity$7;-><init>(Lorg/tf/SelectSkillActivity;)V

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lorg/tf/SelectSkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 485
    new-instance v1, Lorg/tf/SelectSkillActivity$8;

    invoke-direct {v1, p0}, Lorg/tf/SelectSkillActivity$8;-><init>(Lorg/tf/SelectSkillActivity;)V

    .line 484
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 495
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/tf/SelectSkillActivity;->showConverterProgress(I)V

    .line 496
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_converterStarter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/SelectSkillActivity;->m_converterStarting:Z

    goto :goto_0

    .line 502
    :pswitch_2
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Converter;->stop()V

    .line 504
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->freeConverter()V

    .line 506
    :cond_1
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_converterStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 511
    :pswitch_3
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity;->m_converterStarting:Z

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_converterStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converterStarter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 515
    :cond_2
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Converter;->pause()V

    goto :goto_0

    .line 522
    :pswitch_4
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Converter;->resume()V

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onExtractorPageAction(I)V
    .locals 4
    .parameter "action"

    .prologue
    .line 207
    packed-switch p1, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lorg/tf/SelectSkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    new-instance v1, Lorg/tf/SelectSkillActivity$6;

    invoke-direct {v1, p0}, Lorg/tf/SelectSkillActivity$6;-><init>(Lorg/tf/SelectSkillActivity;)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 219
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/tf/SelectSkillActivity;->showExtractorProgress(I)V

    .line 220
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_extractorStarter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/SelectSkillActivity;->m_extractorStarting:Z

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Extractor;->stop()V

    .line 228
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->freeExtractor()V

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_extractorStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 235
    :pswitch_3
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity;->m_extractorStarting:Z

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_extractorStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractorStarter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 239
    :cond_2
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Extractor;->pause()V

    goto :goto_0

    .line 246
    :pswitch_4
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Extractor;->resume()V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onSDCardPageAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lorg/tf/SelectSkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    new-instance v1, Lorg/tf/SelectSkillActivity$5;

    invoke-direct {v1, p0}, Lorg/tf/SelectSkillActivity$5;-><init>(Lorg/tf/SelectSkillActivity;)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_0
    return-void
.end method

.method private playSong()V
    .locals 5

    .prologue
    .line 146
    :try_start_0
    new-instance v0, Lorg/tf/util/DataOutputBA;

    invoke-direct {v0}, Lorg/tf/util/DataOutputBA;-><init>()V

    .line 147
    .local v0, dataOut:Lorg/tf/util/DataOutputBA;
    iget-object v3, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v3, v0}, Lorg/tf/song/SongInfo;->saveState(Ljava/io/DataOutput;)V

    .line 148
    new-instance v3, Lorg/tf/song/SongInfo;

    iget-object v4, p0, Lorg/tf/SelectSkillActivity;->m_originalSong:Lorg/tf/song/SongInfo;

    invoke-direct {v3, v4}, Lorg/tf/song/SongInfo;-><init>(Lorg/tf/song/SongInfo;)V

    iput-object v3, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    .line 149
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/tf/GameActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "org.tf.SongInfo"

    invoke-virtual {v0}, Lorg/tf/util/DataOutputBA;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v2}, Lorg/tf/SelectSkillActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/tf/SelectSkillActivity;->flipToPage(IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 154
    .end local v0           #dataOut:Lorg/tf/util/DataOutputBA;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 155
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private pollConverter()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 538
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Converter;->check()V

    .line 539
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Converter;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Converter;->getFinishError()Ljava/lang/Exception;

    move-result-object v5

    .line 541
    .local v5, finishError:Ljava/lang/Exception;
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->freeConverter()V

    .line 542
    if-eqz v5, :cond_0

    .line 546
    const-string v2, "Failed to decode song."

    .line 547
    const/4 v3, 0x0

    .line 548
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getErrorDetails()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    .line 543
    invoke-static/range {v0 .. v5}, Lorg/tf/ErrorReportActivity;->report(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    invoke-virtual {p0}, Lorg/tf/SelectSkillActivity;->finish()V

    .line 558
    .end local v5           #finishError:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 552
    .restart local v5       #finishError:Ljava/lang/Exception;
    :cond_0
    const v0, 0x7f0c0034

    invoke-static {p0, v0, v1, v1}, Lorg/tf/ui/UIHelpers;->flipToChild(Landroid/app/Activity;IIZ)V

    goto :goto_0

    .line 556
    .end local v5           #finishError:Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Converter;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/tf/SelectSkillActivity;->showConverterProgress(I)V

    .line 557
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_converterPoller:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private pollExtractor()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Extractor;->check()V

    .line 263
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Extractor;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Extractor;->getFinishError()Ljava/lang/Exception;

    move-result-object v5

    .line 265
    .local v5, finishError:Ljava/lang/Exception;
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->freeExtractor()V

    .line 266
    if-eqz v5, :cond_0

    .line 270
    const-string v2, "Failed to extract bundled song."

    .line 271
    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getErrorDetails()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    .line 267
    invoke-static/range {v0 .. v5}, Lorg/tf/ErrorReportActivity;->report(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p0}, Lorg/tf/SelectSkillActivity;->finish()V

    .line 282
    .end local v5           #finishError:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 276
    .restart local v5       #finishError:Ljava/lang/Exception;
    :cond_0
    const v0, 0x7f0c0037

    invoke-static {p0, v0, v1, v1}, Lorg/tf/ui/UIHelpers;->flipToChild(Landroid/app/Activity;IIZ)V

    goto :goto_0

    .line 280
    .end local v5           #finishError:Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Extractor;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/tf/SelectSkillActivity;->showExtractorProgress(I)V

    .line 281
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_extractorPoller:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private prepareSong()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->isAsset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->checkSDCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0, v1, v1}, Lorg/tf/SelectSkillActivity;->flipToPage(IZ)V

    .line 142
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->checkExtracted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->playSong()V

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/tf/SelectSkillActivity;->flipToPage(IZ)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->checkConverted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->playSong()V

    goto :goto_0

    .line 139
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/tf/SelectSkillActivity;->flipToPage(IZ)V

    goto :goto_0
.end method

.method private setupSkillView(ILorg/tf/song/SongDB$Score;II)V
    .locals 5
    .parameter "skillIndex"
    .parameter "score"
    .parameter "viewID"
    .parameter "dividerID"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 741
    invoke-static {p1}, Lorg/tf/song/Song;->indexToSkill(I)I

    move-result v0

    .line 742
    .local v0, skill:I
    iget-object v2, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v2}, Lorg/tf/song/SongInfo;->getSkills()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 743
    invoke-static {p0, p4, v3}, Lorg/tf/ui/UIHelpers;->setViewVisibility(Landroid/app/Activity;II)V

    .line 744
    invoke-direct {p0, p3}, Lorg/tf/SelectSkillActivity;->getSkillView(I)Lorg/tf/ui/PlayableSkillView;

    move-result-object v1

    .line 745
    .local v1, skillView:Lorg/tf/ui/PlayableSkillView;
    invoke-virtual {v1, v3}, Lorg/tf/ui/PlayableSkillView;->setVisibility(I)V

    .line 746
    invoke-virtual {v1, v0, p2}, Lorg/tf/ui/PlayableSkillView;->setup(ILorg/tf/song/SongDB$Score;)V

    .line 751
    .end local v1           #skillView:Lorg/tf/ui/PlayableSkillView;
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-static {p0, p4, v4}, Lorg/tf/ui/UIHelpers;->setViewVisibility(Landroid/app/Activity;II)V

    .line 749
    invoke-static {p0, p3, v4}, Lorg/tf/ui/UIHelpers;->setViewVisibility(Landroid/app/Activity;II)V

    goto :goto_0
.end method

.method private setupSkillViews()V
    .locals 6

    .prologue
    .line 730
    iget-object v3, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v3}, Lorg/tf/song/SongInfo;->getID()I

    move-result v3

    invoke-static {v3}, Lorg/tf/song/SongDB;->find(I)Lorg/tf/song/SongDB$Record;

    move-result-object v2

    .line 731
    .local v2, songRecord:Lorg/tf/song/SongDB$Record;
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 738
    return-void

    .line 732
    :cond_0
    const/4 v1, 0x0

    .line 733
    .local v1, score:Lorg/tf/song/SongDB$Score;
    if-eqz v2, :cond_1

    .line 734
    invoke-static {v0}, Lorg/tf/song/Song;->indexToSkill(I)I

    move-result v3

    invoke-interface {v2, v3}, Lorg/tf/song/SongDB$Record;->getScore(I)Lorg/tf/song/SongDB$Score;

    move-result-object v1

    .line 736
    :cond_1
    sget-object v3, Lorg/tf/SelectSkillActivity;->SKILLPAGE_IDS:[I

    mul-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    sget-object v4, Lorg/tf/SelectSkillActivity;->SKILLPAGE_IDS:[I

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/tf/SelectSkillActivity;->setupSkillView(ILorg/tf/song/SongDB$Score;II)V

    .line 731
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private showConverterProgress(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 567
    .line 568
    const v1, 0x7f060013

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 566
    invoke-static {p0, v1, v2}, Lorg/tf/ui/UIHelpers;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, done:Ljava/lang/String;
    const v1, 0x7f0c0035

    invoke-static {p0, v1, v0}, Lorg/tf/ui/UIHelpers;->setText(Landroid/app/Activity;ILjava/lang/String;)V

    .line 571
    return-void
.end method

.method private showExtractorProgress(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 291
    .line 292
    const v1, 0x7f060011

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 290
    invoke-static {p0, v1, v2}, Lorg/tf/ui/UIHelpers;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, done:Ljava/lang/String;
    const v1, 0x7f0c0038

    invoke-static {p0, v1, v0}, Lorg/tf/ui/UIHelpers;->setText(Landroid/app/Activity;ILjava/lang/String;)V

    .line 295
    return-void
.end method

.method private startConverter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 531
    const v0, 0x7f0c0034

    invoke-static {p0, v0, v1, v1}, Lorg/tf/ui/UIHelpers;->flipToChild(Landroid/app/Activity;IIZ)V

    .line 532
    new-instance v0, Lorg/tf/SelectSkillActivity$Converter;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-direct {v0, v1}, Lorg/tf/SelectSkillActivity$Converter;-><init>(Lorg/tf/song/SongInfo;)V

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    .line 533
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_converter:Lorg/tf/SelectSkillActivity$Converter;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Converter;->start()V

    .line 534
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->pollConverter()V

    .line 535
    return-void
.end method

.method private startExtractor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    const v0, 0x7f0c0037

    invoke-static {p0, v0, v1, v1}, Lorg/tf/ui/UIHelpers;->flipToChild(Landroid/app/Activity;IIZ)V

    .line 256
    new-instance v0, Lorg/tf/SelectSkillActivity$Extractor;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-direct {v0, p0, v1}, Lorg/tf/SelectSkillActivity$Extractor;-><init>(Landroid/content/Context;Lorg/tf/song/SongInfo;)V

    iput-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    .line 257
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_extractor:Lorg/tf/SelectSkillActivity$Extractor;

    invoke-virtual {v0}, Lorg/tf/SelectSkillActivity$Extractor;->start()V

    .line 258
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->pollExtractor()V

    .line 259
    return-void
.end method


# virtual methods
.method protected doPageAction(II)V
    .locals 0
    .parameter "page"
    .parameter "action"

    .prologue
    .line 787
    packed-switch p1, :pswitch_data_0

    .line 798
    :goto_0
    return-void

    .line 789
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/tf/SelectSkillActivity;->onSDCardPageAction(I)V

    goto :goto_0

    .line 792
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/tf/SelectSkillActivity;->onExtractorPageAction(I)V

    goto :goto_0

    .line 795
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/tf/SelectSkillActivity;->onConverterPageAction(I)V

    goto :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v3, 0x7f030013

    invoke-virtual {p0, v3}, Lorg/tf/SelectSkillActivity;->setContentView(I)V

    .line 60
    const v3, 0x7f0c0003

    invoke-virtual {p0, v3}, Lorg/tf/SelectSkillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    .line 64
    .local v0, banner_adview:Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;
    :try_start_0
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->getAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-virtual {p0, p1}, Lorg/tf/SelectSkillActivity;->usePageFlipper(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lorg/tf/SelectSkillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 74
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "org.tf.SongInfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/tf/SelectSkillActivity;->loadSong([B)V

    .line 87
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->initializeSkillViews()V

    .line 89
    const v3, 0x7f0c0004

    iget-object v4, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v4}, Lorg/tf/song/SongInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lorg/tf/ui/UIHelpers;->setText(Landroid/app/Activity;ILjava/lang/String;)V

    .line 90
    const v3, 0x7f0c0005

    iget-object v4, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v4}, Lorg/tf/song/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lorg/tf/ui/UIHelpers;->setText(Landroid/app/Activity;ILjava/lang/String;)V

    .line 91
    invoke-static {}, Lorg/tf/ui/UISoundEffects;->playInSound()V

    .line 95
    return-void

    .line 66
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPlaySkill(I)V
    .locals 1
    .parameter "skill"

    .prologue
    .line 120
    iget-object v0, p0, Lorg/tf/SelectSkillActivity;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0, p1}, Lorg/tf/song/SongInfo;->setSelectedSkill(I)V

    .line 121
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->prepareSong()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onResume()V

    .line 99
    invoke-static {p0}, Lorg/tf/song/SongDB;->load(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->setupSkillViews()V

    .line 101
    invoke-virtual {p0}, Lorg/tf/SelectSkillActivity;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tf/SelectSkillActivity;->doPageAction(II)V

    .line 102
    invoke-virtual {p0}, Lorg/tf/SelectSkillActivity;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity;->animate()V

    .line 105
    :cond_0
    return-void
.end method
