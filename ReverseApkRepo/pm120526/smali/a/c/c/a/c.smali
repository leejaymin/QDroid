.class public final La/c/c/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/c/c/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/c/c/a/d;-><init>(B)V

    sput-object v0, La/c/c/a/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/c/c/a/c;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(La/c/c/a/f;)V
    .locals 4

    invoke-direct {p0}, La/c/c/a/c;-><init>()V

    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const-string v0, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p1}, La/c/c/a/f;->a()V

    :cond_1
    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1}, La/c/c/a/f;->a()V

    invoke-virtual {p1}, La/c/c/a/f;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, La/c/c/a/f;->b()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, La/c/c/a/f;->a()V

    :cond_2
    invoke-virtual {p1}, La/c/c/a/f;->d()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, La/c/c/a/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v1, La/c/c/a/b;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Duplicate key \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const-string v0, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :cond_3
    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const-string v0, "Expected a \':\' after a key"

    invoke-virtual {p1, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, La/c/c/a/b;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v1, :cond_7

    invoke-static {v1}, La/c/c/a/c;->b(Ljava/lang/Object;)V

    iget-object v2, p0, La/c/c/a/c;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_1

    const-string v0, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v1, p0, La/c/c/a/c;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, La/c/c/a/f;->c()C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La/c/c/a/f;

    invoke-direct {v0, p1}, La/c/c/a/f;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/c/c/a/c;-><init>(La/c/c/a/f;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, La/c/c/a/c;->b:Ljava/util/Map;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Number;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v0, La/c/c/a/b;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, La/c/c/a/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, La/c/c/a/e;

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, La/c/c/a/e;

    invoke-interface {p0}, La/c/c/a/e;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/c/c/a/b;

    invoke-direct {v1, v0}, La/c/c/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Bad value from toJSONString: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, La/c/c/a/c;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_5

    instance-of v0, p0, La/c/c/a/c;

    if-nez v0, :cond_5

    instance-of v0, p0, La/c/c/a/a;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_7

    new-instance v0, La/c/c/a/c;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, La/c/c/a/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, La/c/c/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_8

    new-instance v0, La/c/c/a/a;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, La/c/c/a/a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, La/c/c/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, La/c/c/a/a;

    invoke-direct {v0, p0}, La/c/c/a/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, La/c/c/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/c/a/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_3

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    new-instance v1, La/c/c/a/b;

    const-string v2, "JSON does not allow non-finite numbers."

    invoke-direct {v1, v2}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_2

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, La/c/c/a/b;

    const-string v2, "JSON does not allow non-finite numbers."

    invoke-direct {v1, v2}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/16 v4, 0x30

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, La/c/c/a/c;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v4, :cond_4

    const/16 v1, 0x39

    if-le v0, v1, :cond_5

    :cond_4
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_8

    :cond_5
    if-ne v0, v4, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_9

    :cond_6
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_7
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :cond_8
    move-object v0, p0

    goto :goto_0

    :cond_9
    :try_start_4
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, La/c/c/a/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/c/c/a/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/c/c/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x5c

    const/16 v8, 0x22

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "\"\""

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/16 v3, 0x20

    if-lt v4, v3, :cond_3

    const/16 v3, 0x80

    if-lt v4, v3, :cond_2

    const/16 v3, 0xa0

    if-lt v4, v3, :cond_3

    :cond_2
    const/16 v3, 0x2000

    if-lt v4, v3, :cond_5

    const/16 v3, 0x2100

    if-ge v4, v3, :cond_5

    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "000"

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "\\u"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_1
    const/16 v5, 0x3c

    if-ne v3, v5, :cond_4

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_2
    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_3
    const-string v3, "\\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_4
    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_5
    const-string v3, "\\f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_6
    const-string v3, "\\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/c/c/a/a;
    .locals 3

    invoke-direct {p0, p1}, La/c/c/a/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, La/c/c/a/a;

    if-eqz v0, :cond_0

    check-cast p0, La/c/c/a/a;

    return-object p0

    :cond_0
    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/c/c/a/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is not a JSONArray."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, La/c/c/a/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)La/c/c/a/c;
    .locals 3

    invoke-direct {p0, p1}, La/c/c/a/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, La/c/c/a/c;

    if-eqz v0, :cond_0

    check-cast p0, La/c/c/a/c;

    return-object p0

    :cond_0
    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/c/c/a/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is not a JSONObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, La/c/c/a/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, La/c/c/a/c;->a:Ljava/lang/Object;

    invoke-direct {p0, p1}, La/c/c/a/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, La/c/c/a/c;->a()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/c/c/a/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, La/c/c/a/c;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, La/c/c/a/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method
