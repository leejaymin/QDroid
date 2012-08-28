.class public Lorg/connectbot/service/TerminalManager;
.super Landroid/app/Service;
.source "TerminalManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lorg/connectbot/service/BridgeDisconnectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/service/TerminalManager$BeepListener;,
        Lorg/connectbot/service/TerminalManager$IdleTask;,
        Lorg/connectbot/service/TerminalManager$KeyHolder;,
        Lorg/connectbot/service/TerminalManager$TerminalBinder;
    }
.end annotation


# instance fields
.field private final IDLE_TIMEOUT:J

.field private final binder:Landroid/os/IBinder;

.field public bridges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/service/TerminalBridge;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityManager:Lorg/connectbot/service/ConnectivityReceiver;

.field public defaultBridge:Lorg/connectbot/service/TerminalBridge;

.field public disconnectHandler:Landroid/os/Handler;

.field public disconnected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/HostBean;",
            ">;"
        }
    .end annotation
.end field

.field public hardKeyboardHidden:Z

.field public hostdb:Lorg/connectbot/util/HostDatabase;

.field private idleTimer:Ljava/util/Timer;

.field public loadedKeypairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/connectbot/service/TerminalManager$KeyHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mHostBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/connectbot/bean/HostBean;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/connectbot/service/TerminalBridge;",
            ">;>;"
        }
    .end annotation
.end field

.field public mNicknameBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/connectbot/service/TerminalBridge;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPendingReconnect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/connectbot/service/TerminalBridge;",
            ">;>;"
        }
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field protected prefs:Landroid/content/SharedPreferences;

.field private pubkeyTimer:Ljava/util/Timer;

.field public pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

.field public res:Landroid/content/res/Resources;

.field private resizeAllowed:Z

.field private savingKeys:Z

.field private vibrator:Landroid/os/Vibrator;

.field private wantBellVibration:Z

.field private volatile wantKeyVibration:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->mHostBridgeMap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->mNicknameBridgeMap:Ljava/util/Map;

    .line 78
    iput-object v1, p0, Lorg/connectbot/service/TerminalManager;->defaultBridge:Lorg/connectbot/service/TerminalBridge;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->disconnected:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lorg/connectbot/service/TerminalManager;->disconnectHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    .line 93
    new-instance v0, Lorg/connectbot/service/TerminalManager$TerminalBinder;

    invoke-direct {v0, p0}, Lorg/connectbot/service/TerminalManager$TerminalBinder;-><init>(Lorg/connectbot/service/TerminalManager;)V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->binder:Landroid/os/IBinder;

    .line 102
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lorg/connectbot/service/TerminalManager;->IDLE_TIMEOUT:J

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/connectbot/service/TerminalManager;->resizeAllowed:Z

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->mPendingReconnect:Ljava/util/List;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/service/TerminalManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lorg/connectbot/service/TerminalManager;->disconnectAll(Z)V

    return-void
.end method

