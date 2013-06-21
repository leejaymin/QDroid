.class final LgQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LgM;

.field public b:Z

.field public c:I

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LgN;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, LgQ;->a:LgM;

    .line 48
    iput v1, p0, LgQ;->c:I

    .line 49
    iput-boolean v1, p0, LgQ;->b:Z

    .line 50
    return-void
.end method
