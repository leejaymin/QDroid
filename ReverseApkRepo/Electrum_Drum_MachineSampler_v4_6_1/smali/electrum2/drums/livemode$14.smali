.class Lelectrum2/drums/livemode$14;
.super Ljava/lang/Object;
.source "livemode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelectrum2/drums/livemode;->StartMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/livemode;


# direct methods
.method constructor <init>(Lelectrum2/drums/livemode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1235
    :goto_0
    iget-object v2, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-boolean v2, v2, Lelectrum2/drums/livemode;->WatchPlaying:Z

    if-nez v2, :cond_1

    .line 1282
    :cond_0
    :goto_1
    return-void

    .line 1239
    :cond_1
    sget-boolean v2, Lelectrum2/drums/globalSounds;->patternlooped:Z

    if-eqz v2, :cond_3

    .line 1241
    iget-object v2, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-object v2, v2, Lelectrum2/drums/livemode;->patternHandler:Landroid/os/Handler;

    iget-object v3, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-object v3, v3, Lelectrum2/drums/livemode;->FlashPattern:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1243
    const/4 v2, 0x0

    sput-boolean v2, Lelectrum2/drums/globalSounds;->patternlooped:Z

    .line 1245
    iget-object v2, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lelectrum2/drums/livemode;->clearloopimage:Z

    .line 1248
    iget-object v2, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-boolean v2, v2, Lelectrum2/drums/livemode;->isRecording:Z

    if-eqz v2, :cond_2

    .line 1250
    new-instance v1, Ljava/lang/Integer;

    sget v2, Lelectrum2/drums/globalSounds;->playingpattern:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1251
    .local v1, ppattern:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1253
    sget-object v2, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    iget-object v2, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-object v2, v2, Lelectrum2/drums/livemode;->patternHandler:Landroid/os/Handler;

    iget-object v3, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-object v3, v3, Lelectrum2/drums/livemode;->UpdateSequenceList:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1274
    .end local v1           #ppattern:Ljava/lang/Integer;
    :cond_2
    :goto_2
    :try_start_0
    iget-object v2, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-boolean v2, v2, Lelectrum2/drums/livemode;->WatchPlaying:Z

    if-eqz v2, :cond_0

    .line 1277
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v0

    .line 1282
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1

    .line 1265
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-object v2, v2, Lelectrum2/drums/livemode;->patternHandler:Landroid/os/Handler;

    iget-object v3, p0, Lelectrum2/drums/livemode$14;->this$0:Lelectrum2/drums/livemode;

    iget-object v3, v3, Lelectrum2/drums/livemode;->UpdatePattern:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
