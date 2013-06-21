.class public Lcom/superdroid/rpc/forum/model/GambleEvent;
.super Lcom/superdroid/rpc/forum/model/Event;
.source "GambleEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x6eaf11aad9deb384L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/superdroid/rpc/forum/model/Event;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "father"
    .parameter "thread"
    .parameter "eventName"
    .parameter "gambleParam"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p8}, Lcom/superdroid/rpc/forum/model/Event;-><init>(JJJLjava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/superdroid/rpc/forum/model/Event;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getFatherEventID()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getThreadID()J

    move-result-wide v5

    .line 15
    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getEventName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getGambleParam()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/superdroid/rpc/forum/model/Event;-><init>(JJJLjava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getSons()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/superdroid/rpc/forum/model/GambleEvent;->setSons(Ljava/util/List;)V

    .line 17
    invoke-virtual {p1}, Lcom/superdroid/rpc/forum/model/Event;->getBalance()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/superdroid/rpc/forum/model/GambleEvent;->setBalance(J)V

    .line 18
    return-void
.end method


# virtual methods
.method public bet(J)V
    .locals 0
    .parameter "scores"

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/superdroid/rpc/forum/model/GambleEvent;->addBalance(J)V

    .line 31
    return-void
.end method

.method public getTotalBets()J
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/superdroid/rpc/forum/model/GambleEvent;->getBalance()J

    move-result-wide v0

    return-wide v0
.end method
