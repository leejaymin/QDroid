.class final Lccc71/pmw/lib/em;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lccc71/pmw/lib/el;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/el;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    .line 606
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    invoke-static {v0}, Lccc71/pmw/lib/el;->a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->h()I

    move-result v0

    iget-object v1, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    invoke-static {v1}, Lccc71/pmw/lib/el;->a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/pmw/a/ah;->e(I)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/em;->a:I

    iget-object v0, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    invoke-static {v0}, Lccc71/pmw/lib/el;->a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ah;

    iget v0, p0, Lccc71/pmw/lib/em;->a:I

    invoke-static {v0}, Lccc71/pmw/a/ah;->b(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    invoke-static {v0}, Lccc71/pmw/lib/el;->a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    invoke-static {v0}, Lccc71/pmw/lib/el;->a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;

    move-result-object v0

    iget v0, v0, Lccc71/pmw/a/ac;->c:I

    iget v1, p0, Lccc71/pmw/lib/em;->a:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    invoke-static {v0}, Lccc71/pmw/lib/el;->a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->c(Lccc71/pmw/lib/pmw_cpu;)Lccc71/pmw/a/ac;

    move-result-object v0

    iget v1, p0, Lccc71/pmw/lib/em;->a:I

    iput v1, v0, Lccc71/pmw/a/ac;->c:I

    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    invoke-static {v0}, Lccc71/pmw/lib/el;->a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->b(Lccc71/pmw/lib/pmw_cpu;)V

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/em;->b:Lccc71/pmw/lib/el;

    invoke-static {v0}, Lccc71/pmw/lib/el;->a(Lccc71/pmw/lib/el;)Lccc71/pmw/lib/pmw_cpu;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->aO:I

    sget v2, Lccc71/pmw/lib/d;->iS:I

    iget v3, p0, Lccc71/pmw/lib/em;->a:I

    invoke-static {v0, v1, v2, v3}, Lccc71/pmw/lib/pmw_cpu;->a(Lccc71/pmw/lib/pmw_cpu;III)V

    :cond_1
    return-void
.end method
