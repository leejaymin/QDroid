.class public Lorg/tf/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private m_converter:Lorg/tf/player/Vorbis2RawConverter;

.field private m_handler:Landroid/os/Handler;

.field private m_player:Lorg/tf/stage/SongPlayer;

.field private m_playerPosition:I

.field private m_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    new-instance v0, Lorg/tf/stage/SongPlayer;

    invoke-direct {v0}, Lorg/tf/stage/SongPlayer;-><init>()V

    iput-object v0, p0, Lorg/tf/TestActivity;->m_player:Lorg/tf/stage/SongPlayer;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/tf/TestActivity;->m_handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lorg/tf/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/tf/TestActivity;->checkConverter()V

    return-void
.end method

.method private checkConverter()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lorg/tf/TestActivity;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v0}, Lorg/tf/player/Vorbis2RawConverter;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/tf/TestActivity;->m_text:Landroid/widget/TextView;

    const-string v1, "Finished!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/tf/TestActivity;->m_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In progress, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/tf/TestActivity;->m_converter:Lorg/tf/player/Vorbis2RawConverter;

    invoke-virtual {v2}, Lorg/tf/player/Vorbis2RawConverter;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lorg/tf/TestActivity;->m_handler:Landroid/os/Handler;

    .line 70
    new-instance v1, Lorg/tf/TestActivity$1;

    invoke-direct {v1, p0}, Lorg/tf/TestActivity$1;-><init>(Lorg/tf/TestActivity;)V

    .line 75
    const-wide/16 v2, 0x64

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 91
    :sswitch_0
    :try_start_0
    new-instance v1, Lorg/tf/song/SongInfo;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/defy"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/tf/song/SongInfo;-><init>(Ljava/io/File;)V

    .line 92
    .local v1, song:Lorg/tf/song/SongInfo;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/defy/song.raw"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/tf/song/SongInfo;->setSongFile(Ljava/io/File;)V

    .line 93
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/defy/guitar.rawzz"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/tf/song/SongInfo;->setGuitarFile(Ljava/io/File;)V

    .line 94
    iget-object v2, p0, Lorg/tf/TestActivity;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v2, v1}, Lorg/tf/stage/SongPlayer;->open(Lorg/tf/song/SongConfig;)V

    .line 97
    const/4 v2, 0x0

    iput v2, p0, Lorg/tf/TestActivity;->m_playerPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1           #song:Lorg/tf/song/SongInfo;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    iget-object v2, p0, Lorg/tf/TestActivity;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v2}, Lorg/tf/stage/SongPlayer;->close()V

    goto :goto_0

    .line 109
    :sswitch_2
    const/16 v2, 0x5a99

    :try_start_1
    iput v2, p0, Lorg/tf/TestActivity;->m_playerPosition:I

    .line 110
    iget-object v2, p0, Lorg/tf/TestActivity;->m_player:Lorg/tf/stage/SongPlayer;

    iget v3, p0, Lorg/tf/TestActivity;->m_playerPosition:I

    invoke-virtual {v2, v3}, Lorg/tf/stage/SongPlayer;->setPosition(I)V

    .line 111
    iget-object v2, p0, Lorg/tf/TestActivity;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v2}, Lorg/tf/stage/SongPlayer;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 114
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_3
    iget-object v2, p0, Lorg/tf/TestActivity;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v2}, Lorg/tf/stage/SongPlayer;->getPosition()I

    move-result v2

    iput v2, p0, Lorg/tf/TestActivity;->m_playerPosition:I

    .line 120
    const-string v2, "TOF"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Player position: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/tf/TestActivity;->m_playerPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lorg/tf/TestActivity;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v2}, Lorg/tf/stage/SongPlayer;->stop()V

    goto :goto_0

    .line 124
    :sswitch_4
    iput v3, p0, Lorg/tf/TestActivity;->m_playerPosition:I

    .line 125
    iget-object v2, p0, Lorg/tf/TestActivity;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v2, v3}, Lorg/tf/stage/SongPlayer;->setPosition(I)V

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c000f -> :sswitch_1
        0x7f0c0024 -> :sswitch_2
        0x7f0c0052 -> :sswitch_0
        0x7f0c0053 -> :sswitch_3
        0x7f0c0054 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lorg/tf/TestActivity;->setContentView(I)V

    .line 30
    invoke-static {p0}, Lorg/tf/Config;->load(Landroid/content/Context;)V

    .line 32
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lorg/tf/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lorg/tf/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lorg/tf/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lorg/tf/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lorg/tf/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lorg/tf/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/tf/TestActivity;->m_text:Landroid/widget/TextView;

    .line 62
    return-void
.end method
