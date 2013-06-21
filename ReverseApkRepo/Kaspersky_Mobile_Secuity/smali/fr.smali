.class final Lfr;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 114
    iput-object p1, p0, Lfr;->a:Landroid/content/Context;

    .line 115
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lfr;->a:Landroid/content/Context;

    invoke-static {v0}, Lfp;->b(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lfp;->o()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 121
    return-void
.end method
