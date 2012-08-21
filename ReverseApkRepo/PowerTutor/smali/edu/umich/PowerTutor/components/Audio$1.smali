.class Ledu/umich/PowerTutor/components/Audio$1;
.super Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;
.source "Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/components/Audio;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sysUid:I

.field final synthetic this$0:Ledu/umich/PowerTutor/components/Audio;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/components/Audio;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/components/Audio$1;->this$0:Ledu/umich/PowerTutor/components/Audio;

    .line 105
    invoke-direct {p0}, Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;-><init>()V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Ledu/umich/PowerTutor/components/Audio$1;->sysUid:I

    return-void
.end method


# virtual methods
.method public noteStartMedia(II)V
    .locals 3
    .parameter "uid"
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 115
    invoke-static {}, Ledu/umich/PowerTutor/components/Audio$MediaData;->obtain()Ledu/umich/PowerTutor/components/Audio$MediaData;

    move-result-object v0

    .line 116
    .local v0, data:Ledu/umich/PowerTutor/components/Audio$MediaData;
    iput p1, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    .line 117
    iput p2, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->id:I

    .line 118
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    iget v1, p0, Ledu/umich/PowerTutor/components/Audio$1;->sysUid:I

    if-eq v1, v2, :cond_1

    .line 119
    iget v1, p0, Ledu/umich/PowerTutor/components/Audio$1;->sysUid:I

    iput v1, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->assignUid:I

    .line 120
    iput v2, p0, Ledu/umich/PowerTutor/components/Audio$1;->sysUid:I

    .line 124
    :goto_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Audio$1;->this$0:Ledu/umich/PowerTutor/components/Audio;

    #getter for: Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Audio;->access$0(Ledu/umich/PowerTutor/components/Audio;)Ljava/util/TreeSet;

    move-result-object v2

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Audio$1;->this$0:Ledu/umich/PowerTutor/components/Audio;

    #getter for: Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Audio;->access$0(Ledu/umich/PowerTutor/components/Audio;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Ledu/umich/PowerTutor/components/Audio$MediaData;->recycle()V

    .line 124
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    return-void

    .line 122
    :cond_1
    iput p1, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->assignUid:I

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteStopMedia(II)V
    .locals 3
    .parameter "uid"
    .parameter "id"

    .prologue
    .line 133
    invoke-static {}, Ledu/umich/PowerTutor/components/Audio$MediaData;->obtain()Ledu/umich/PowerTutor/components/Audio$MediaData;

    move-result-object v0

    .line 134
    .local v0, data:Ledu/umich/PowerTutor/components/Audio$MediaData;
    iput p1, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    .line 135
    iput p2, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->id:I

    .line 136
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Audio$1;->this$0:Ledu/umich/PowerTutor/components/Audio;

    #getter for: Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Audio;->access$0(Ledu/umich/PowerTutor/components/Audio;)Ljava/util/TreeSet;

    move-result-object v2

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Audio$1;->this$0:Ledu/umich/PowerTutor/components/Audio;

    #getter for: Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Audio;->access$0(Ledu/umich/PowerTutor/components/Audio;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v0}, Ledu/umich/PowerTutor/components/Audio$MediaData;->recycle()V

    .line 140
    return-void

    .line 136
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteSystemMediaCall(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 110
    iput p1, p0, Ledu/umich/PowerTutor/components/Audio$1;->sysUid:I

    .line 111
    return-void
.end method
