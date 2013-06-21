.class Ledu/umich/PowerTutor/util/NotificationService$NotificationForwarder;
.super Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/util/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationForwarder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/util/NotificationService$NotificationForwarder;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ledu/umich/PowerTutor/util/NotificationService$NotificationForwarder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->access$0()Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    .line 137
    :try_start_0
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->access$0()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ledu/umich/PowerTutor/PowerNotifications;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 137
    if-nez v3, :cond_0

    .line 136
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 139
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 141
    .local v2, junk:Landroid/os/Parcel;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/umich/PowerTutor/PowerNotifications;

    invoke-interface {v3}, Ledu/umich/PowerTutor/PowerNotifications;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p1, p2, v2, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 136
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ledu/umich/PowerTutor/PowerNotifications;>;"
    .end local v2           #junk:Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 142
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ledu/umich/PowerTutor/PowerNotifications;>;"
    .restart local v2       #junk:Landroid/os/Parcel;
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
