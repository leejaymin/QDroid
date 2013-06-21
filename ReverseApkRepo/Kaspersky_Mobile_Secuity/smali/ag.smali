.class final Lag;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lac;


# direct methods
.method constructor <init>(Lac;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lag;->a:Lac;

    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 383
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 390
    iget-object v0, p0, Lag;->a:Lac;

    iget-object v1, p0, Lag;->a:Lac;

    invoke-static {v1}, Lac;->a(Lac;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lac;->c()Laf;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac;->b(Lac;Landroid/content/ContentResolver;Laf;)Laf;

    .line 392
    :cond_0
    return-void
.end method
