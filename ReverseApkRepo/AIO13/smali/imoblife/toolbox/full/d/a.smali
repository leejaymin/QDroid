.class public Limoblife/toolbox/full/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Limoblife/toolbox/full/d/c;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Limoblife/toolbox/full/d/a;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected final a(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    new-instance v0, Limoblife/toolbox/full/d/b;

    invoke-direct {v0, p1, p2, p3}, Limoblife/toolbox/full/d/b;-><init>(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/app/ActivityManager$RunningAppProcessInfo;JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Limoblife/toolbox/full/d/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    new-instance v1, Limoblife/toolbox/full/d/b;

    invoke-direct {v1, p1, p2, p3, p4}, Limoblife/toolbox/full/d/b;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Limoblife/toolbox/full/d/c;->a(Limoblife/toolbox/full/d/b;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/content/Context;JJ)V
    .locals 6

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Limoblife/toolbox/full/d/c;->a(Landroid/content/Context;JJ)V

    :cond_0
    return-void
.end method

.method public final a(Limoblife/toolbox/full/d/c;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    new-instance v1, Limoblife/toolbox/full/d/b;

    const-wide/16 v2, 0x28

    invoke-direct {v1, v2, v3, p1}, Limoblife/toolbox/full/d/b;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Limoblife/toolbox/full/d/c;->a(Limoblife/toolbox/full/d/b;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    iput-boolean p1, p0, Limoblife/toolbox/full/d/a;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRun(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Limoblife/toolbox/full/d/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lutil/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/d/a;->b:Z

    return v0
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/d/a;->a:Limoblife/toolbox/full/d/c;

    :cond_0
    return-void
.end method
