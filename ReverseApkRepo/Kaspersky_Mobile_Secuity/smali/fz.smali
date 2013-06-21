.class final Lfz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Vector;

.field private synthetic b:Lfy;


# direct methods
.method constructor <init>(Lfy;Ljava/util/Vector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lfz;->b:Lfy;

    iput-object p2, p0, Lfz;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lfz;->a:Ljava/util/Vector;

    .line 148
    :try_start_0
    iget-object v1, p0, Lfz;->b:Lfy;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    iget-object v2, p0, Lfz;->b:Lfy;

    invoke-static {v2}, Lfy;->a(Lfy;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    move-result-object v2

    if-nez v2, :cond_4

    .line 154
    iget-object v0, p0, Lfz;->b:Lfy;

    invoke-static {v0}, Lfy;->b(Lfy;)V

    .line 155
    iget-object v0, p0, Lfz;->b:Lfy;

    invoke-static {v0}, Lfy;->a(Lfy;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lfz;->b:Lfy;

    invoke-static {v0}, Lfy;->c(Lfy;)Ljava/util/Vector;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lfz;->b:Lfy;

    iget-object v3, p0, Lfz;->b:Lfy;

    invoke-static {v3}, Lfy;->a(Lfy;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getNextEventsIds()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v2, v3}, Lfy;->a(Lfy;Ljava/util/Vector;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 166
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 167
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 169
    :cond_0
    iget-object v0, p0, Lfz;->b:Lfy;

    invoke-static {v0}, Lfy;->d(Lfy;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :goto_1
    return-void

    .line 162
    :cond_1
    :try_start_3
    iget-object v0, p0, Lfz;->b:Lfy;

    invoke-static {v0}, Lfy;->d(Lfy;)Z

    .line 163
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 190
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    :cond_2
    iget-object v0, p0, Lfz;->b:Lfy;

    invoke-static {v0}, Lfy;->d(Lfy;)Z

    goto :goto_1

    .line 173
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 175
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    .line 187
    invoke-virtual {v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->onStartEvent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method
