.class public final Lfd;
.super Ljava/lang/Object;


# static fields
.field private static ㅼ꽑嫄:I

.field public static final 癤욱븳援:Ljava/util/WeakHashMap;

.field private static 궗:Ljava/util/HashSet;

.field private static 먯꽌:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfd;->癤욱븳援:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static ㅼ꽑嫄()V
    .locals 2

    sget v0, Lfd;->ㅼ꽑嫄:I

    if-gtz v0, :cond_0

    sget-object v0, Lfd;->먯꽌:Ljava/util/HashSet;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lfd;->癤욱븳援:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lfd;->먯꽌:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lff;

    invoke-interface {v0}, Lff;->癤욱븳援()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public static ㅼ꽑嫄(Landroid/app/Activity;)V
    .locals 2

    sget v0, Lfd;->ㅼ꽑嫄:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lfd;->ㅼ꽑嫄:I

    const/16 v0, 0x11

    invoke-static {p0, v0}, Lfd;->癤욱븳援(Landroid/app/Activity;I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lfd;->ㅼ꽑嫄()V

    :cond_0
    return-void
.end method

.method public static 弱밧(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lfd;->癤욱븳援(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lfd;->ㅼ꽑嫄()V

    :cond_0
    return-void
.end method

.method public static 癤욱븳援(Ljava/lang/Class;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lfd;->癤욱븳援:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static 癤욱븳援(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lfd;->癤욱븳援:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lfd;->궗:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lfd;->궗:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe;

    invoke-interface {v0, p0}, Lfe;->癤욱븳援(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static 癤욱븳援(Landroid/app/Activity;I)V
    .locals 2

    sget-object v0, Lfd;->癤욱븳援:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lfd;->궗:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lfd;->궗:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe;

    invoke-interface {v0, p0, p1}, Lfe;->癤욱븳援(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static 癤욱븳援(Lfe;)V
    .locals 1

    sget-object v0, Lfd;->궗:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfd;->궗:Ljava/util/HashSet;

    :cond_0
    sget-object v0, Lfd;->궗:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static 癤욱븳援(Lff;)V
    .locals 1

    sget-object v0, Lfd;->먯꽌:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfd;->먯꽌:Ljava/util/HashSet;

    :cond_0
    sget-object v0, Lfd;->먯꽌:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static 癤욱븳援()Z
    .locals 1

    sget v0, Lfd;->ㅼ꽑嫄:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 궗(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfd;->癤욱븳援(Landroid/app/Activity;I)V

    return-void
.end method

.method public static 궗()Z
    .locals 1

    sget-object v0, Lfd;->癤욱븳援:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 먯꽌()Landroid/app/Activity;
    .locals 3

    sget-object v0, Lfd;->癤욱븳援:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public static 먯꽌(Landroid/app/Activity;)V
    .locals 1

    sget v0, Lfd;->ㅼ꽑嫄:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfd;->ㅼ꽑嫄:I

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfd;->癤욱븳援(Landroid/app/Activity;I)V

    return-void
.end method

.method public static 쇰뒗(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lfd;->癤욱븳援:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lfd;->궗:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lfd;->궗:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lfd;->ㅼ꽑嫄()V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe;

    invoke-interface {v0, p0}, Lfe;->궗(Landroid/app/Activity;)V

    goto :goto_0
.end method
