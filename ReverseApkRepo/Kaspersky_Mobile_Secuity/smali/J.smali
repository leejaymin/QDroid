.class final LJ;
.super Ljava/lang/Object;

# interfaces
.implements LN;


# instance fields
.field private synthetic a:LH;


# direct methods
.method synthetic constructor <init>(LH;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LJ;-><init>(LH;B)V

    return-void
.end method

.method private constructor <init>(LH;B)V
    .locals 0

    iput-object p1, p0, LJ;->a:LH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LJ;->a:LH;

    invoke-static {v0}, LH;->i(LH;)LI;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LJ;->a:LH;

    invoke-static {v0}, LH;->i(LH;)LI;

    move-result-object v0

    invoke-virtual {v0}, LI;->a()LB;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LJ;->a:LH;

    invoke-static {v1}, LH;->e(LH;)Lv;

    move-result-object v1

    iget-wide v2, v0, LB;->b:J

    invoke-interface {v1, v2, v3}, Lv;->a(J)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, LJ;->a:LH;

    invoke-static {v0, p1}, LH;->b(LH;I)I

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, LJ;->a:LH;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LH;->a(LH;I)I

    return-void
.end method
