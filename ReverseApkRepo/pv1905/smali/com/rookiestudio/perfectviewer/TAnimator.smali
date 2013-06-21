.class public Lcom/rookiestudio/perfectviewer/TAnimator;
.super Ljava/lang/Thread;
.source "TAnimator.java"


# instance fields
.field public AnimateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/perfectviewer/TAnimateData;",
            ">;"
        }
    .end annotation
.end field

.field private aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

.field public accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field public decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public fling:Z

.field public linearInterpolator:Landroid/view/animation/LinearInterpolator;

.field public threadSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->threadSuspended:Z

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->fling:Z

    .line 15
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 16
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 17
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 11
    return-void
.end method


# virtual methods
.method public Add(Lcom/rookiestudio/perfectviewer/TAnimateData;)V
    .locals 2
    .parameter "aAnimate"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestSuspended()V

    .line 124
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public AddFadeInEffect(Lcom/rookiestudio/baseclass/TSprite;IILcom/rookiestudio/baseclass/TAnimatorCallback;)V
    .locals 4
    .parameter "S"
    .parameter "E"
    .parameter "D"
    .parameter "callback"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestAnimateExist(Lcom/rookiestudio/baseclass/TSprite;)V

    .line 108
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 109
    :try_start_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TAnimateData;

    invoke-direct {v0, p1}, Lcom/rookiestudio/perfectviewer/TAnimateData;-><init>(Lcom/rookiestudio/baseclass/TSprite;)V

    .line 110
    .local v0, NewAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;
    iput-object p4, v0, Lcom/rookiestudio/perfectviewer/TAnimateData;->callback:Lcom/rookiestudio/baseclass/TAnimatorCallback;

    .line 111
    const/4 v1, 0x0

    const/16 v3, 0xff

    invoke-virtual {v0, v1, v3, p2, p3}, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaEffect(IIII)V

    .line 112
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestSuspended()V

    .line 116
    return-void

    .line 108
    .end local v0           #NewAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public AddFadeOutEffect(Lcom/rookiestudio/baseclass/TSprite;IILcom/rookiestudio/baseclass/TAnimatorCallback;)V
    .locals 4
    .parameter "S"
    .parameter "E"
    .parameter "D"
    .parameter "callback"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestAnimateExist(Lcom/rookiestudio/baseclass/TSprite;)V

    .line 129
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 130
    :try_start_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TAnimateData;

    invoke-direct {v0, p1}, Lcom/rookiestudio/perfectviewer/TAnimateData;-><init>(Lcom/rookiestudio/baseclass/TSprite;)V

    .line 131
    .local v0, NewAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;
    iput-object p4, v0, Lcom/rookiestudio/perfectviewer/TAnimateData;->callback:Lcom/rookiestudio/baseclass/TAnimatorCallback;

    .line 132
    const/16 v1, 0xff

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2, p3}, Lcom/rookiestudio/perfectviewer/TAnimateData;->AlphaEffect(IIII)V

    .line 133
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestSuspended()V

    .line 137
    return-void

    .line 129
    .end local v0           #NewAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public AddMoveEffect(Lcom/rookiestudio/baseclass/TSprite;IIIILcom/rookiestudio/baseclass/TAnimatorCallback;)V
    .locals 8
    .parameter "S"
    .parameter "x2"
    .parameter "y2"
    .parameter "E"
    .parameter "D"
    .parameter "callback"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestAnimateExist(Lcom/rookiestudio/baseclass/TSprite;)V

    .line 95
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 96
    :try_start_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TAnimateData;

    invoke-direct {v0, p1}, Lcom/rookiestudio/perfectviewer/TAnimateData;-><init>(Lcom/rookiestudio/baseclass/TSprite;)V

    .line 97
    .local v0, NewAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;
    iput-object p6, v0, Lcom/rookiestudio/perfectviewer/TAnimateData;->callback:Lcom/rookiestudio/baseclass/TAnimatorCallback;

    .line 98
    iget v1, p1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iget v3, p1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/rookiestudio/perfectviewer/TAnimateData;->MoveTo(IIIIII)V

    .line 99
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestSuspended()V

    .line 103
    return-void

    .line 95
    .end local v0           #NewAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public TestAnimateExist(Lcom/rookiestudio/baseclass/TSprite;)V
    .locals 4
    .parameter "S"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 68
    monitor-exit v2

    .line 80
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/perfectviewer/TAnimateData;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

    .line 72
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TAnimateData;->Sprite:Lcom/rookiestudio/baseclass/TSprite;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TAnimateData;->Stop()V

    .line 74
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public TestSuspended()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->threadSuspended:Z

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->threadSuspended:Z

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 84
    :cond_0
    monitor-exit p0

    .line 90
    return-void

    .line 84
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
    .line 24
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->threadSuspended:Z

    if-nez v1, :cond_1

    .line 24
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_2
    :try_start_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->MainScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->fling:Z

    .line 35
    iget-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->fling:Z

    if-eqz v1, :cond_2

    .line 36
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v2, v2, Lcom/rookiestudio/perfectviewer/TViewer;->MainScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 37
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v2, v2, Lcom/rookiestudio/perfectviewer/TViewer;->MainScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 43
    :goto_3
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v2, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->fling:Z

    iput-boolean v2, v1, Lcom/rookiestudio/perfectviewer/TViewer;->Fling:Z

    .line 44
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    :try_start_3
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->fling:Z

    if-nez v1, :cond_0

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->threadSuspended:Z

    .line 44
    :cond_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 58
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 59
    .end local v0           #i:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 28
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 31
    :catch_1
    move-exception v1

    goto :goto_2

    .line 39
    :cond_2
    :try_start_7
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->Fling:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 46
    .restart local v0       #i:I
    :cond_3
    :try_start_8
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/perfectviewer/TAnimateData;

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

    .line 47
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TAnimateData;->DoAction()V

    .line 48
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

    iget-boolean v1, v1, Lcom/rookiestudio/perfectviewer/TAnimateData;->AnimateEnd:Z

    if-eqz v1, :cond_4

    .line 49
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->AnimateList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TAnimator;->aAnimate:Lcom/rookiestudio/perfectviewer/TAnimateData;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 44
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
.end method
