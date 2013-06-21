.class public final Laj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak;


# instance fields
.field private final a:Ljava/util/Set;


# virtual methods
.method public final a(Lal;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Laj;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method

.method public final b(Lal;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Laj;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method
