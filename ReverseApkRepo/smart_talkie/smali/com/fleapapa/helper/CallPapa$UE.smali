.class public Lcom/fleapapa/helper/CallPapa$UE;
.super Ljava/lang/Object;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallPapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UE"
.end annotation


# instance fields
.field atime:J

.field avatar:I

.field bcnt:I

.field city:Ljava/lang/String;

.field dist:I

.field emulator:Z

.field lati:I

.field loni:I

.field lsa:Ljava/net/InetSocketAddress;

.field name:Ljava/lang/String;

.field nomap:Z

.field online:Z

.field psa:Ljava/net/InetSocketAddress;

.field ptime:J

.field recv:I

.field rsa:Ljava/net/InetSocketAddress;

.field selected:Z

.field final synthetic this$0:Lcom/fleapapa/helper/CallPapa;

.field uid:I

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;)V
    .locals 0
    .parameter

    .prologue
    .line 2497
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$UE;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 2496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;I)V
    .locals 2
    .parameter
    .parameter "uid"

    .prologue
    .line 2501
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$UE;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 2498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2499
    iput p2, p0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    .line 2500
    iget-object v0, p1, Lcom/fleapapa/helper/CallPapa;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public block()V
    .locals 6

    .prologue
    .line 2503
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$UE;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const v3, 0xffff

    and-int v0, v2, v3

    .line 2504
    .local v0, mid:I
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$UE;->this$0:Lcom/fleapapa/helper/CallPapa;

    const-string v3, "BK"

    invoke-virtual {v2, v3, v0}, Lcom/fleapapa/helper/CallPapa;->req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 2505
    .local v1, msg:Ljava/lang/StringBuffer;
    const-string v2, "uas="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2506
    new-instance v2, Lcom/fleapapa/helper/CallPapa$Packet;

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$UE;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$UE;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v3}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    .line 2507
    return-void
.end method
