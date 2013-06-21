.class final Limoblife/toolbox/full/ui/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/au;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/au;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/av;->a:Limoblife/toolbox/full/ui/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Limoblife/toolbox/full/ui/at;

    check-cast p2, Limoblife/toolbox/full/ui/at;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Limoblife/toolbox/full/ui/at;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Limoblife/toolbox/full/ui/at;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
