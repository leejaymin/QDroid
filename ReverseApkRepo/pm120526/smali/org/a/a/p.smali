.class public final Lorg/a/a/p;
.super Lorg/a/a/a/c;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/a/a/r;


# instance fields
.field private a:Lorg/a/a/c;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/a/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/a/c;-><init>(Lorg/a/a/i;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/a/a/d;)Lorg/a/a/q;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/p;->b()Lorg/a/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/a/a/d;->a(Lorg/a/a/a;)Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c;->c()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/a/a/q;

    invoke-direct {v1, p0, v0}, Lorg/a/a/q;-><init>(Lorg/a/a/p;Lorg/a/a/c;)V

    return-object v1
.end method

.method public final a(J)V
    .locals 2

    iget v0, p0, Lorg/a/a/p;->b:I

    packed-switch v0, :pswitch_data_0

    move-wide v0, p1

    :goto_0
    invoke-super {p0, v0, v1}, Lorg/a/a/a/c;->a(J)V

    return-void

    :pswitch_0
    move-wide v0, p1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/a/a/p;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/a/a/p;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->e(J)J

    move-result-wide v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/a/a/p;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->f(J)J

    move-result-wide v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/a/a/p;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->g(J)J

    move-result-wide v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/a/a/p;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->h(J)J

    move-result-wide v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/a/a/d/u;->a()Lorg/a/a/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/a/a/d/b;->a(Lorg/a/a/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
