.class final Lorg/a/a/e;
.super Lorg/a/a/d;


# instance fields
.field private final a:B

.field private final transient b:Lorg/a/a/l;

.field private final transient c:Lorg/a/a/l;


# direct methods
.method constructor <init>(Ljava/lang/String;BLorg/a/a/l;Lorg/a/a/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/d;-><init>(Ljava/lang/String;)V

    iput-byte p2, p0, Lorg/a/a/e;->a:B

    iput-object p3, p0, Lorg/a/a/e;->b:Lorg/a/a/l;

    iput-object p4, p0, Lorg/a/a/e;->c:Lorg/a/a/l;

    return-void
.end method


# virtual methods
.method public final a(Lorg/a/a/a;)Lorg/a/a/c;
    .locals 2

    invoke-static {p1}, Lorg/a/a/f;->a(Lorg/a/a/a;)Lorg/a/a/a;

    move-result-object v0

    iget-byte v1, p0, Lorg/a/a/e;->a:B

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lorg/a/a/a;->K()Lorg/a/a/c;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {v0}, Lorg/a/a/a;->F()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lorg/a/a/a;->I()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lorg/a/a/a;->G()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lorg/a/a/a;->v()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lorg/a/a/a;->C()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lorg/a/a/a;->u()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0}, Lorg/a/a/a;->A()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {v0}, Lorg/a/a/a;->z()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {v0}, Lorg/a/a/a;->x()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {v0}, Lorg/a/a/a;->t()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {v0}, Lorg/a/a/a;->r()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-virtual {v0}, Lorg/a/a/a;->p()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual {v0}, Lorg/a/a/a;->q()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-virtual {v0}, Lorg/a/a/a;->n()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-virtual {v0}, Lorg/a/a/a;->m()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-virtual {v0}, Lorg/a/a/a;->k()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    invoke-virtual {v0}, Lorg/a/a/a;->j()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    invoke-virtual {v0}, Lorg/a/a/a;->h()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    invoke-virtual {v0}, Lorg/a/a/a;->g()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    invoke-virtual {v0}, Lorg/a/a/a;->e()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_16
    invoke-virtual {v0}, Lorg/a/a/a;->d()Lorg/a/a/c;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/e;

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lorg/a/a/e;->a:B

    check-cast p1, Lorg/a/a/e;

    iget-byte v1, p1, Lorg/a/a/e;->a:B

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-byte v0, p0, Lorg/a/a/e;->a:B

    return v0
.end method

.method public final y()Lorg/a/a/l;
    .locals 1

    iget-object v0, p0, Lorg/a/a/e;->b:Lorg/a/a/l;

    return-object v0
.end method

.method public final z()Lorg/a/a/l;
    .locals 1

    iget-object v0, p0, Lorg/a/a/e;->c:Lorg/a/a/l;

    return-object v0
.end method
