.class public Lcom/superdroid/rpc/forum/model/VoteEvent;
.super Lcom/superdroid/rpc/forum/model/Event;
.source "VoteEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x47be53d6dc321ff9L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/superdroid/rpc/forum/model/Event;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;)V
    .locals 9
    .parameter "id"
    .parameter "father"
    .parameter "thread"
    .parameter "eventName"

    .prologue
    .line 22
    const-string v8, "1:1"

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/superdroid/rpc/forum/model/Event;-><init>(JJJLjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/superdroid/rpc/forum/model/Event;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getFatherEventID()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getThreadID()J

    move-result-wide v5

    .line 16
    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getEventName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getGambleParam()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/superdroid/rpc/forum/model/Event;-><init>(JJJLjava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getSons()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/superdroid/rpc/forum/model/VoteEvent;->setSons(Ljava/util/List;)V

    .line 18
    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getBalance()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/superdroid/rpc/forum/model/VoteEvent;->setBalance(J)V

    .line 19
    return-void
.end method


# virtual methods
.method public addVote()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/superdroid/rpc/forum/model/VoteEvent;->addBalance(J)V

    .line 31
    return-void
.end method

.method public getVoteCnt()J
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/superdroid/rpc/forum/model/VoteEvent;->getBalance()J

    move-result-wide v0

    return-wide v0
.end method
