.class final Limoblife/toolbox/full/ui/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/bd;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/bd;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/be;->a:Limoblife/toolbox/full/ui/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    check-cast p1, Limoblife/toolbox/full/ui/bf;

    check-cast p2, Limoblife/toolbox/full/ui/bf;

    invoke-virtual {p1}, Limoblife/toolbox/full/ui/bf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Limoblife/toolbox/full/ui/bf;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Limoblife/toolbox/full/ui/be;->a:Limoblife/toolbox/full/ui/bd;

    invoke-static {v1}, Limoblife/toolbox/full/ui/bd;->a(Limoblife/toolbox/full/ui/bd;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v0

    :goto_0
    cmpg-float v4, v1, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Limoblife/toolbox/full/ui/bf;->b()F

    move-result v1

    invoke-virtual {p2}, Limoblife/toolbox/full/ui/bf;->b()F

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Limoblife/toolbox/full/ui/bf;->c()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p2}, Limoblife/toolbox/full/ui/bf;->c()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Limoblife/toolbox/full/ui/bf;->d()F

    move-result v1

    invoke-virtual {p2}, Limoblife/toolbox/full/ui/bf;->d()F

    move-result v0

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
