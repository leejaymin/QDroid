.class public Lgnu/kawa/util/WeakHashNode;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field public next:Lgnu/kawa/util/WeakHashNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILgnu/kawa/util/WeakHashNode;)V
    .locals 0
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;I",
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    .local p2, q:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p4, next:Lgnu/kawa/util/WeakHashNode;,"Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 22
    iput p3, p0, Lgnu/kawa/util/WeakHashNode;->hash:I

    .line 23
    iput-object p4, p0, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    .line 24
    return-void
.end method
