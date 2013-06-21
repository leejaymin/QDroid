.class Lcom/fleapapa/helper/CallPapa$Call;
.super Ljava/lang/Object;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallPapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Call"
.end annotation


# instance fields
.field atime:J

.field atrack:Landroid/media/AudioTrack;

.field btime:J

.field bursts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fleapapa/helper/CallPapa$Burst;",
            ">;"
        }
    .end annotation
.end field

.field callback:Lcom/fleapapa/helper/CallPapa$Callback;

.field cid:I

.field clip:Lcom/fleapapa/helper/CallPapa$Clip;

.field closed:Z

.field dirty:Z

.field dos:Ljava/io/DataOutputStream;

.field elevel:I

.field etime:J

.field eue:Lcom/fleapapa/helper/CallPapa$UE;

.field foreground:Z

.field inbound:Z

.field lburst:Lcom/fleapapa/helper/CallPapa$Burst;

.field lpback:Lcom/fleapapa/helper/CallPapa$Burst;

.field muted:Z

.field nburst:I

.field ons:Landroid/util/SparseBooleanArray;

.field pburst:I

.field pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/fleapapa/helper/CallPapa$Clip;",
            ">;"
        }
    .end annotation
.end field

.field pthread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/fleapapa/helper/CallPapa;

.field title:Ljava/lang/String;

.field tpush:J

.field tstate:I

.field ues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/CallPapa$UE;",
            ">;"
        }
    .end annotation
.end field

.field urgency:Z


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;)V
    .locals 2
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->dirty:Z

    .line 958
    const-string v0, ""

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    .line 963
    const v0, 0x7700af00

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    .line 964
    const/4 v0, -0x1

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    .line 978
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 979
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    .line 981
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    .line 982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->btime:J

    .line 983
    iget-wide v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->btime:J

    iput-wide v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->atime:J

    return-void
.end method

.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;I)V
    .locals 5
    .parameter
    .parameter "cid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 986
    invoke-direct {p0, p1}, Lcom/fleapapa/helper/CallPapa$Call;-><init>(Lcom/fleapapa/helper/CallPapa;)V

    .line 987
    iput p2, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    .line 988
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    sget v1, Lcom/fleapapa/util/My;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    sget v1, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 991
    iget-boolean v0, p1, Lcom/fleapapa/helper/CallPapa;->saveCall:Z

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p0, v4, v3}, Lcom/fleapapa/helper/CallPapa$Call;->save(ZZ)V

    .line 995
    :cond_0
    new-instance v0, Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-direct {v0, p1, p0, v3, v3}, Lcom/fleapapa/helper/CallPapa$Burst;-><init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Call;BI)V

    .line 996
    iget-object v0, p1, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallPapa$Call;Ljava/io/DataInputStream;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1416
    invoke-direct {p0, p1, p2}, Lcom/fleapapa/helper/CallPapa$Call;->read(Ljava/io/DataInputStream;Z)Z

    move-result v0

    return v0
.end method

.method private read(Ljava/io/DataInputStream;Z)Z
    .locals 10
    .parameter "in"
    .parameter "readBursts"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1418
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    .line 1419
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    .line 1420
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->inbound:Z

    .line 1421
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    .line 1422
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->btime:J

    .line 1423
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    .line 1424
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1425
    .local v3, nue:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1429
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    .line 1430
    if-nez p2, :cond_2

    move v5, v9

    .line 1444
    .end local v2           #i:I
    .end local v3           #nue:I
    :goto_1
    return v5

    .line 1426
    .restart local v2       #i:I
    .restart local v3       #nue:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 1427
    .local v4, uid:I
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v7, v4}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1433
    .end local v4           #uid:I
    :cond_1
    new-instance v0, Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v5, p0, v6, v7}, Lcom/fleapapa/helper/CallPapa$Burst;-><init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Call;BI)V

    .line 1434
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    #calls: Lcom/fleapapa/helper/CallPapa$Burst;->read(Ljava/io/DataInputStream;)V
    invoke-static {v0, p1}, Lcom/fleapapa/helper/CallPapa$Burst;->access$1(Lcom/fleapapa/helper/CallPapa$Burst;Ljava/io/DataInputStream;)V

    .line 1436
    iget-boolean v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1432
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_1

    .line 1443
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    move v5, v9

    .line 1444
    goto :goto_1

    .line 1439
    .end local v2           #i:I
    .end local v3           #nue:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1440
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CallPapa.Burst.read: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 1441
    goto :goto_1
