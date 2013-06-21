.class final Lcom/inisoft/mediaplayer/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bz;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, ".."

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/inisoft/mediaplayer/by;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p2}, Lcom/inisoft/mediaplayer/by;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bz;->a:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    const/4 v0, -0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
