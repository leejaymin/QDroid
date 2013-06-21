.class public Lcom/rookiestudio/perfectviewer/TSlideshow;
.super Ljava/lang/Thread;
.source "TSlideshow.java"


# instance fields
.field private OldPageTransition:I

.field private OldPageTransitionSpeed:I

.field private RandomGenerator:Ljava/util/Random;

.field private currentTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->OldPageTransitionSpeed:I

    .line 8
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->OldPageTransition:I

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->currentTime:J

    .line 5
    return-void
.end method


# virtual methods
.method public StartPlay()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->RandomGenerator:Ljava/util/Random;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->currentTime:J

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    .line 76
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->OldPageTransitionSpeed:I

    .line 77
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->OldPageTransition:I

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 73
    :cond_0
    monitor-exit p0

    .line 81
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public StopPlay()V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    if-eqz v0, :cond_0

    .line 87
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->OldPageTransitionSpeed:I

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    .line 88
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->OldPageTransition:I

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    .line 85
    :cond_0
    monitor-exit p0

    .line 92
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 15
    :cond_0
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_1
    :try_start_1
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    if-eqz v0, :cond_1

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v0, v0, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    if-eqz v0, :cond_2

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->currentTime:J

    goto :goto_0

    .line 18
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 21
    :catch_0
    move-exception v0

    goto :goto_2

    .line 30
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->currentTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->SlideshowSpeed:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->currentTime:J

    .line 32
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 33
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->RandomGenerator:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 37
    :goto_3
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransitionSpeed:I

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    .line 38
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->SlideshowRandom:Z

    if-eqz v0, :cond_4

    .line 39
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TSlideshow;->RandomGenerator:Ljava/util/Random;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    goto :goto_0

    .line 35
    :cond_3
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransition:I

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    goto :goto_3

    .line 44
    :cond_4
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetCount()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 48
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->SlideshowLoop:Z

    if-eqz v0, :cond_5

    .line 49
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TNavigater;->First()Z

    goto/16 :goto_0

    .line 51
    :cond_5
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v1, 0x7f0a00c1

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    .line 52
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TSlideshow;->StopPlay()V

    goto/16 :goto_0

    .line 55
    :cond_6
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->SlideshowMove:I

    if-nez v0, :cond_7

    .line 56
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    goto/16 :goto_0

    .line 58
    :cond_7
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TNavigater;->ScrollNext()Z

    goto/16 :goto_0
.end method
