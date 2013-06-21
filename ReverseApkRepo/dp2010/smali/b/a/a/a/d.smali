.class public final Lb/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lb/a/a/a/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/c/a;

    invoke-direct {v0}, Lb/a/a/a/c/a;-><init>()V

    iput-object v0, p0, Lb/a/a/a/d;->b:Lb/a/a/a/c/a;

    iput-object p1, p0, Lb/a/a/a/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/d;->b:Lb/a/a/a/c/a;

    invoke-virtual {v0}, Lb/a/a/a/c/a;->a()I

    move-result v0

    return v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lb/a/a/a/b;

    iget-object v1, p0, Lb/a/a/a/d;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lb/a/a/a/b;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/d;->b:Lb/a/a/a/c/a;

    invoke-virtual {v0}, Lb/a/a/a/c/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    check-cast v0, Lb/a/a/a/c;

    invoke-interface {v0}, Lb/a/a/a/c;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lb/a/a/a/b;

    iget-object v1, p0, Lb/a/a/a/d;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lb/a/a/a/b;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/d;->b:Lb/a/a/a/c/a;

    invoke-virtual {v0}, Lb/a/a/a/c/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    check-cast v0, Lb/a/a/a/c;

    invoke-interface {v0}, Lb/a/a/a/c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
