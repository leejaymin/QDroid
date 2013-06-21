.class public Lorg/mozilla/javascript/Node$NodeIterator;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/mozilla/javascript/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private cursor:Lorg/mozilla/javascript/Node;

.field private prev:Lorg/mozilla/javascript/Node;

.field private prev2:Lorg/mozilla/javascript/Node;

.field private removed:Z

.field final synthetic this$0:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Node;)V
    .locals 1
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-static {}, Lorg/mozilla/javascript/Node;->access$000()Lorg/mozilla/javascript/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    .line 375
    iget-object v0, p1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    .line 376
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node$NodeIterator;->next()Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/mozilla/javascript/Node;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    .line 387
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    .line 388
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    .line 389
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    .line 390
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    invoke-static {}, Lorg/mozilla/javascript/Node;->access$000()Lorg/mozilla/javascript/Node;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    if-eqz v0, :cond_1

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() already called for current element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    iget-object v1, v1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-ne v0, v1, :cond_2

    .line 402
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iget-object v1, v1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    .line 409
    :goto_0
    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    iget-object v1, v1, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-ne v0, v1, :cond_3

    .line 404
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 405
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    goto :goto_0

    .line 407
    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    goto :goto_0
.end method
