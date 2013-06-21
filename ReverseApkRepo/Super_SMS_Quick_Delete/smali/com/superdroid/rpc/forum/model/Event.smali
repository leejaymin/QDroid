.class public Lcom/superdroid/rpc/forum/model/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ROOT_EVENT_FATHER_ID:J = -0x1L

.field private static final serialVersionUID:J = -0x29faf5e6e179cb9bL


# instance fields
.field protected _balance:J

.field protected _eventName:Ljava/lang/String;

.field protected _fatherEventID:J

.field protected _gambleParam:Ljava/lang/String;

.field protected _id:J

.field protected _sons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected _threadID:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_fatherEventID:J

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_balance:J

    .line 102
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "father"
    .parameter "thread"
    .parameter "eventName"
    .parameter "gambleParam"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_fatherEventID:J

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_balance:J

    .line 105
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Event;->_id:J

    .line 106
    iput-wide p3, p0, Lcom/superdroid/rpc/forum/model/Event;->_fatherEventID:J

    .line 107
    iput-wide p5, p0, Lcom/superdroid/rpc/forum/model/Event;->_threadID:J

    .line 108
    iput-object p7, p0, Lcom/superdroid/rpc/forum/model/Event;->_eventName:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Lcom/superdroid/rpc/forum/model/Event;->_gambleParam:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public addBalance(J)V
    .locals 2
    .parameter "gap"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_balance:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_balance:J

    .line 46
    return-void
.end method

.method public addSon(Lcom/superdroid/rpc/forum/model/Event;)V
    .locals 1
    .parameter "son"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_sons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getBalance()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_balance:J

    return-wide v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getFatherEventID()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_fatherEventID:J

    return-wide v0
.end method

.method public getGambleParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_gambleParam:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_id:J

    return-wide v0
.end method

.method public getSons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_sons:Ljava/util/List;

    return-object v0
.end method

.method public getThreadID()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Event;->_threadID:J

    return-wide v0
.end method

.method public setBalance(J)V
    .locals 0
    .parameter "balance"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Event;->_balance:J

    .line 42
    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0
    .parameter "eventName"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Event;->_eventName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setFatherEventID(J)V
    .locals 0
    .parameter "fatherEventID"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Event;->_fatherEventID:J

    .line 74
    return-void
.end method

.method public setGambleParam(Ljava/lang/String;)V
    .locals 0
    .parameter "gambleParam"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Event;->_gambleParam:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Event;->_id:J

    .line 66
    return-void
.end method

.method public setSons(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, sons:Ljava/util/List;,"Ljava/util/List<Lcom/superdroid/rpc/forum/model/Event;>;"
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Event;->_sons:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setThreadID(J)V
    .locals 0
    .parameter "threadID"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Event;->_threadID:J

    .line 82
    return-void
.end method
