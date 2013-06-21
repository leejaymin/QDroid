.class public abstract Lb/a/a/a/a/a/b;
.super Lb/a/a/a/a/a/n;

# interfaces
.implements Lb/a/a/a/a/a;


# instance fields
.field private final b:Lb/a/a/a/a/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/a/a/a/a/n;-><init>(Ljava/lang/String;)V

    new-instance v0, Lb/a/a/a/a/a/f;

    invoke-direct {v0}, Lb/a/a/a/a/a/f;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/a/b;->b:Lb/a/a/a/a/a/e;

    return-void
.end method


# virtual methods
.method protected abstract a()Lb/a/a/a/a/e;
.end method

.method public final a(Lb/a/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/a/a/b;->b:Lb/a/a/a/a/a/e;

    instance-of v0, v0, Lb/a/a/a/a/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lb/a/a/a/a/a/b;->a()Lb/a/a/a/a/e;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lb/a/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lb/a/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/a/a/e;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lb/a/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lb/a/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/a/a/e;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lb/a/a/a/a/a/b;->b:Lb/a/a/a/a/a/e;

    check-cast v0, Lb/a/a/a/a/a;

    invoke-interface {v0, p1}, Lb/a/a/a/a/a;->a(Lb/a/a/a/a/e;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lb/a/a/a/a/a/b;->b:Lb/a/a/a/a/a/e;

    check-cast v0, Lb/a/a/a/a/a;

    invoke-interface {v0, v1}, Lb/a/a/a/a/a;->a(Lb/a/a/a/a/e;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/a/b;->b:Lb/a/a/a/a/a/e;

    invoke-interface {v0, p1}, Lb/a/a/a/a/a/e;->a(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
