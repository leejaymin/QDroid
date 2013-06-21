.class final LgO;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:I

.field private synthetic b:LgN;


# direct methods
.method public constructor <init>(LgN;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, LgO;->b:LgN;

    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 127
    iput p2, p0, LgO;->a:I

    .line 129
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, LgO;->b:LgN;

    invoke-static {v0}, LgN;->a(LgN;)[LgQ;

    move-result-object v0

    iget v1, p0, LgO;->a:I

    aget-object v0, v0, v1

    iget-object v0, v0, LgQ;->a:LgM;

    invoke-interface {v0}, LgM;->b()I

    .line 138
    iget-object v0, p0, LgO;->b:LgN;

    invoke-static {v0}, LgN;->a(LgN;)[LgQ;

    move-result-object v0

    iget v1, p0, LgO;->a:I

    aget-object v0, v0, v1

    iget v0, v0, LgQ;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, LgO;->b:LgN;

    invoke-static {v0}, LgN;->a(LgN;)[LgQ;

    move-result-object v0

    iget v1, p0, LgO;->a:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, LgQ;->a:LgM;

    .line 142
    :cond_0
    iget-object v0, p0, LgO;->b:LgN;

    invoke-static {v0}, LgN;->a(LgN;)[LgQ;

    move-result-object v0

    iget v1, p0, LgO;->a:I

    aget-object v0, v0, v1

    iput v2, v0, LgQ;->c:I

    .line 143
    iget-object v0, p0, LgO;->b:LgN;

    invoke-static {v0}, LgN;->a(LgN;)[LgQ;

    move-result-object v0

    iget v1, p0, LgO;->a:I

    aget-object v0, v0, v1

    iput-boolean v2, v0, LgQ;->b:Z

    .line 145
    return-void
.end method
