.class public Lcom/sphericbox/syb/b/d;
.super Lcom/sphericbox/syb/ui/b;
.source "SourceFile"


# instance fields
.field private S:Lcom/sphericbox/syb/ui/ActionActivity;

.field private T:Lcom/sphericbox/syb/h;

.field private U:Lcom/sphericbox/syb/b/e;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/ui/ActionActivity;Lcom/sphericbox/syb/h;Lcom/sphericbox/syb/b/e;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    const v0, 0x7f08000f

    const v1, 0x7f02000f

    invoke-direct {p0, v0, v1}, Lcom/sphericbox/syb/ui/b;-><init>(II)V

    .line 21
    iput-object p1, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 22
    iput-object p2, p0, Lcom/sphericbox/syb/b/d;->T:Lcom/sphericbox/syb/h;

    .line 23
    iput-object p3, p0, Lcom/sphericbox/syb/b/d;->U:Lcom/sphericbox/syb/b/e;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/sphericbox/syb/b/d;)Lcom/sphericbox/syb/ui/ActionActivity;
    .locals 1
    .parameter

    .prologue
    .line 8
    iget-object v0, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    return-object v0
.end method


# virtual methods
.method protected b(Lcom/sphericbox/syb/b;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sphericbox/syb/b/d;->T:Lcom/sphericbox/syb/h;

    invoke-virtual {v0, p1}, Lcom/sphericbox/syb/h;->b(Lcom/sphericbox/syb/b;)V

    .line 62
    return-void
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/b/d;->U:Lcom/sphericbox/syb/b/e;

    invoke-interface {v0}, Lcom/sphericbox/syb/b/e;->z()Lcom/sphericbox/syb/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V

    move v0, v3

    .line 43
    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 29
    iget-object v0, p0, Lcom/sphericbox/syb/b/d;->T:Lcom/sphericbox/syb/h;

    invoke-virtual {v0}, Lcom/sphericbox/syb/h;->release()V

    .line 30
    iput-object v1, p0, Lcom/sphericbox/syb/b/d;->T:Lcom/sphericbox/syb/h;

    .line 31
    iput-object v1, p0, Lcom/sphericbox/syb/b/d;->U:Lcom/sphericbox/syb/b/e;

    .line 32
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/b/d;->U:Lcom/sphericbox/syb/b/e;

    invoke-interface {v0}, Lcom/sphericbox/syb/b/e;->z()Lcom/sphericbox/syb/b;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/sphericbox/syb/b/a;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/b/a;-><init>(Lcom/sphericbox/syb/b/d;)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/b/a;->a(Lcom/sphericbox/syb/b;)V

    .line 52
    iget-object v0, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/sphericbox/syb/b/d;->S:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/ui/ActionActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
