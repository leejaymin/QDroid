.class final Lde/androidpit/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/vending/licensing/l;


# instance fields
.field final synthetic a:Lde/androidpit/a/b;


# direct methods
.method constructor <init>(Lde/androidpit/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lde/androidpit/a/e;->a:Lde/androidpit/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lde/androidpit/a/e;->a:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->g:Lde/androidpit/a/f;

    invoke-interface {v0}, Lde/androidpit/a/f;->a()V

    .line 540
    iget-object v0, p0, Lde/androidpit/a/e;->a:Lde/androidpit/a/b;

    iget-boolean v0, v0, Lde/androidpit/a/b;->i:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lde/androidpit/a/e;->a:Lde/androidpit/a/b;

    invoke-virtual {v0}, Lde/androidpit/a/b;->b()V

    .line 544
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lde/androidpit/a/e;->a:Lde/androidpit/a/b;

    invoke-virtual {v0}, Lde/androidpit/a/b;->a()V

    .line 556
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lde/androidpit/a/e;->a:Lde/androidpit/a/b;

    invoke-virtual {v0}, Lde/androidpit/a/b;->a()V

    .line 568
    return-void
.end method