.end method


# virtual methods
.method bye()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "\n"

    .line 1058
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const v3, 0xffff

    and-int v0, v2, v3

    .line 1060
    .local v0, mid:I
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const-string v3, "BY"

    invoke-virtual {v2, v3, v0}, Lcom/fleapapa/helper/CallPapa;->req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1061
    .local v1, msg:Ljava/lang/StringBuffer;
    const-string v2, "to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/CallPapa$Call;->uids(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    const-string v2, "cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "%x"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    new-instance v2, Lcom/fleapapa/helper/CallPapa$Packet;

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v3}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v7}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    goto :goto_0
.end method

.method checkRx(Lcom/fleapapa/helper/CallPapa$Burst;)V
    .locals 6
    .parameter "burst"

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1285
    return-void

    .line 1279
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$UE;

    .line 1280
    .local v0, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget v2, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v3, Lcom/fleapapa/util/My;->uid:I

    if-eq v2, v3, :cond_0

    .line 1281
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    monitor-enter v2

    .line 1282
    :try_start_0
    new-instance v3, Lcom/fleapapa/helper/CallPapa$RxCheck;

    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v5, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-direct {v3, v4, p1, v5}, Lcom/fleapapa/helper/CallPapa$RxCheck;-><init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Burst;I)V

    .line 1283
    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1281
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method close()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string v6, "ecalls"

    .line 1006
    iget-boolean v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->closed:Z

    if-eqz v2, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iput-boolean v7, p0, Lcom/fleapapa/helper/CallPapa$Call;->closed:Z

    .line 1008
    iput-boolean v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 1009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    .line 1011
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 1012
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->pthread:Ljava/lang/Thread;

    if-nez v2, :cond_6

    .line 1014
    :cond_2
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 1015
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 1017
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_4

    .line 1018
    invoke-virtual {p0, v7, v7}, Lcom/fleapapa/helper/CallPapa$Call;->save(ZZ)V

    .line 1020
    iget v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    if-nez v2, :cond_7

    .line 1021
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallPapa;->logFile(I)Ljava/io/File;

    move-result-object v1

    .line 1022
    .local v1, logFile:Ljava/io/File;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1028
    .end local v1           #logFile:Ljava/io/File;
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->bye()V

    .line 1030
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-ne v2, p0, :cond_5

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/CallPapa;->call0(Z)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallPapa;->setaCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 1034
    :cond_5
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1036
    iget-boolean v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-eqz v2, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-le v2, v7, :cond_0

    .line 1038
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ecalls"

    aput-object v6, v2, v5

    .line 1039
    const-string v3, "ecalls"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    iget-wide v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->btime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1013
    .restart local v0       #i:I
    :cond_6
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Lcom/fleapapa/util/MyUtil;->nap(J)Z

    .line 1012
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1025
    .end local v0           #i:I
    :cond_7
    sput-boolean v7, Lcom/fleapapa/helper/CallLogs;->dirty:Z

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 1000
    :try_start_0
    iget-boolean v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->close()V

    .line 1001
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :goto_0
    return-void

    .line 1003
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method invite()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "\n"

    .line 1044
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-gt v2, v6, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const v3, 0xffff

    and-int v0, v2, v3

    .line 1047
    .local v0, mid:I
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const-string v3, "IV"

    invoke-virtual {v2, v3, v0}, Lcom/fleapapa/helper/CallPapa;->req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1048
    .local v1, msg:Ljava/lang/StringBuffer;
    const-string v2, "cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "%x"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1049
    const-string v2, "to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/CallPapa$Call;->uids(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    const-string v2, "title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    const-string v2, "nomap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v3, v3, Lcom/fleapapa/helper/CallPapa;->noMap:Z

    if-eqz v3, :cond_3

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1053
    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "emu=1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1055
    :cond_1
    new-instance v2, Lcom/fleapapa/helper/CallPapa$Packet;

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v3}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v6}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    goto/16 :goto_0

    .line 1050
    :cond_2
    const-string v3, ""

    goto :goto_1

    :cond_3
    move v3, v8

    .line 1052
    goto :goto_2
.end method

