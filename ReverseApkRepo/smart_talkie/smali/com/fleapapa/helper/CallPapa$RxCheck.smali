.class Lcom/fleapapa/helper/CallPapa$RxCheck;
.super Ljava/lang/Object;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallPapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RxCheck"
.end annotation


# instance fields
.field burst:Lcom/fleapapa/helper/CallPapa$Burst;

.field stime:J

.field final synthetic this$0:Lcom/fleapapa/helper/CallPapa;

.field uid:I


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Burst;I)V
    .locals 3
    .parameter
    .parameter "burst"
    .parameter "uid"

    .prologue
    .line 2522
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 2516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2517
    iput-object p2, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 2518
    iput p3, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->uid:I

    .line 2519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->stime:J

    .line 2521
    iget-object v0, p1, Lcom/fleapapa/helper/CallPapa;->rxChecks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method notifyOffMsg()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-string v9, "\n"

    .line 2524
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-byte v4, v4, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-ne v4, v10, :cond_0

    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v0, v4

    .line 2525
    .local v0, len:I
    :goto_0
    if-nez v0, :cond_1

    .line 2541
    :goto_1
    return-void

    .line 2524
    .end local v0           #len:I
    :cond_0
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v4, v4, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move v0, v4

    goto :goto_0

    .line 2526
    .restart local v0       #len:I
    :cond_1
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    const v5, 0xffff

    and-int v1, v4, v5

    .line 2527
    .local v1, mid:I
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->this$0:Lcom/fleapapa/helper/CallPapa;

    const-string v5, "MX"

    invoke-virtual {v4, v5, v1}, Lcom/fleapapa/helper/CallPapa;->req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 2528
    .local v2, msg:Ljava/lang/StringBuffer;
    const-string v4, "to="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2529
    const-string v4, "cid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "%x"

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v8, v8, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v8, v8, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2530
    const-string v4, "bix="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2531
    const-string v4, "type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-byte v5, v5, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2532
    const-string v4, "len="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2533
    const-string v4, "\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2536
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-byte v4, v4, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-ne v4, v10, :cond_2

    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2537
    :cond_2
    new-instance v3, Lcom/fleapapa/helper/CallPapa$Packet;

    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    .line 2538
    .local v3, pak:Lcom/fleapapa/helper/CallPapa$Packet;
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v4}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v10}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    .line 2540
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa;->rxChecks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v6, v6, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v6, v6, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/fleapapa/helper/CallPapa$RxCheck;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method
