.class final Lorg/a/a/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/d/p;
.implements Lorg/a/a/d/s;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/a/a/d/l;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/d/l;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lorg/a/a/d/l;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public final a(Lorg/a/a/d/q;Ljava/lang/String;I)I
    .locals 4

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/a/a/d/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/a/a/d/l;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/i;

    invoke-virtual {p1, p0}, Lorg/a/a/d/q;->a(Lorg/a/a/i;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    :goto_0
    return v0

    :cond_1
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V
    .locals 3

    int-to-long v0, p5

    sub-long v0, p2, v0

    if-eqz p6, :cond_0

    iget v2, p0, Lorg/a/a/d/l;->b:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :pswitch_0
    invoke-virtual {p6, v0, v1, p7}, Lorg/a/a/i;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p6, v0, v1, p7}, Lorg/a/a/i;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lorg/a/a/d/l;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method
