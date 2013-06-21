.class public final La/c/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(La/c/c/a/f;)V
    .locals 4

    const/16 v3, 0x5d

    invoke-direct {p0}, La/c/c/a/a;-><init>()V

    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v1

    if-ne v1, v3, :cond_3

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    const/16 v0, 0x29

    goto :goto_0

    :cond_2
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {p1}, La/c/c/a/f;->a()V

    :goto_1
    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, La/c/c/a/f;->a()V

    iget-object v1, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :cond_4
    invoke-virtual {p1}, La/c/c/a/f;->a()V

    iget-object v1, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, La/c/c/a/f;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_0
    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, La/c/c/a/f;->a()V

    goto :goto_1

    :sswitch_1
    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Expected a \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, La/c/c/a/a;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, La/c/c/a/b;

    const-string v1, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-lez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v3, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, La/c/c/a/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "JSONArray["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/c/c/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final b(I)D
    .locals 3

    invoke-virtual {p0, p1}, La/c/c/a/a;->a(I)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "JSONArray["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(I)La/c/c/a/a;
    .locals 3

    invoke-virtual {p0, p1}, La/c/c/a/a;->a(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, La/c/c/a/a;

    if-eqz v0, :cond_0

    check-cast p0, La/c/c/a/a;

    return-object p0

    :cond_0
    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "JSONArray["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is not a JSONArray."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)La/c/c/a/c;
    .locals 3

    invoke-virtual {p0, p1}, La/c/c/a/a;->a(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, La/c/c/a/c;

    if-eqz v0, :cond_0

    check-cast p0, La/c/c/a/c;

    return-object p0

    :cond_0
    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "JSONArray["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is not a JSONObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-direct {p0, v1}, La/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
