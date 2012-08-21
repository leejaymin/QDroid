.class public Ledu/umich/PowerTutor/components/Audio;
.super Ledu/umich/PowerTutor/components/PowerComponent;
.source "Audio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/components/Audio$AudioData;,
        Ledu/umich/PowerTutor/components/Audio$MediaData;
    }
.end annotation


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private audioNotif:Ledu/umich/PowerTutor/PowerNotifications;

.field private uidData:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ledu/umich/PowerTutor/components/Audio$MediaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/PowerComponent;-><init>()V

    .line 103
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;

    .line 105
    new-instance v0, Ledu/umich/PowerTutor/components/Audio$1;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/components/Audio$1;-><init>(Ledu/umich/PowerTutor/components/Audio;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Audio;->audioNotif:Ledu/umich/PowerTutor/PowerNotifications;

    .line 142
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Audio;->audioNotif:Ledu/umich/PowerTutor/PowerNotifications;

    invoke-static {v0}, Ledu/umich/PowerTutor/util/NotificationService;->addHook(Ledu/umich/PowerTutor/PowerNotifications;)V

    .line 146
    :cond_0
    const-string v0, "audio"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Audio;->audioManager:Landroid/media/AudioManager;

    .line 147
    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/components/Audio;)Ljava/util/TreeSet;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;

    return-object v0
.end method


# virtual methods
.method public calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 8
    .parameter "iteration"

    .prologue
    const/4 v5, 0x1

    .line 158
    invoke-static {}, Ledu/umich/PowerTutor/service/IterationData;->obtain()Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v4

    .line 159
    .local v4, result:Ledu/umich/PowerTutor/service/IterationData;
    invoke-static {}, Ledu/umich/PowerTutor/components/Audio$AudioData;->obtain()Ledu/umich/PowerTutor/components/Audio$AudioData;

    move-result-object v2

    .line 160
    .local v2, data:Ledu/umich/PowerTutor/components/Audio$AudioData;
    iget-object v6, p0, Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    :cond_0
    iget-object v6, p0, Ledu/umich/PowerTutor/components/Audio;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x0

    .line 160
    :cond_1
    invoke-virtual {v2, v5}, Ledu/umich/PowerTutor/components/Audio$AudioData;->init(Z)V

    .line 162
    invoke-virtual {v4, v2}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 164
    iget-object v5, p0, Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;

    if-eqz v5, :cond_2

    iget-object v6, p0, Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;

    monitor-enter v6

    .line 165
    const/4 v3, -0x1

    .line 166
    .local v3, last_uid:I
    :try_start_0
    iget-object v5, p0, Ledu/umich/PowerTutor/components/Audio;->uidData:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    monitor-exit v6

    .line 176
    .end local v3           #last_uid:I
    :cond_2
    return-object v4

    .line 166
    .restart local v3       #last_uid:I
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/umich/PowerTutor/components/Audio$MediaData;

    .line 167
    .local v1, dat:Ledu/umich/PowerTutor/components/Audio$MediaData;
    iget v7, v1, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    if-eq v7, v3, :cond_4

    .line 168
    invoke-static {}, Ledu/umich/PowerTutor/components/Audio$AudioData;->obtain()Ledu/umich/PowerTutor/components/Audio$AudioData;

    move-result-object v0

    .line 169
    .local v0, audioPower:Ledu/umich/PowerTutor/components/Audio$AudioData;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ledu/umich/PowerTutor/components/Audio$AudioData;->init(Z)V

    .line 170
    iget v7, v1, Ledu/umich/PowerTutor/components/Audio$MediaData;->assignUid:I

    invoke-virtual {v4, v7, v0}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    .line 172
    .end local v0           #audioPower:Ledu/umich/PowerTutor/components/Audio$AudioData;
    :cond_4
    iget v3, v1, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    goto :goto_0

    .line 166
    .end local v1           #dat:Ledu/umich/PowerTutor/components/Audio$MediaData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "Audio"

    return-object v0
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Audio;->audioNotif:Ledu/umich/PowerTutor/PowerNotifications;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onExit()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Audio;->audioNotif:Ledu/umich/PowerTutor/PowerNotifications;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Audio;->audioNotif:Ledu/umich/PowerTutor/PowerNotifications;

    invoke-static {v0}, Ledu/umich/PowerTutor/util/NotificationService;->removeHook(Ledu/umich/PowerTutor/PowerNotifications;)V

    .line 154
    :cond_0
    return-void
.end method
