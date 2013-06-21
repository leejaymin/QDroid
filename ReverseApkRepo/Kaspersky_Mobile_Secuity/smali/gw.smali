.class final Lgw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lgf;

.field private synthetic b:Lgv;


# direct methods
.method constructor <init>(Lgv;Lgf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lgw;->b:Lgv;

    iput-object p2, p0, Lgw;->a:Lgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lgw;->b:Lgv;

    invoke-static {v0}, Lgv;->a(Lgv;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 74
    iget-object v0, p0, Lgw;->b:Lgv;

    iget-object v1, p0, Lgw;->a:Lgf;

    invoke-static {v0, v1}, Lgv;->a(Lgv;Lgf;)V

    .line 75
    iget-object v0, p0, Lgw;->b:Lgv;

    invoke-static {v0}, Lgv;->a(Lgv;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 76
    return-void
.end method
