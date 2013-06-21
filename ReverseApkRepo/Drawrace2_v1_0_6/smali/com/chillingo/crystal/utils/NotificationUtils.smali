.class public Lcom/chillingo/crystal/utils/NotificationUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;
    .locals 3

    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUnavailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast p0, Ljava/util/Map;

    const-string v1, "status"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "status"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :cond_0
    return-object v0
.end method
