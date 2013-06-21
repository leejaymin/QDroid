.class Lorg/tf/SelectSkillActivity$Converter;
.super Ljava/lang/Object;
.source "SelectSkillActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/SelectSkillActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Converter"
.end annotation


# instance fields
.field private m_converter:Lorg/tf/player/Vorbis2RawConverter;

.field private m_convertingGuitarFile:Z

.field private m_finishError:Ljava/lang/Exception;

.field private m_finished:Z

.field private m_haveGuitarFile:Z

.field private m_haveSongFile:Z

.field private m_song:Lorg/tf/song/SongInfo;


# direct methods
.method public constructor <init>(Lorg/tf/song/SongInfo;)V
    .locals 0
    .parameter "song"

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    .line 599
    return-void
.end method

.method private setSongFiles()V
    .locals 2

    .prologue
    .line 701
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveSongFile:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getConvertedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v1}, Lorg/tf/SelectSkillActivity;->access$8(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/song/SongInfo;->setSongFile(Ljava/io/File;)V

    .line 704
    :cond_0
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveGuitarFile:Z

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getConvertedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v1}, Lorg/tf/SelectSkillActivity;->access$9(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/song/SongInfo;->setGuitarFile(Ljava/io/File;)V

    .line 707
    :cond_1
    return-void
.end method

.method private startConverter(Z)V
    .locals 7
    .parameter "convertSongFile"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 682
    if-eqz p1, :cond_0

    .line 683
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v3}, Lorg/tf/song/SongInfo;->getSongFile()Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    .line 685
    .local v1, inputFile:Ljava/io/File;
    :goto_0
    if-eqz p1, :cond_1

    .line 686
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getConvertedSongFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v3}, Lorg/tf/SelectSkillActivity;->access$8(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 689
    .local v2, outputFile:Ljava/io/File;
    :goto_1
    :try_start_0
    new-instance v3, Lorg/tf/player/Vorbis2RawConverter;

    invoke-direct {v3}, Lorg/tf/player/Vorbis2RawConverter;-><init>()V

    iput-object v3, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    .line 690
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/tf/player/Vorbis2RawConverter;->setPriority(I)V

    .line 691
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v3, v1, v2}, Lorg/tf/player/Vorbis2RawConverter;->start(Ljava/io/File;Ljava/io/File;)V

    .line 692
    if-eqz p1, :cond_2

    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lorg/tf/SelectSkillActivity$Converter;->m_convertingGuitarFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_3
    return-void

    .line 684
    .end local v1           #inputFile:Ljava/io/File;
    .end local v2           #outputFile:Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v3}, Lorg/tf/song/SongInfo;->getGuitarFile()Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 687
    .restart local v1       #inputFile:Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    #calls: Lorg/tf/SelectSkillActivity;->getConvertedGuitarFile(Lorg/tf/song/SongInfo;)Ljava/io/File;
    invoke-static {v3}, Lorg/tf/SelectSkillActivity;->access$9(Lorg/tf/song/SongInfo;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .restart local v2       #outputFile:Ljava/io/File;
    :cond_2
    move v3, v6

    .line 692
    goto :goto_2

    .line 694
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 695
    .local v0, e:Ljava/io/IOException;
    iput-boolean v6, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finished:Z

    .line 696
    iput-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finishError:Ljava/lang/Exception;

    goto :goto_3
.end method


# virtual methods
.method public check()V
    .locals 2

    .prologue
    .line 636
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finished:Z

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->getFinishError()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finishError:Ljava/lang/Exception;

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    .line 642
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finishError:Ljava/lang/Exception;

    if-nez v0, :cond_2

    .line 643
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_convertingGuitarFile:Z

    iget-boolean v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveGuitarFile:Z

    if-ne v0, v1, :cond_4

    .line 645
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finished:Z

    .line 646
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finishError:Ljava/lang/Exception;

    if-nez v0, :cond_3

    .line 647
    invoke-direct {p0}, Lorg/tf/SelectSkillActivity$Converter;->setSongFiles()V

    goto :goto_0

    .line 649
    :cond_3
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v0

    invoke-static {v0}, Lorg/tf/song/SongCache;->remove(I)V

    goto :goto_0

    .line 652
    :cond_4
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_convertingGuitarFile:Z

    invoke-direct {p0, v0}, Lorg/tf/SelectSkillActivity$Converter;->startConverter(Z)V

    goto :goto_0
.end method

.method public getFinishError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finishError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getProgress()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 658
    iget-boolean v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finished:Z

    if-eqz v1, :cond_0

    .line 659
    const/16 v1, 0x64

    .line 668
    :goto_0
    return v1

    .line 661
    :cond_0
    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-nez v1, :cond_1

    move v1, v2

    .line 662
    goto :goto_0

    .line 664
    :cond_1
    iget-boolean v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveSongFile:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveGuitarFile:Z

    if-nez v1, :cond_3

    .line 665
    :cond_2
    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v1}, Lorg/tf/player/Vorbis2RawConverter;->getProgress()I

    move-result v1

    goto :goto_0

    .line 667
    :cond_3
    iget-boolean v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_convertingGuitarFile:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x32

    move v0, v1

    .line 668
    .local v0, base:I
    :goto_1
    iget-object v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v1}, Lorg/tf/player/Vorbis2RawConverter;->getProgress()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    goto :goto_0

    .end local v0           #base:I
    :cond_4
    move v0, v2

    .line 667
    goto :goto_1
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finished:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->pause()V

    .line 628
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->resume()V

    .line 633
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v0

    invoke-static {v0}, Lorg/tf/song/SongCache;->push(I)Ljava/io/File;

    .line 603
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getSongFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveSongFile:Z

    .line 604
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getGuitarFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveGuitarFile:Z

    .line 605
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveSongFile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveGuitarFile:Z

    if-nez v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finished:Z

    .line 610
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_haveSongFile:Z

    invoke-direct {p0, v0}, Lorg/tf/SelectSkillActivity$Converter;->startConverter(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finished:Z

    if-eqz v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->stop()V

    .line 617
    iput-object v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    .line 619
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finished:Z

    .line 620
    iput-object v1, p0, Lorg/tf/SelectSkillActivity$Converter;->m_finishError:Ljava/lang/Exception;

    .line 621
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$Converter;->m_song:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getID()I

    move-result v0

    invoke-static {v0}, Lorg/tf/song/SongCache;->remove(I)V

    goto :goto_0
.end method
