.class public Lkawa/lang/Promise;
.super Ljava/lang/Object;
.source "Promise.java"

# interfaces
.implements Lgnu/text/Printable;


# instance fields
.field result:Ljava/lang/Object;

.field thunk:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 0
    .parameter "thunk"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lkawa/lang/Promise;->thunk:Lgnu/mapping/Procedure;

    .line 21
    return-void
.end method


# virtual methods
.method public force()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v1, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lkawa/lang/Promise;->thunk:Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, x:Ljava/lang/Object;
    iget-object v1, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 29
    iput-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    .line 31
    .end local v0           #x:Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    return-object v1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 36
    iget-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "#<promise - not forced yet>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "#<promise - forced to a "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 42
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0
.end method
