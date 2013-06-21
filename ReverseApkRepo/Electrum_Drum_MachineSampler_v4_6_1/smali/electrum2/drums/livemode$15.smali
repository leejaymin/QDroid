.class Lelectrum2/drums/livemode$15;
.super Ljava/lang/Object;
.source "livemode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelectrum2/drums/livemode;->StartSequenceMonitor()V
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
    iput-object p1, p0, Lelectrum2/drums/livemode$15;->this$0:Lelectrum2/drums/livemode;

    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1312
    :goto_0
    iget-object v1, p0, Lelectrum2/drums/livemode$15;->this$0:Lelectrum2/drums/livemode;

    iget-boolean v1, v1, Lelectrum2/drums/livemode;->WatchPlaying:Z

    if-nez v1, :cond_1

    .line 1338
    :cond_0
    :goto_1
    return-void

    .line 1316
    :cond_1
    sget-boolean v1, Lelectrum2/drums/globalSounds;->patternlooped:Z

    if-eqz v1, :cond_2

    .line 1318
    iget-object v1, p0, Lelectrum2/drums/livemode$15;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->patternHandler:Landroid/os/Handler;

    iget-object v2, p0, Lelectrum2/drums/livemode$15;->this$0:Lelectrum2/drums/livemode;

    iget-object v2, v2, Lelectrum2/drums/livemode;->ShowCurrentSequencePattern:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1320
    const/4 v1, 0x0

    sput-boolean v1, Lelectrum2/drums/globalSounds;->patternlooped:Z

    .line 1330
    :cond_2
    :try_start_0
    iget-object v1, p0, Lelectrum2/drums/livemode$15;->this$0:Lelectrum2/drums/livemode;

    iget-boolean v1, v1, Lelectrum2/drums/livemode;->WatchPlaying:Z

    if-eqz v1, :cond_0

    .line 1333
    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1336
    :catch_0
    move-exception v0

    .line 1338
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1
.end method
