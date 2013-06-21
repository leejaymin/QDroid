.class Lcom/fleapapa/helper/CallPapa$Burst;
.super Ljava/lang/Object;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallPapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Burst"
.end annotation


# instance fields
.field bytes:[B

.field call:Lcom/fleapapa/helper/CallPapa$Call;

.field etime:J

.field fbyte:I

.field heard:Z

.field mature:Z

.field nSamplesFed:I

.field nbyte:I

.field nsample:I

.field nslice:I

.field offmsg:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

.field rxReport:Ljava/lang/String;

.field selected:Z

.field seqn:I

.field stime:J

.field tEndReco:J

.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/fleapapa/helper/CallPapa;

.field type:B

.field uid:I


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Call;BI)V
    .locals 4
    .parameter
    .parameter "call"
    .parameter "type"
    .parameter "len"

    .prologue
    const/4 v3, 0x1

    .line 1486
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    iput-object p2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 1471
    iput-byte p3, p0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    .line 1472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    .line 1474
    iget-object v0, p2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1476
    if-ne p3, v3, :cond_0

    .line 1477
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    .line 1478
    iget-object v1, p2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1474
    :goto_0
    monitor-exit v0

    return-void

    .line 1481
    :cond_0
    if-lez p4, :cond_1

    move v1, p4

    :goto_1
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    .line 1482
    iget-object v1, p2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    iput-object p0, p2, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    goto :goto_0

    .line 1474
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1481
    :cond_1
    :try_start_1
    iget v1, p1, Lcom/fleapapa/helper/CallPapa;->maxTalkSecs:I

    mul-int/lit16 v1, v1, 0x1f40

    div-int/lit8 v1, v1, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallPapa$Burst;Ljava/io/DataOutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/fleapapa/helper/CallPapa$Burst;->write(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$1(Lcom/fleapapa/helper/CallPapa$Burst;Ljava/io/DataInputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/fleapapa/helper/CallPapa$Burst;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method static synthetic access$2(Lcom/fleapapa/helper/CallPapa$Burst;)Lcom/fleapapa/helper/CallPapa;
    .locals 1
    .parameter

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    return-object v0
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 1603
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    .line 1604
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    .line 1605
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    .line 1606
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->heard:Z

    .line 1607
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    .line 1608
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    .line 1609
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    .line 1610
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    .line 1611
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    .line 1612
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    .line 1613
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    .line 1614
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    if-lez v1, :cond_0

    .line 1615
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    .line 1616
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    .line 1619
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1620
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :cond_1
    :goto_0
    return-void

    .line 1622
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1623
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallPapa.Burst.read: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private write(Ljava/io/DataOutputStream;)V
    .locals 4
    .parameter "out"

    .prologue
    const-string v3, ""

    .line 1584
    :try_start_0
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1585
    iget-wide v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1586
    iget-wide v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1587
    iget-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->heard:Z

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1588
    iget-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1589
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1590
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1591
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1592
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1593
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1594
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1595
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1600
    :cond_0
    :goto_2
    return-void

    .line 1589
    :cond_1
    const-string v1, ""

    move-object v1, v3

    goto :goto_0

    .line 1590
    :cond_2
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_1

    .line 1597
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1598
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallPapa.Burst.write: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 1488
    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    .line 1489
    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    .line 1490
    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    .line 1491
    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    .line 1492
    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    .line 1493
    iput-wide v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    .line 1494
    iput-wide v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    .line 1495
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const v1, 0x7700af00

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    .line 1496
    return-void
.end method

.method collided()V
    .locals 5

    .prologue
    .line 1499
    iget v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->mp_bang:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1501
    :cond_0
    monitor-enter p0

    .line 1502
    :try_start_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Burst;->clear()V

    .line 1501
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const-wide/16 v1, 0x2d0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/fleapapa/helper/CallPapa$Call;->tpush:J

    .line 1507
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const v1, 0x7700007f

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    .line 1509
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->nopusher:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    new-instance v1, Lcom/fleapapa/helper/CallPapa$Burst$1;

    const-string v2, "Papa.no-pusher"

    invoke-direct {v1, p0, v2}, Lcom/fleapapa/helper/CallPapa$Burst$1;-><init>(Lcom/fleapapa/helper/CallPapa$Burst;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/fleapapa/helper/CallPapa;->nopusher:Ljava/lang/Thread;

    .line 1517
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1518
    :cond_1
    return-void

    .line 1501
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method duration()J
    .locals 4

    .prologue
    .line 1543
    iget-wide v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    iget-wide v2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method finish()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1520
    iget-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    if-eqz v1, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    iput-boolean v3, p0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    .line 1522
    iput-boolean v2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->heard:Z

    .line 1523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    .line 1526
    iget-byte v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v1, :cond_3

    .line 1527
    monitor-enter p0

    .line 1529
    :try_start_0
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1530
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    .line 1531
    .local v0, old:[B
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    .line 1532
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1534
    .end local v0           #old:[B
    :cond_2
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const v2, 0x7700af00

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    .line 1536
    new-instance v1, Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fleapapa/helper/CallPapa$Burst;-><init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Call;BI)V

    .line 1537
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1527
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    :cond_3
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->dos:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/fleapapa/helper/CallPapa$Burst;->write(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 1527
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method play()V
    .locals 3

    .prologue
    .line 1546
    const/4 v0, 0x0

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nSamplesFed:I

    .line 1547
    monitor-enter p0

    .line 1548
    :try_start_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    iget v2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/fleapapa/helper/CallPapa$Burst;->play([BII)V

    .line 1547
    monitor-exit p0

    .line 1550
    return-void

    .line 1547
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method play([BII)V
    .locals 7
    .parameter "slice"
    .parameter "slen"
    .parameter "nsample"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-nez v0, :cond_1

    .line 1553
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    if-nez v0, :cond_1

    .line 1554
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa;->muteBack:Z

    if-eqz v0, :cond_1

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1556
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->muted:Z

    if-nez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/fleapapa/helper/CallPapa$Clip;

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/CallPapa$Clip;-><init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Burst;[BII)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1559
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->startPlayer()V

    .line 1560
    iget-boolean v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->heard:Z

    if-nez v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->heard:Z

    iput-boolean v1, v0, Lcom/fleapapa/helper/CallPapa$Call;->dirty:Z

    goto :goto_0
.end method

.method sendAudio([BII)V
    .locals 12
    .parameter "ebytes"
    .parameter "fbyte"
    .parameter "nsample"

    .prologue
    const/4 v11, 0x1

    .line 1567
    iget-boolean v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    if-eqz v0, :cond_1

    if-lez p2, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0, v11}, Lcom/fleapapa/helper/CallPapa$Call;->uids(Z)Ljava/lang/String;

    move-result-object v8

    .line 1569
    .local v8, relayIds:Ljava/lang/String;
    iget v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->seqn:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fleapapa/helper/CallPapa$Burst;->seqn:I

    .line 1570
    .local v2, mid:I
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    sget v3, Lcom/fleapapa/util/My;->uid:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, v2

    .line 1572
    invoke-virtual/range {v0 .. v8}, Lcom/fleapapa/helper/CallPapa;->slimpacker(III[BIIILjava/lang/String;)I

    move-result v9

    .line 1573
    .local v9, mlen:I
    new-instance v10, Lcom/fleapapa/helper/CallPapa$Packet;

    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-direct {v10, v0, p1, v9, v11}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;[BII)V

    .line 1574
    .local v10, pak:Lcom/fleapapa/helper/CallPapa$Packet;
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-nez p2, :cond_2

    move v1, v11

    :goto_1
    invoke-virtual {v0, p0, v10, v1}, Lcom/fleapapa/helper/CallPapa$Call;->sendPacket(Lcom/fleapapa/helper/CallPapa$Burst;Lcom/fleapapa/helper/CallPapa$Packet;Z)V

    .line 1575
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->atime:J

    .line 1576
    if-nez p2, :cond_0

    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "CallPapa: sendAudio 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1574
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method stop()V
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->stopPlayer()V

    .line 1580
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->pqueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1581
    return-void
.end method