.method static synthetic access$1(Lorg/connectbot/service/TerminalManager;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->reconnectPending()V

    return-void
.end method

.method private disableMediaPlayer()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 570
    :cond_0
    return-void
.end method

.method private disconnectAll(Z)V
    .locals 6
    .parameter "immediate"

    .prologue
    .line 202
    const/4 v2, 0x0

    check-cast v2, [Lorg/connectbot/service/TerminalBridge;

    .line 204
    .local v2, tmpBridges:[Lorg/connectbot/service/TerminalBridge;
    iget-object v4, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 206
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    iget-object v5, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/connectbot/service/TerminalBridge;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lorg/connectbot/service/TerminalBridge;

    move-object v2, v0

    .line 204
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v2, :cond_1

    .line 212
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_2

    .line 215
    .end local v1           #i:I
    :cond_1
    return-void

    .line 204
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 213
    .restart local v1       #i:I
    :cond_2
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private enableMediaPlayer()V
    .locals 9

    .prologue
    .line 545
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 547
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "bellVolume"

    .line 548
    const/high16 v2, 0x3e80

    .line 547
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    .line 550
    .local v8, volume:F
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 551
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/connectbot/service/TerminalManager$BeepListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/connectbot/service/TerminalManager$BeepListener;-><init>(Lorg/connectbot/service/TerminalManager$BeepListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 553
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 555
    .local v7, file:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 556
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 555
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 557
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 558
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v8, v8}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 559
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v6

    .line 561
    .local v6, e:Ljava/io/IOException;
    const-string v0, "ConnectBot.TerminalManager"

    const-string v1, "Error setting up bell media player"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private openConnection(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/service/TerminalBridge;
    .locals 5
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lorg/connectbot/service/TerminalManager;->getConnectedBridge(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 223
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection already open for that nickname"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_0
    new-instance v0, Lorg/connectbot/service/TerminalBridge;

    invoke-direct {v0, p0, p1}, Lorg/connectbot/service/TerminalBridge;-><init>(Lorg/connectbot/service/TerminalManager;Lorg/connectbot/bean/HostBean;)V

    .line 227
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    invoke-virtual {v0, p0}, Lorg/connectbot/service/TerminalBridge;->setOnDisconnectedListener(Lorg/connectbot/service/BridgeDisconnectedListener;)V

    .line 228
    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->startConnection()V

    .line 230
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    monitor-enter v3

    .line 231
    :try_start_0
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 233
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/connectbot/service/TerminalBridge;>;"
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->mHostBridgeMap:Ljava/util/Map;

    iget-object v4, v0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->mNicknameBridgeMap:Ljava/util/Map;

    iget-object v4, v0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v4}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->disconnected:Ljava/util/List;

    monitor-enter v3

    .line 238
    :try_start_1
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->disconnected:Ljava/util/List;

    iget-object v4, v0, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 237
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->isUsingNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->connectivityManager:Lorg/connectbot/service/ConnectivityReceiver;

    invoke-virtual {v2}, Lorg/connectbot/service/ConnectivityReceiver;->incRef()V

    .line 245
    :cond_1
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "connPersist"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-static {}, Lorg/connectbot/service/ConnectionNotifier;->getInstance()Lorg/connectbot/service/ConnectionNotifier;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/connectbot/service/ConnectionNotifier;->showRunningNotification(Landroid/app/Service;)V

    .line 250
    :cond_2
    invoke-direct {p0, p1}, Lorg/connectbot/service/TerminalManager;->touchHost(Lorg/connectbot/bean/HostBean;)V

    .line 252
    return-object v0

    .line 230
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/connectbot/service/TerminalBridge;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 237
    .restart local v1       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/connectbot/service/TerminalBridge;>;"
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private reconnectPending()V
    .locals 5

    .prologue
    .line 702
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->mPendingReconnect:Ljava/util/List;

    monitor-enter v3

    .line 703
    :try_start_0
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->mPendingReconnect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 710
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->mPendingReconnect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 702
    monitor-exit v3

    .line 712
    return-void

    .line 703
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 704
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/connectbot/service/TerminalBridge;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/service/TerminalBridge;

    .line 705
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->startConnection()V

    goto :goto_0

    .line 702
    .end local v0           #bridge:Lorg/connectbot/service/TerminalBridge;
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/connectbot/service/TerminalBridge;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private declared-synchronized stopIdleTimer()V
    .locals 1

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->idleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->idleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->idleTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_0
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopWithDelay()V
    .locals 4

    .prologue
    .line 444
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->idleTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/util/Timer;

    const-string v1, "idleTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/connectbot/service/TerminalManager;->idleTimer:Ljava/util/Timer;

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->idleTimer:Ljava/util/Timer;

    new-instance v1, Lorg/connectbot/service/TerminalManager$IdleTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/connectbot/service/TerminalManager$IdleTask;-><init>(Lorg/connectbot/service/TerminalManager;Lorg/connectbot/service/TerminalManager$IdleTask;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 445
    monitor-exit p0

    .line 455
    :goto_0
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 452
    :cond_1
    const-string v0, "ConnectBot.TerminalManager"

    const-string v1, "Stopping service immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalManager;->stopSelf()V

    goto :goto_0
.end method

.method private touchHost(Lorg/connectbot/bean/HostBean;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 286
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v0, p1}, Lorg/connectbot/util/HostDatabase;->touchHost(Lorg/connectbot/bean/HostBean;)V

    .line 287
    return-void
.end method

.method private updateSavingKeys()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "memkeys"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/connectbot/service/TerminalManager;->savingKeys:Z

    .line 166
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 542
    :cond_0
    return-void
.end method


# virtual methods
.method public addKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/Object;)V
    .locals 1
    .parameter "pubkey"
    .parameter "trileadKey"

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/connectbot/service/TerminalManager;->addKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/Object;Z)V

    .line 364
    return-void
.end method

.method public addKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/Object;Z)V
    .locals 8
    .parameter "pubkey"
    .parameter "trileadKey"
    .parameter "force"

    .prologue
    .line 367
    iget-boolean v3, p0, Lorg/connectbot/service/TerminalManager;->savingKeys:Z

    if-nez v3, :cond_0

    if-nez p3, :cond_0

    .line 393
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/connectbot/service/TerminalManager;->removeKey(Ljava/lang/String;)Z

    .line 372
    invoke-static {p2}, Lorg/connectbot/util/PubkeyUtils;->extractOpenSSHPublic(Ljava/lang/Object;)[B

    move-result-object v2

    .line 374
    .local v2, sshPubKey:[B
    new-instance v0, Lorg/connectbot/service/TerminalManager$KeyHolder;

    invoke-direct {v0}, Lorg/connectbot/service/TerminalManager$KeyHolder;-><init>()V

    .line 375
    .local v0, keyHolder:Lorg/connectbot/service/TerminalManager$KeyHolder;
    iput-object p1, v0, Lorg/connectbot/service/TerminalManager$KeyHolder;->bean:Lorg/connectbot/bean/PubkeyBean;

    .line 376
    iput-object p2, v0, Lorg/connectbot/service/TerminalManager$KeyHolder;->trileadKey:Ljava/lang/Object;

    .line 377
    iput-object v2, v0, Lorg/connectbot/service/TerminalManager$KeyHolder;->openSSHPubkey:[B

    .line 379
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getLifetime()I

    move-result v3

    if-lez v3, :cond_1

    .line 382
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, nickname:Ljava/lang/String;
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->pubkeyTimer:Ljava/util/Timer;

    new-instance v4, Lorg/connectbot/service/TerminalManager$1;

    invoke-direct {v4, p0, v1}, Lorg/connectbot/service/TerminalManager$1;-><init>(Lorg/connectbot/service/TerminalManager;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getLifetime()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    .line 383
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 392
    .end local v1           #nickname:Ljava/lang/String;
    :cond_1
    const-string v3, "ConnectBot.TerminalManager"

    const-string v4, "Added key \'%s\' to in-memory cache"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectedBridge(Ljava/lang/String;)Lorg/connectbot/service/TerminalBridge;
    .locals 3
    .parameter "nickname"

    .prologue
    const/4 v1, 0x0

    .line 311
    if-nez p1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-object v1

    .line 314
    :cond_1
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->mNicknameBridgeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 315
    .local v0, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/connectbot/service/TerminalBridge;>;"
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/service/TerminalBridge;

    goto :goto_0
.end method

.method public getConnectedBridge(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/service/TerminalBridge;
    .locals 2
    .parameter "host"

    .prologue
    .line 296
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->mHostBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 297
    .local v0, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/connectbot/service/TerminalBridge;>;"
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/service/TerminalBridge;

    .line 300
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmulation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "emulation"

    const-string v2, "screen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "nickname"

    .prologue
    .line 417
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/service/TerminalManager$KeyHolder;

    .line 419
    .local v0, keyHolder:Lorg/connectbot/service/TerminalManager$KeyHolder;
    iget-object v1, v0, Lorg/connectbot/service/TerminalManager$KeyHolder;->trileadKey:Ljava/lang/Object;

    .line 421
    .end local v0           #keyHolder:Lorg/connectbot/service/TerminalManager$KeyHolder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyNickname([B)Ljava/lang/String;
    .locals 3
    .parameter "publicKey"

    .prologue
    .line 433
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 433
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 434
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/connectbot/service/TerminalManager$KeyHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/service/TerminalManager$KeyHolder;

    iget-object v1, v1, Lorg/connectbot/service/TerminalManager$KeyHolder;->openSSHPubkey:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getScrollback()I
    .locals 4

    .prologue
    .line 260
    const/16 v0, 0x8c

    .line 262
    .local v0, scrollback:I
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "scrollback"

    const-string v3, "140"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isKeyLoaded(Ljava/lang/String;)Z
    .locals 1
    .parameter "nickname"

    .prologue
    .line 359
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isResizeAllowed()Z
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lorg/connectbot/service/TerminalManager;->resizeAllowed:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 478
    const-string v0, "ConnectBot.TerminalManager"

    const-string v1, "Someone bound to TerminalManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/connectbot/service/TerminalManager;->setResizeAllowed(Z)V

    .line 482
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->stopIdleTimer()V

    .line 485
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/connectbot/service/TerminalManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 487
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConnectivityLost()V
    .locals 2

    .prologue
    .line 656
    new-instance v0, Lorg/connectbot/service/TerminalManager$2;

    invoke-direct {v0, p0}, Lorg/connectbot/service/TerminalManager$2;-><init>(Lorg/connectbot/service/TerminalManager;)V

    .line 662
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "Disconnector"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 664
    return-void
.end method

.method public onConnectivityRestored()V
    .locals 2

    .prologue
    .line 670
    new-instance v0, Lorg/connectbot/service/TerminalManager$3;

    invoke-direct {v0, p0}, Lorg/connectbot/service/TerminalManager$3;-><init>(Lorg/connectbot/service/TerminalManager;)V

    .line 676
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "Reconnector"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 678
    return-void
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 121
    const-string v7, "ConnectBot.TerminalManager"

    const-string v10, "Starting service"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    .line 124
    iget-object v7, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 126
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    .line 128
    new-instance v7, Ljava/util/Timer;

    const-string v10, "pubkeyTimer"

    invoke-direct {v7, v10, v8}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v7, p0, Lorg/connectbot/service/TerminalManager;->pubkeyTimer:Ljava/util/Timer;

    .line 130
    new-instance v7, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v7, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 131
    new-instance v7, Lorg/connectbot/util/PubkeyDatabase;

    invoke-direct {v7, p0}, Lorg/connectbot/util/PubkeyDatabase;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/connectbot/service/TerminalManager;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 134
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->updateSavingKeys()V

    .line 135
    iget-object v7, p0, Lorg/connectbot/service/TerminalManager;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    invoke-virtual {v7}, Lorg/connectbot/util/PubkeyDatabase;->getAllStartPubkeys()Ljava/util/List;

    move-result-object v5

    .line 137
    .local v5, pubkeys:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/PubkeyBean;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 149
    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Lorg/connectbot/service/TerminalManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    iput-object v7, p0, Lorg/connectbot/service/TerminalManager;->vibrator:Landroid/os/Vibrator;

    .line 150
    iget-object v7, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v10, "bumpyarrows"

    invoke-interface {v7, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lorg/connectbot/service/TerminalManager;->wantKeyVibration:Z

    .line 152
    iget-object v7, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v10, "bellVibrate"

    invoke-interface {v7, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lorg/connectbot/service/TerminalManager;->wantBellVibration:Z

    .line 153
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->enableMediaPlayer()V

    .line 155
    iget-object v7, p0, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 156
    const/4 v10, 0x2

    if-ne v7, v10, :cond_1

    move v7, v8

    .line 155
    :goto_1
    iput-boolean v7, p0, Lorg/connectbot/service/TerminalManager;->hardKeyboardHidden:Z

    .line 158
    iget-object v7, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "wifilock"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 160
    .local v1, lockingWifi:Z
    new-instance v7, Lorg/connectbot/service/ConnectivityReceiver;

    invoke-direct {v7, p0, v1}, Lorg/connectbot/service/ConnectivityReceiver;-><init>(Lorg/connectbot/service/TerminalManager;Z)V

    iput-object v7, p0, Lorg/connectbot/service/TerminalManager;->connectivityManager:Lorg/connectbot/service/ConnectivityReceiver;

    .line 162
    return-void

    .line 137
    .end local v1           #lockingWifi:Z
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/connectbot/bean/PubkeyBean;

    .line 139
    .local v4, pubkey:Lorg/connectbot/bean/PubkeyBean;
    :try_start_0
    invoke-virtual {v4}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v10

    invoke-virtual {v4}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/connectbot/util/PubkeyUtils;->decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 140
    .local v2, privKey:Ljava/security/PrivateKey;
    invoke-virtual {v4}, Lorg/connectbot/bean/PubkeyBean;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 141
    .local v3, pubKey:Ljava/security/PublicKey;
    invoke-static {v2, v3}, Lorg/connectbot/util/PubkeyUtils;->convertToTrilead(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object v6

    .line 143
    .local v6, trileadKey:Ljava/lang/Object;
    invoke-virtual {p0, v4, v6}, Lorg/connectbot/service/TerminalManager;->addKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v2           #privKey:Ljava/security/PrivateKey;
    .end local v3           #pubKey:Ljava/security/PublicKey;
    .end local v6           #trileadKey:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "ConnectBot.TerminalManager"

    const-string v11, "Problem adding key \'%s\' to in-memory cache"

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #pubkey:Lorg/connectbot/bean/PubkeyBean;
    :cond_1
    move v7, v9

    .line 156
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const-string v0, "ConnectBot.TerminalManager"

    const-string v1, "Destroying service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/connectbot/service/TerminalManager;->disconnectAll(Z)V

    .line 174
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v0}, Lorg/connectbot/util/HostDatabase;->close()V

    .line 176
    iput-object v2, p0, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    invoke-virtual {v0}, Lorg/connectbot/util/PubkeyDatabase;->close()V

    .line 181
    iput-object v2, p0, Lorg/connectbot/service/TerminalManager;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    .line 184
    :cond_1
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->idleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->idleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 187
    :cond_2
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->pubkeyTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->pubkeyTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 184
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->connectivityManager:Lorg/connectbot/service/ConnectivityReceiver;

    invoke-virtual {v0}, Lorg/connectbot/service/ConnectivityReceiver;->cleanup()V

    .line 193
    invoke-static {}, Lorg/connectbot/service/ConnectionNotifier;->getInstance()Lorg/connectbot/service/ConnectionNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/connectbot/service/ConnectionNotifier;->hideRunningNotification(Landroid/app/Service;)V

    .line 195
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->disableMediaPlayer()V

    .line 196
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisconnected(Lorg/connectbot/service/TerminalBridge;)V
    .locals 4
    .parameter "bridge"

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, shouldHideRunningNotification:Z
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    monitor-enter v2

    .line 330
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 332
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->mHostBridgeMap:Ljava/util/Map;

    iget-object v3, p1, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->mNicknameBridgeMap:Ljava/util/Map;

    iget-object v3, p1, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p1}, Lorg/connectbot/service/TerminalBridge;->isUsingNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->connectivityManager:Lorg/connectbot/service/ConnectivityReceiver;

    invoke-virtual {v1}, Lorg/connectbot/service/ConnectivityReceiver;->decRef()V

    .line 339
    :cond_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 340
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->mPendingReconnect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 341
    const/4 v0, 0x1

    .line 328
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->disconnected:Ljava/util/List;

    monitor-enter v2

    .line 346
    :try_start_1
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->disconnected:Ljava/util/List;

    iget-object v3, p1, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 349
    if-eqz v0, :cond_2

    .line 350
    invoke-static {}, Lorg/connectbot/service/ConnectionNotifier;->getInstance()Lorg/connectbot/service/ConnectionNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/connectbot/service/ConnectionNotifier;->hideRunningNotification(Landroid/app/Service;)V

    .line 354
    :cond_2
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->disconnectHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 355
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->disconnectHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 356
    :cond_3
    return-void

    .line 328
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 345
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 503
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/connectbot/service/TerminalManager;->setResizeAllowed(Z)V

    .line 505
    const-string v0, "ConnectBot.TerminalManager"

    const-string v1, "Someone rebound to TerminalManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->stopIdleTimer()V

    .line 508
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    .line 605
    const-string v3, "bell"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 607
    const-string v3, "bell"

    .line 606
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 608
    .local v2, wantAudible:Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    .line 609
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->enableMediaPlayer()V

    .line 631
    .end local v2           #wantAudible:Z
    :cond_0
    :goto_0
    return-void

    .line 610
    .restart local v2       #wantAudible:Z
    :cond_1
    if-nez v2, :cond_0

    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 611
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->disableMediaPlayer()V

    goto :goto_0

    .line 612
    .end local v2           #wantAudible:Z
    :cond_2
    const-string v3, "bellVolume"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 613
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 615
    const-string v3, "bellVolume"

    .line 616
    const/high16 v4, 0x3e80

    .line 614
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 617
    .local v1, volume:F
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 619
    .end local v1           #volume:F
    :cond_3
    const-string v3, "bellVibrate"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 621
    const-string v3, "bellVibrate"

    .line 620
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/connectbot/service/TerminalManager;->wantBellVibration:Z

    goto :goto_0

    .line 622
    :cond_4
    const-string v3, "bumpyarrows"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 624
    const-string v3, "bumpyarrows"

    .line 623
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/connectbot/service/TerminalManager;->wantKeyVibration:Z

    goto :goto_0

    .line 625
    :cond_5
    const-string v3, "wifilock"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 626
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "wifilock"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 627
    .local v0, lockingWifi:Z
    iget-object v3, p0, Lorg/connectbot/service/TerminalManager;->connectivityManager:Lorg/connectbot/service/ConnectivityReceiver;

    invoke-virtual {v3, v0}, Lorg/connectbot/service/ConnectivityReceiver;->setWantWifiLock(Z)V

    goto :goto_0

    .line 628
    .end local v0           #lockingWifi:Z
    :cond_6
    const-string v3, "memkeys"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->updateSavingKeys()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 512
    const-string v0, "ConnectBot.TerminalManager"

    const-string v1, "Someone unbound from TerminalManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {p0, v2}, Lorg/connectbot/service/TerminalManager;->setResizeAllowed(Z)V

    .line 516
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->stopWithDelay()V

    .line 520
    :cond_0
    return v2
.end method

.method public openConnection(Landroid/net/Uri;)Lorg/connectbot/service/TerminalBridge;
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-static {v1, p1}, Lorg/connectbot/transport/TransportFactory;->findHost(Lorg/connectbot/util/HostDatabase;Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;

    move-result-object v0

    .line 275
    .local v0, host:Lorg/connectbot/bean/HostBean;
    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/connectbot/transport/TransportFactory;->getTransport(Ljava/lang/String;)Lorg/connectbot/transport/AbsTransport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/connectbot/transport/AbsTransport;->createHost(Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;

    move-result-object v0

    .line 278
    :cond_0
    invoke-direct {p0, v0}, Lorg/connectbot/service/TerminalManager;->openConnection(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v1

    return-object v1
.end method

.method public playBeep()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 576
    :cond_0
    iget-boolean v0, p0, Lorg/connectbot/service/TerminalManager;->wantBellVibration:Z

    if-eqz v0, :cond_1

    .line 577
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->vibrate()V

    .line 578
    :cond_1
    return-void
.end method

.method public removeKey(Ljava/lang/String;)Z
    .locals 5
    .parameter "nickname"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 396
    const-string v2, "ConnectBot.TerminalManager"

    const-string v3, "Removed key \'%s\' to in-memory cache"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public removeKey([B)Z
    .locals 6
    .parameter "publicKey"

    .prologue
    const/4 v3, 0x0

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, nickname:Ljava/lang/String;
    iget-object v2, p0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    :goto_0
    if-eqz v1, :cond_2

    .line 410
    const-string v2, "ConnectBot.TerminalManager"

    const-string v4, "Removed key \'%s\' to in-memory cache"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0, v1}, Lorg/connectbot/service/TerminalManager;->removeKey(Ljava/lang/String;)Z

    move-result v2

    .line 413
    :goto_1
    return v2

    .line 402
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 403
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/connectbot/service/TerminalManager$KeyHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/connectbot/service/TerminalManager$KeyHolder;

    iget-object v2, v2, Lorg/connectbot/service/TerminalManager$KeyHolder;->openSSHPubkey:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nickname:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 405
    .restart local v1       #nickname:Ljava/lang/String;
    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/connectbot/service/TerminalManager$KeyHolder;>;"
    :cond_2
    move v2, v3

    .line 413
    goto :goto_1
.end method

.method public requestReconnect(Lorg/connectbot/service/TerminalBridge;)V
    .locals 3
    .parameter "bridge"

    .prologue
    .line 688
    iget-object v1, p0, Lorg/connectbot/service/TerminalManager;->mPendingReconnect:Ljava/util/List;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->mPendingReconnect:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-virtual {p1}, Lorg/connectbot/service/TerminalBridge;->isUsingNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->connectivityManager:Lorg/connectbot/service/ConnectivityReceiver;

    invoke-virtual {v0}, Lorg/connectbot/service/ConnectivityReceiver;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    :cond_0
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->reconnectPending()V

    .line 688
    :cond_1
    monitor-exit v1

    .line 695
    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendActivityNotification(Lorg/connectbot/bean/HostBean;)V
    .locals 3
    .parameter "host"

    .prologue
    .line 594
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "bellNotification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 597
    :cond_0
    invoke-static {}, Lorg/connectbot/service/ConnectionNotifier;->getInstance()Lorg/connectbot/service/ConnectionNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/connectbot/service/ConnectionNotifier;->showActivityNotification(Landroid/app/Service;Lorg/connectbot/bean/HostBean;)V

    goto :goto_0
.end method

.method public setResizeAllowed(Z)V
    .locals 0
    .parameter "resizeAllowed"

    .prologue
    .line 638
    iput-boolean p1, p0, Lorg/connectbot/service/TerminalManager;->resizeAllowed:Z

    .line 639
    return-void
.end method

.method protected stopNow()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager;->bridges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalManager;->stopSelf()V

    .line 461
    :cond_0
    return-void
.end method

.method public tryKeyVibrate()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lorg/connectbot/service/TerminalManager;->wantKeyVibration:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lorg/connectbot/service/TerminalManager;->vibrate()V

    .line 537
    :cond_0
    return-void
.end method