.method names(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "delm"

    .prologue
    .line 1244
    const-string v0, ""

    .line 1245
    .local v0, names:Ljava/lang/String;
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1248
    return-object v0

    .line 1245
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$UE;

    .line 1246
    .local v1, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_0

    .line 1247
    iget-object v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    invoke-static {v0, p1, v3}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method numMyBursts()I
    .locals 5

    .prologue
    .line 1338
    const/4 v1, 0x0

    .line 1339
    .local v1, n:I
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1344
    return v1

    .line 1339
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1340
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget-boolean v3, v0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    if-eqz v3, :cond_0

    .line 1341
    iget v3, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-ne v3, v4, :cond_0

    .line 1342
    iget-byte v3, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v3, :cond_0

    .line 1343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method pausePlayer()V
    .locals 2

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->player()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1221
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1222
    return-void
.end method

.method playBursts(IZ)V
    .locals 4
    .parameter "pburst"
    .parameter "all"

    .prologue
    .line 1152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1153
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/fleapapa/helper/CallPapa$Call$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/fleapapa/helper/CallPapa$Call$1;-><init>(Lcom/fleapapa/helper/CallPapa$Call;ZLandroid/os/Handler;)V

    .line 1187
    .local v1, runner:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    iput p1, p0, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Burst;->play()V

    .line 1188
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1189
    return-void
.end method

.method player()Landroid/media/AudioTrack;
    .locals 7

    .prologue
    const/16 v2, 0x1f40

    const/4 v3, 0x2

    .line 1066
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 1068
    invoke-static {v2, v3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 1069
    .local v5, minbz:I
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CallPapa.call: min player buf="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x0

    .line 1074
    const/4 v6, 0x1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 1070
    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    .line 1076
    .end local v5           #minbz:I
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method playerProgress()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1371
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    move v1, v3

    .line 1375
    :goto_0
    return v1

    .line 1372
    :cond_1
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->playerState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    .line 1373
    :cond_2
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    iget v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1374
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget v1, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    if-nez v1, :cond_3

    const/16 v1, 0x64

    goto :goto_0

    .line 1375
    :cond_3
    iget v1, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nSamplesFed:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method playerState()I
    .locals 1

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->player()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    return v0
.end method

.method recorderState()I
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa;->recorderState()I

    move-result v0

    return v0
.end method

.method save(ZZ)V
    .locals 7
    .parameter "force"
    .parameter "close"

    .prologue
    .line 1378
    if-nez p1, :cond_1

    iget-boolean v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dirty:Z

    if-nez v4, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    if-eqz p1, :cond_2

    .line 1381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    .line 1383
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 1384
    :cond_3
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/CallPapa;->logFile(I)Ljava/io/File;

    move-result-object v2

    .line 1385
    .local v2, logFile:Ljava/io/File;
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    .line 1386
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1387
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1388
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget-boolean v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->inbound:Z

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1389
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget-boolean v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1390
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget-wide v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->btime:J

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1391
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget-wide v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    invoke-virtual {v4, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1392
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1393
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1396
    const/4 v4, 0x0

    iput v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    .line 1397
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1399
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1400
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    :try_start_1
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1400
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1405
    if-eqz p2, :cond_6

    .line 1406
    :try_start_2
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 1407
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    .line 1409
    :cond_6
    iget v4, p0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    if-gtz v4, :cond_0

    .line 1410
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1412
    .end local v2           #logFile:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1413
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CallPapa.save: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1393
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #logFile:Ljava/io/File;
    :cond_7
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/CallPapa$UE;

    .line 1394
    .local v3, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    iget v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 1397
    .end local v3           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1398
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget-boolean v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1401
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :cond_9
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1402
    .restart local v0       #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget-boolean v6, v0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    if-eqz v6, :cond_5

    .line 1403
    iget-object v6, p0, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    #calls: Lcom/fleapapa/helper/CallPapa$Burst;->write(Ljava/io/DataOutputStream;)V
    invoke-static {v0, v6}, Lcom/fleapapa/helper/CallPapa$Burst;->access$0(Lcom/fleapapa/helper/CallPapa$Burst;Ljava/io/DataOutputStream;)V

    goto :goto_3

    .line 1400
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method sendPacket(Lcom/fleapapa/helper/CallPapa$Burst;Lcom/fleapapa/helper/CallPapa$Packet;Z)V
    .locals 7
    .parameter "burst"
    .parameter "pak"
    .parameter "isLast"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1351
    const/4 v0, 0x0

    .line 1353
    .local v0, toServer:Z
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1363
    if-eqz v0, :cond_1

    .line 1364
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p2, v2, v6, v5}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    .line 1365
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/fleapapa/helper/CallPapa$Burst;->tEndReco:J

    .line 1366
    return-void

    .line 1353
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$UE;

    .line 1355
    .local v1, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-eqz p3, :cond_3

    .line 1356
    iput v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->recv:I

    .line 1357
    :cond_3
    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_0

    .line 1358
    iget-object v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_4

    .line 1359
    iget-object v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v3, v6, v5}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    goto :goto_0

    .line 1360
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method sendText(Ljava/lang/String;)Lcom/fleapapa/helper/CallPapa$Burst;
    .locals 12
    .parameter "text"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "\n"

    .line 1254
    new-instance v0, Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-direct {v0, v5, p0, v10, v9}, Lcom/fleapapa/helper/CallPapa$Burst;-><init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Call;BI)V

    .line 1255
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iput-object p1, v0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    .line 1256
    sget v5, Lcom/fleapapa/util/My;->uid:I

    iput v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    .line 1257
    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->finish()V

    .line 1259
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const v6, 0xffff

    and-int v1, v5, v6

    .line 1260
    .local v1, mid:I
    invoke-virtual {p0, v10}, Lcom/fleapapa/helper/CallPapa$Call;->uids(Z)Ljava/lang/String;

    move-result-object v4

    .line 1261
    .local v4, relayIds:Ljava/lang/String;
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const-string v6, "MD"

    invoke-virtual {v5, v6, v1}, Lcom/fleapapa/helper/CallPapa;->req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1262
    .local v2, msg:Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1263
    const-string v5, "to="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1264
    :cond_0
    const-string v5, "cid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%x"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1265
    const-string v5, "t=%d,%d,%d\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    iget v8, v0, Lcom/fleapapa/helper/CallPapa$Burst;->seqn:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->seqn:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1266
    const-string v5, "\n"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1267
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1268
    new-instance v3, Lcom/fleapapa/helper/CallPapa$Packet;

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v1}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    .line 1269
    .local v3, pak:Lcom/fleapapa/helper/CallPapa$Packet;
    invoke-virtual {p0, v0, v3, v10}, Lcom/fleapapa/helper/CallPapa$Call;->sendPacket(Lcom/fleapapa/helper/CallPapa$Burst;Lcom/fleapapa/helper/CallPapa$Packet;Z)V

    .line 1270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->atime:J

    .line 1271
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v5, p0, v10}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1273
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallPapa$Call;->checkRx(Lcom/fleapapa/helper/CallPapa$Burst;)V

    .line 1275
    return-object v0
