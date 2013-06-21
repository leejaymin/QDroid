.class final Limoblife/toolbox/full/ui/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/bt;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/bt;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/bu;->a:Limoblife/toolbox/full/ui/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Limoblife/toolbox/full/ui/bv;

    check-cast p2, Limoblife/toolbox/full/ui/bv;

    invoke-virtual {p1}, Limoblife/toolbox/full/ui/bv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Limoblife/toolbox/full/ui/bv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Limoblife/toolbox/full/ui/bv;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Limoblife/toolbox/full/ui/bv;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Limoblife/toolbox/full/ui/bv;->a:Ljava/lang/String;

    iget-object v2, p2, Limoblife/toolbox/full/ui/bv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
