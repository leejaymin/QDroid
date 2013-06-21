.class final Lcom/inisoft/mediaplayer/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/e;

.field private final b:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/e;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/h;->a:Lcom/inisoft/mediaplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/h;->b:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/inisoft/mediaplayer/cj;

    check-cast p2, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/h;->a:Lcom/inisoft/mediaplayer/e;

    iget-boolean v2, v2, Lcom/inisoft/mediaplayer/e;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/h;->b:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/h;->b:Ljava/text/Collator;

    invoke-virtual {v2, v1, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/inisoft/mediaplayer/h;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/e;->f(Lcom/inisoft/mediaplayer/e;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/h;->a:Lcom/inisoft/mediaplayer/e;

    iget-boolean v2, v2, Lcom/inisoft/mediaplayer/e;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/inisoft/mediaplayer/h;->b:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/h;->b:Ljava/text/Collator;

    invoke-virtual {v2, v1, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/inisoft/mediaplayer/h;->a:Lcom/inisoft/mediaplayer/e;

    iget-boolean v3, v3, Lcom/inisoft/mediaplayer/e;->e:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->v()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->v()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->v()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->v()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->v()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->v()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->v()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->v()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/inisoft/mediaplayer/h;->a:Lcom/inisoft/mediaplayer/e;

    iget-boolean v3, v3, Lcom/inisoft/mediaplayer/e;->e:Z

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->u()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->u()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->u()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->u()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->u()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->u()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->u()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->u()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_9

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