.end method

.method setCallback(Lcom/fleapapa/helper/CallPapa$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Call;->callback:Lcom/fleapapa/helper/CallPapa$Callback;

    .line 1252
    return-void
.end method

.method setTalkState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1347
    iput p1, p0, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    .line 1348
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1349
    return-void
.end method

.method startPlayer()V
    .locals 3

    .prologue
    .line 1199
    iget v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->pthread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1203
    new-instance v0, Lcom/fleapapa/helper/CallPapa$Call$2;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "player "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fleapapa/helper/CallPapa$Call$2;-><init>(Lcom/fleapapa/helper/CallPapa$Call;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->pthread:Ljava/lang/Thread;

    .line 1207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1208
    :cond_1
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->player()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 1209
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->wakeupPlayer()V

    .line 1210
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1211
    return-void
.end method

.method startRecorder()V
    .locals 2

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-ne p0, v0, :cond_0

    iget-boolean v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    if-nez v0, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    const v1, 0x7700af00

    if-ne v0, v1, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa;->quietOnPush:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->mp_push:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1312
    :cond_2
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->clear()V

    .line 1313
    const v0, 0x77ffff00

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    .line 1314
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa;->startRecorder()V

    goto :goto_0
.end method

.method stopPlayer()V
    .locals 2

    .prologue
    .line 1213
    const/4 v0, -0x1

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    .line 1214
    const/4 v0, 0x0

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->elevel:I

    .line 1215
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->player()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1216
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->wakeupPlayer()V

    .line 1217
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1218
    return-void
.end method

.method stopRecorder()Lcom/fleapapa/helper/CallPapa$Burst;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1317
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->recorderState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1335
    :goto_0
    return-object v2

    .line 1318
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallPapa;->stopRecorder()V

    .line 1319
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v2, v2, Lcom/fleapapa/helper/CallPapa;->quietOnStop:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->mp_bang:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1323
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CallPapa.stopRecorder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slices recorded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget v2, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 1325
    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->finish()V

    .line 1328
    :goto_1
    const v2, 0x7700af00

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    .line 1331
    const/16 v2, 0x400

    new-array v1, v2, [B

    .line 1332
    .local v1, ebuf:[B
    invoke-virtual {v0, v1, v5, v5}, Lcom/fleapapa/helper/CallPapa$Burst;->sendAudio([BII)V

    .line 1334
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallPapa$Call;->checkRx(Lcom/fleapapa/helper/CallPapa$Burst;)V

    move-object v2, v0

    .line 1335
    goto :goto_0

    .line 1326
    .end local v1           #ebuf:[B
    :cond_2
    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->clear()V

    goto :goto_1
.end method

.method talkable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1227
    iget-boolean v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    if-nez v0, :cond_0

    move v0, v4

    .line 1233
    :goto_0
    return v0

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-eq v0, v1, :cond_1

    move v0, v4

    .line 1230
    goto :goto_0

    .line 1231
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->tpush:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    .line 1232
    goto :goto_0

    .line 1233
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method threadPlayer()V
    .locals 13

    .prologue
    .line 1079
    const/4 v7, 0x0

    .line 1080
    .local v7, nsFed:I
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->closed:Z

    if-eqz v9, :cond_3

    .line 1138
    :cond_1
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v9}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v9

    sub-int v9, v7, v9

    int-to-long v1, v9

    .line 1139
    .local v1, dsmp:J
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CallPapa.threadPlayer: still "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " samples to play before exit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-wide/16 v9, 0x7

    add-long/2addr v9, v1

    const-wide/16 v11, 0x8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Lcom/fleapapa/util/MyUtil;->nap(J)Z

    .line 1143
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v9}, Landroid/media/AudioTrack;->getState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1144
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v9}, Landroid/media/AudioTrack;->stop()V

    .line 1145
    :cond_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->pthread:Ljava/lang/Thread;

    .line 1146
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v10, "CallPapa.threadPlayer: exit!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const/16 v10, 0x8

    invoke-virtual {v9, p0, v10}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1149
    return-void

    .line 1082
    .end local v1           #dsmp:J
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/4 v9, 0x4

    if-lt v4, v9, :cond_6

    .line 1088
    :cond_4
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->clip:Lcom/fleapapa/helper/CallPapa$Clip;

    if-eqz v9, :cond_1

    .line 1089
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->clip:Lcom/fleapapa/helper/CallPapa$Clip;

    iget-object v0, v9, Lcom/fleapapa/helper/CallPapa$Clip;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1090
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    new-array v8, v9, [B

    .line 1092
    .local v8, tbuf:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, k:I
    :goto_2
    iget-boolean v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->closed:Z

    if-nez v9, :cond_5

    iget v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    if-lez v9, :cond_5

    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->clip:Lcom/fleapapa/helper/CallPapa$Clip;

    iget v9, v9, Lcom/fleapapa/helper/CallPapa$Clip;->nbyte:I

    if-lt v4, v9, :cond_8

    .line 1114
    :cond_5
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->lpback:Lcom/fleapapa/helper/CallPapa$Burst;

    if-ne v0, v9, :cond_0

    .line 1115
    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1116
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v10, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    invoke-virtual {v9, v10}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v9

    iget-boolean v9, v9, Lcom/fleapapa/helper/CallPapa$UE;->emulator:Z

    if-nez v9, :cond_0

    .line 1117
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->lpback:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1119
    const-string v9, "i hear you :)"

    invoke-virtual {p0, v9}, Lcom/fleapapa/helper/CallPapa$Call;->sendText(Ljava/lang/String;)Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1121
    const/4 v4, 0x0

    :goto_3
    iget v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    if-lt v4, v9, :cond_a

    .line 1128
    const/16 v9, 0x400

    new-array v3, v9, [B

    .line 1129
    .local v3, ebuf:[B
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-virtual {v9}, Lcom/fleapapa/helper/CallPapa$Burst;->finish()V

    .line 1130
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/fleapapa/helper/CallPapa$Burst;->sendAudio([BII)V

    .line 1131
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Lcom/fleapapa/helper/CallPapa$Burst;->tEndReco:J

    goto/16 :goto_0

    .line 1083
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    .end local v3           #ebuf:[B
    .end local v5           #k:I
    .end local v8           #tbuf:[B
    :cond_6
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Clip;

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->clip:Lcom/fleapapa/helper/CallPapa$Clip;

    if-nez v0, :cond_4

    .line 1084
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v9

    .line 1085
    :try_start_0
    iget-object v10, p0, Lcom/fleapapa/helper/CallPapa$Call;->pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v11, 0x64

    invoke-virtual {v10, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1084
    :goto_4
    :try_start_1
    monitor-exit v9

    .line 1082
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1084
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1096
    .restart local v0       #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    .restart local v5       #k:I
    .restart local v8       #tbuf:[B
    :cond_7
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    monitor-enter v9

    .line 1097
    :try_start_2
    iget-object v10, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1096
    :goto_5
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1095
    :cond_8
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Call;->playerState()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    .line 1100
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->clip:Lcom/fleapapa/helper/CallPapa$Clip;

    iget-object v9, v9, Lcom/fleapapa/helper/CallPapa$Clip;->bytes:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/fleapapa/helper/CallPapa$Call;->clip:Lcom/fleapapa/helper/CallPapa$Clip;

    iget v11, v11, Lcom/fleapapa/helper/CallPapa$Clip;->nbyte:I

    sub-int/2addr v11, v4

    iget v12, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v4, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v10, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    iget-object v11, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v11, v11, Lcom/fleapapa/helper/CallPapa;->samples:[S

    iget-object v12, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v12, v12, Lcom/fleapapa/helper/CallPapa;->samples:[S

    array-length v12, v12

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/fleapapa/helper/CallPapa;->decode([BI[SI)I

    move-result v6

    .line 1102
    .local v6, ns:I
    and-int/lit8 v9, v5, 0x7

    if-nez v9, :cond_9

    .line 1103
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CallPapa.threadPlayer: decode "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_9
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    iget-object v10, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v10, v10, Lcom/fleapapa/helper/CallPapa;->samples:[S

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v6}, Landroid/media/AudioTrack;->write([SII)I

    .line 1105
    iget v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nSamplesFed:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nSamplesFed:I

    .line 1106
    add-int/2addr v7, v6

    .line 1108
    iget-object v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v10, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v10, v10, Lcom/fleapapa/helper/CallPapa;->samples:[S

    invoke-static {v10}, Lcom/fleapapa/helper/CallPapa;->elevel([S)I

    move-result v10

    iput v10, v9, Lcom/fleapapa/helper/CallPapa$Call;->elevel:I

    .line 1109
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    const/4 v10, 0x2

    invoke-virtual {v9, p0, v10}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1092
    iget v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    add-int/2addr v4, v9

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1096
    .end local v6           #ns:I
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 1122
    :cond_a
    iget-object v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    const/4 v10, 0x0

    iget v11, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    sub-int/2addr v11, v4

    iget v12, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v4, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1123
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v10, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    iget-object v11, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v11, v11, Lcom/fleapapa/helper/CallPapa;->samples:[S

    iget-object v12, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v12, v12, Lcom/fleapapa/helper/CallPapa;->samples:[S

    array-length v12, v12

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/fleapapa/helper/CallPapa;->decode([BI[SI)I

    move-result v6

    .line 1124
    .restart local v6       #ns:I
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CallPapa.threadPlayer: loopback "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v9, v9, Lcom/fleapapa/helper/CallPapa;->samples:[S

    array-length v9, v9

    if-ne v6, v9, :cond_b

    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v10, p0, Lcom/fleapapa/helper/CallPapa$Call;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v10, v10, Lcom/fleapapa/helper/CallPapa;->samples:[S

    invoke-virtual {v9, p0, v10}, Lcom/fleapapa/helper/CallPapa;->recorded(Lcom/fleapapa/helper/CallPapa$Call;[S)V

    .line 1121
    :cond_b
    iget v9, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    add-int/2addr v4, v9

    goto/16 :goto_3

    .line 1097
    .end local v6           #ns:I
    :catch_0
    move-exception v10

    goto/16 :goto_5

    .line 1085
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    .end local v5           #k:I
    .end local v8           #tbuf:[B
    :catch_1
    move-exception v10

    goto/16 :goto_4
.end method

.method uids(Z)Ljava/lang/String;
    .locals 5
    .parameter "relay"

    .prologue
    .line 1236
    const-string v1, ""

    .line 1237
    .local v1, uids:Ljava/lang/String;
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1241
    return-object v1

    .line 1237
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$UE;

    .line 1238
    .local v0, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-eqz p1, :cond_2

    .line 1239
    iget-object v3, v0, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_0

    iget v3, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_0

    .line 1240
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, ","

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v4, ""

    goto :goto_1
.end method

.method wakeupPlayer()V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    monitor-enter v0

    .line 1192
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call;->atrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Call;->pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    .line 1195
    :try_start_1
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call;->pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1194
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1197
    return-void

    .line 1191
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1194
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
