.class public final Lfc;
.super Ljava/lang/Object;


# static fields
.field private static ㅼ꽑嫄:I

.field public static final 癤욱븳援:Ljava/lang/String;

.field static 궗:Ljava/lang/String;

.field public static 먯꽌:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfc;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public static 癤욱븳援(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x14

    sget-object v0, Lfc;->먯꽌:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfc;->먯꽌:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lfc;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    sget-object v0, Lfc;->먯꽌:Ljava/util/ArrayList;

    sget v1, Lfc;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v0, Lfc;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    sget-object v0, Lfc;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lfc;->ㅼ꽑嫄:I

    if-lt v1, v0, :cond_1

    sget-object v0, Lfc;->먯꽌:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static 癤욱븳援(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lfc;->궗:Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lfc;->먯꽌:Ljava/util/ArrayList;

    array-length v0, p1

    sput v0, Lfc;->ㅼ꽑嫄:I

    :cond_0
    return-void
.end method
