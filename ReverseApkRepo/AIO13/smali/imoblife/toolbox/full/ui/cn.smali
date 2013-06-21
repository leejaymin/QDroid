.class final Limoblife/toolbox/full/ui/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/cm;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/cm;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/cn;->a:Limoblife/toolbox/full/ui/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Limoblife/toolbox/full/ui/cl;

    check-cast p2, Limoblife/toolbox/full/ui/cl;

    invoke-virtual {p1}, Limoblife/toolbox/full/ui/cl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Limoblife/toolbox/full/ui/cl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
