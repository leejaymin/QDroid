.class public Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
.super Ljava/lang/Object;
.source "TimeoutService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/util/TimeoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutToken"
.end annotation


# instance fields
.field private handler:Ljava/lang/Runnable;

.field private runTime:J


# direct methods
.method private constructor <init>(JLjava/lang/Runnable;)V
    .locals 0
    .parameter "runTime"
    .parameter "handler"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    .line 35
    iput-object p3, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Runnable;Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;-><init>(JLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$0(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)J
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter "o"

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;

    move-object v1, v0

    .line 41
    .local v1, t:Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    iget-wide v2, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    iget-wide v4, v1, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 42
    const/4 v2, 0x1

    .line 45
    :goto_0
    return v2

    .line 43
    :cond_0
    iget-wide v2, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    iget-wide v4, v1, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->runTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 44
    const/4 v2, 0x0

    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method
