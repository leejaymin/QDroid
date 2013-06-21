.class public final Lcom/rubycell/pianisthd/d/i;
.super Ljava/lang/Object;


# static fields
.field public static A:Lcom/rubycell/pianisthd/c/a;

.field public static B:Ljava/lang/String;

.field public static a:Ljava/util/ArrayList;

.field public static b:Ljava/util/ArrayList;

.field public static c:Ljava/util/ArrayList;

.field public static d:Ljava/util/ArrayList;

.field public static e:Ljava/util/HashMap;

.field public static f:Ljava/util/HashMap;

.field public static g:Ljava/util/HashMap;

.field public static h:Ljava/util/HashMap;

.field public static i:Ljava/util/HashMap;

.field public static j:Ljava/util/HashMap;

.field public static k:Ljava/util/ArrayList;

.field public static l:Ljava/util/HashMap;

.field public static m:Ljava/util/HashMap;

.field public static n:Ljava/util/HashMap;

.field public static o:Ljava/util/HashMap;

.field public static p:Ljava/util/ArrayList;

.field public static q:Ljava/util/HashMap;

.field public static r:Ljava/util/ArrayList;

.field public static s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

.field public static t:Lcom/rubycell/pianisthd/ui/b;

.field public static u:Z

.field public static v:Z

.field public static w:Lcom/rubycell/pianisthd/c/h;

.field public static x:I

.field public static y:I

.field public static z:I


# direct methods
.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [C

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ruby"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "base64"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v5, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move v4, v9

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v5, v0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v0, p2}, Lcom/rubycell/pianisthd/c/e;->a(Z)V

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->f()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    :goto_3
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/e;->a(I)V

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget v6, Lcom/rubycell/pianisthd/d/b;->n:F

    add-float/2addr v1, v6

    invoke-static {v2, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->m:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->m:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    if-ltz v0, :cond_4

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->o:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->n:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    if-ltz v0, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    move v6, v9

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v6, v1, :cond_7

    :cond_5
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->n:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v1

    if-ne v1, p2, :cond_8

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    if-ltz v1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    move v5, v9

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v2

    if-ne v2, p2, :cond_a

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/e;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method public static a()V
    .locals 5

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move v0, v4

    :goto_1
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DroidSans"

    const/high16 v3, 0x41b8

    invoke-static {v0, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v2

    sget v0, Lcom/rubycell/pianisthd/d/b;->h:F

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/d;->e(F)V

    sget-object v3, Lcom/rubycell/pianisthd/d/i;->f:Ljava/util/HashMap;

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "greendot.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "bluedot_small.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "bluedot_tiny.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v3

    sget-object v4, Lcom/rubycell/pianisthd/d/i;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/rubycell/pianisthd/d/i;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private static a(I)V
    .locals 3

    :try_start_0
    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->j:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->g:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static a(IZ)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->w:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->K:I

    add-int/2addr v0, p0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-gt v0, v1, :cond_0

    sget v3, Lcom/rubycell/pianisthd/d/b;->K:I

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    add-int v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->m:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->q:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/rubycell/pianisthd/d/i;->q:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    :goto_0
    move v5, v10

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v5, v2, :cond_3

    :cond_2
    :goto_2
    sub-int v0, p0, v9

    if-ltz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->o:Ljava/util/HashMap;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->o:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->q:Ljava/util/HashMap;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    move v1, v10

    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->B()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-----------------Remove-------------"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/e;->d()F

    move-result v6

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    sget v7, Lcom/rubycell/pianisthd/d/b;->I:F

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/e;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "greendot.png"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    sget v7, Lcom/rubycell/pianisthd/d/b;->o:F

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v7, v8

    invoke-virtual {v2, v7}, Lorg/cocos2d/g/o;->c(F)V

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v7

    iget v7, v7, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/o;->d(F)V

    move-object v6, v2

    :goto_4
    const/high16 v2, 0x3f00

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lorg/cocos2d/g/o;->c(FF)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/l/e;

    invoke-virtual {v6, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    add-int v2, p0, v3

    invoke-virtual {v6, v2}, Lorg/cocos2d/g/o;->c(I)V

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->t:Lcom/rubycell/pianisthd/ui/b;

    invoke-virtual {v2, v6, v9}, Lcom/rubycell/pianisthd/ui/b;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/e;->d()F

    move-result v2

    const/high16 v7, 0x4348

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "bluedot_tiny.png"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    sget v7, Lcom/rubycell/pianisthd/d/b;->m:F

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v7, v8

    invoke-virtual {v2, v7}, Lorg/cocos2d/g/o;->c(F)V

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v7

    iget v7, v7, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/o;->d(F)V

    move-object v6, v2

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "bluedot_small.png"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    sget v7, Lcom/rubycell/pianisthd/d/b;->m:F

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v7, v8

    invoke-virtual {v2, v7}, Lorg/cocos2d/g/o;->c(F)V

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v7

    iget v7, v7, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/o;->d(F)V

    move-object v6, v2

    goto/16 :goto_4

    :cond_7
    add-int v0, p0, v3

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    add-int v1, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    move-object v4, v2

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/rubycell/pianisthd/d/l;->f:Z

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->b()I

    move-result v1

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->c()Lcom/rubycell/pianisthd/c/a;

    move-result-object v0

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/a;->d()Z

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/a;->f()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->b(I)Lcom/rubycell/pianisthd/c/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->d()I

    move-result v0

    invoke-static {v3, v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070031

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->b(I)Lcom/rubycell/pianisthd/c/h;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070031

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->d()I

    move-result v0

    invoke-static {v3, v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070030

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->b(I)Lcom/rubycell/pianisthd/c/h;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070030

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->d()I

    move-result v0

    invoke-static {v3, v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rubycell/e/c;

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->d()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/rubycell/e/c;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/rubycell/e/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->f()I

    move-result v1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->a(Lcom/rubycell/pianisthd/c/a;)V

    invoke-static {p1}, Lcom/rubycell/pianisthd/d/l;->a(I)V

    invoke-static {v3}, Lcom/rubycell/pianisthd/d/l;->a(Z)V

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/l;->b(I)V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->b(Z)V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/rubycell/pianisthd/d/i;->b(I)Lcom/rubycell/pianisthd/c/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f070030

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/rubycell/pianisthd/d/i;->b(I)Lcom/rubycell/pianisthd/c/h;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070030

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f070031

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/rubycell/pianisthd/d/i;->b(I)Lcom/rubycell/pianisthd/c/h;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070031

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rubycell/e/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/rubycell/e/c;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/rubycell/e/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 25

    sget v5, Lcom/rubycell/pianisthd/d/b;->m:F

    sget v6, Lcom/rubycell/pianisthd/d/b;->n:F

    invoke-static {v5, v6}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v7

    sget v4, Lcom/rubycell/pianisthd/d/b;->o:F

    sget v8, Lcom/rubycell/pianisthd/d/b;->p:F

    invoke-static {v4, v8}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v9

    const/high16 v4, 0x4000

    div-float v4, v5, v4

    const/4 v10, 0x0

    const/high16 v11, 0x4000

    div-float v11, v6, v11

    const/high16 v12, 0x4000

    div-float/2addr v8, v12

    sub-float v8, v6, v8

    const/4 v12, 0x1

    const/4 v13, 0x0

    sput v13, Lcom/rubycell/pianisthd/d/i;->x:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    move v15, v4

    move/from16 v23, v13

    move v13, v12

    move/from16 v12, v23

    move/from16 v24, v10

    move v10, v14

    move/from16 v14, v24

    :goto_0
    sget-object v4, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v10, v4, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v4, Lcom/rubycell/pianisthd/d/i;->e:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x6

    sub-int/2addr v4, v7

    const/4 v7, 0x2

    sub-int/2addr v4, v7

    if-lez v4, :cond_3

    sget-object v4, Lcom/rubycell/pianisthd/d/i;->e:Ljava/util/HashMap;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v4, 0x6

    sub-int p0, p0, v4

    const/4 v4, 0x2

    sub-int p0, p0, v4

    :goto_1
    sput p0, Lcom/rubycell/pianisthd/d/i;->z:I

    move v4, v6

    move/from16 v6, p0

    :goto_2
    sget-object p0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/rubycell/pianisthd/c/c;->f()Ljava/lang/String;

    move-result-object v7

    const-string v8, "m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual/range {p0 .. p0}, Lcom/rubycell/pianisthd/c/c;->x()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    const/4 v8, 0x2

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_0
    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object p0, Lcom/rubycell/pianisthd/d/i;->g:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    move/from16 p0, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v6, 0x1

    sget-object v7, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v5, v7, :cond_7

    sget v5, Lcom/rubycell/pianisthd/d/i;->z:I

    move/from16 v23, p0

    move/from16 p0, v5

    move/from16 v5, v23

    :goto_4
    sget v6, Lcom/rubycell/pianisthd/d/b;->k:I

    add-int/lit8 v6, v6, 0x4

    if-lt v5, v6, :cond_8

    move/from16 p0, v4

    :goto_5
    sget v4, Lcom/rubycell/pianisthd/d/i;->z:I

    add-int v4, v4, p0

    sget-object v5, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_d

    sget v4, Lcom/rubycell/pianisthd/d/i;->z:I

    add-int p0, p0, v4

    const/4 v4, 0x1

    sub-int p0, p0, v4

    :goto_6
    sput p0, Lcom/rubycell/pianisthd/d/i;->y:I

    return-void

    :cond_1
    sget-object v4, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const/16 v16, 0x1

    sub-int v16, v10, v16

    move-object v0, v4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v16, "m"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    packed-switch v13, :pswitch_data_0

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "stroke.png"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v4

    sget v16, Lcom/rubycell/pianisthd/d/b;->o:F

    const/high16 v17, 0x3f00

    mul-float v16, v16, v17

    invoke-virtual {v4}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    sget-object v16, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v16, v0

    sget v17, Lcom/rubycell/pianisthd/d/b;->n:F

    sub-float v16, v16, v17

    invoke-virtual {v4}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    const/high16 v16, 0x3f00

    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/o;->c(FF)V

    sget v16, Lcom/rubycell/pianisthd/d/b;->n:F

    move-object v0, v4

    move v1, v14

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/o;->d(FF)V

    sget-object v16, Lcom/rubycell/pianisthd/d/i;->g:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const/16 v16, 0x1

    sub-int v16, v10, v16

    move-object v0, v4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v8}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    packed-switch v13, :pswitch_data_1

    move-object/from16 v23, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v23

    :goto_8
    new-instance v20, Lcom/rubycell/pianisthd/c/c;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/rubycell/pianisthd/c/c;-><init>(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;)V

    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/c;->c(I)V

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/c;->a(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/c;->a(I)V

    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    move/from16 v16, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/c;->a(F)V

    sget-object v16, Lcom/rubycell/pianisthd/d/i;->e:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v13, 0x1

    const/4 v13, 0x5

    if-le v4, v13, :cond_10

    const/4 v4, 0x1

    move v13, v14

    move v14, v15

    move/from16 v23, v12

    move v12, v4

    move/from16 v4, v23

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v4

    goto/16 :goto_0

    :pswitch_0
    const v4, 0x3d75c28f

    mul-float/2addr v4, v5

    add-float/2addr v4, v5

    add-float/2addr v4, v14

    move v14, v4

    goto/16 :goto_7

    :pswitch_1
    const/high16 v4, 0x4000

    mul-float/2addr v4, v5

    const v16, 0x3d75c28f

    mul-float v16, v16, v5

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v4, v4, v16

    add-float/2addr v4, v14

    move v14, v4

    goto/16 :goto_7

    :pswitch_2
    const v4, 0x3d75c28f

    mul-float/2addr v4, v5

    const/high16 v16, 0x4000

    mul-float v4, v4, v16

    add-float/2addr v4, v5

    add-float/2addr v4, v14

    move v14, v4

    goto/16 :goto_7

    :pswitch_3
    const/high16 v4, 0x4000

    mul-float/2addr v4, v5

    const v16, 0x3d75c28f

    mul-float v16, v16, v5

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    sub-float v4, v4, v16

    add-float/2addr v4, v14

    move v14, v4

    goto/16 :goto_7

    :pswitch_4
    const v4, 0x3d75c28f

    mul-float/2addr v4, v5

    add-float/2addr v4, v5

    add-float/2addr v4, v14

    move v14, v4

    goto/16 :goto_7

    :pswitch_5
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "black_up_right.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v17

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v18}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "black_down_right.png"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "black_hint_right.png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    move-object/from16 v18, v20

    move-object/from16 v19, v17

    move-object/from16 v17, v21

    goto/16 :goto_8

    :pswitch_6
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "black_up_left.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v17

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v18}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "black_down_left.png"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "black_hint_left.png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    move-object/from16 v18, v20

    move-object/from16 v19, v17

    move-object/from16 v17, v21

    goto/16 :goto_8

    :pswitch_7
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "black_up_right.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v17

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v18}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "black_down_right.png"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "black_hint_right.png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    move-object/from16 v18, v20

    move-object/from16 v19, v17

    move-object/from16 v17, v21

    goto/16 :goto_8

    :pswitch_8
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "black_up_left.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v17

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v18}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "black_down_left.png"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "black_hint_left.png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    move-object/from16 v18, v20

    move-object/from16 v19, v17

    move-object/from16 v17, v21

    goto/16 :goto_8

    :pswitch_9
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "black_up_center.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v17

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object v0, v9

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v18}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "black_down_center.png"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "black_hint_center.png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    move-object/from16 v18, v20

    move-object/from16 v19, v17

    move-object/from16 v17, v21

    goto/16 :goto_8

    :cond_2
    sget-object v4, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const/16 v16, 0x1

    sub-int v16, v10, v16

    move-object v0, v4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v11}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "keynormal_normal.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v17

    move-object v0, v7

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move-object v0, v7

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v18}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "keynormal_down.png"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "keynormal_light.png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v18, Lcom/rubycell/pianisthd/c/c;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/rubycell/pianisthd/c/c;-><init>(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;)V

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/c;->c(I)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/c;->a(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/c;->a(I)V

    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    move/from16 v16, v0

    const/high16 v19, 0x4000

    div-float v16, v16, v19

    sub-float v16, v17, v16

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/c;->a(F)V

    sget-object v16, Lcom/rubycell/pianisthd/d/i;->e:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/rubycell/pianisthd/d/i;->f:Ljava/util/HashMap;

    sget-object v16, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const/16 v17, 0x1

    sub-int v17, v10, v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/g/d;

    const/high16 v16, 0x4000

    div-float v16, v5, v16

    sub-float v16, v15, v16

    const/high16 v17, 0x4100

    sget v19, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float v17, v17, v19

    add-float v16, v16, v17

    const/high16 v17, 0x4100

    sget v19, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float v17, v17, v19

    const v19, 0x3d23d70a

    mul-float v19, v19, v6

    add-float v17, v17, v19

    invoke-static/range {v16 .. v17}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/d;->c(FF)V

    sget-object v16, Lorg/cocos2d/l/j;->g:Lorg/cocos2d/l/j;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/d;->a(Lorg/cocos2d/l/j;)V

    sget-object v16, Lcom/rubycell/pianisthd/d/i;->j:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-float v4, v15, v5

    sget v15, Lcom/rubycell/pianisthd/d/i;->x:I

    int-to-float v15, v15

    add-float/2addr v15, v5

    float-to-int v15, v15

    sput v15, Lcom/rubycell/pianisthd/d/i;->x:I

    sget-object v15, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lcom/rubycell/pianisthd/d/i;->i:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    move/from16 v23, v12

    move v12, v13

    move v13, v14

    move v14, v4

    move/from16 v4, v23

    goto/16 :goto_9

    :cond_3
    const/16 p0, 0x1

    goto/16 :goto_1

    :cond_4
    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual/range {p0 .. p0}, Lcom/rubycell/pianisthd/c/c;->x()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    const/4 v8, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    sget-boolean p0, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz p0, :cond_6

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object p0, Lcom/rubycell/pianisthd/d/i;->j:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    const/4 v8, 0x2

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_6
    move/from16 p0, v5

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v5, v6, 0x1

    sget v6, Lcom/rubycell/pianisthd/d/b;->k:I

    add-int/lit8 v6, v6, 0x4

    move/from16 v0, p0

    move v1, v6

    if-ne v0, v1, :cond_f

    move/from16 v23, p0

    move/from16 p0, v5

    move/from16 v5, v23

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v6, p0, -0x1

    sget-object p0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/rubycell/pianisthd/c/c;->f()Ljava/lang/String;

    move-result-object v7

    const-string v8, "m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual/range {p0 .. p0}, Lcom/rubycell/pianisthd/c/c;->x()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    const/4 v8, 0x2

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_9
    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object p0, Lcom/rubycell/pianisthd/d/i;->g:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    move/from16 p0, v5

    :goto_a
    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/rubycell/pianisthd/d/b;->k:I

    add-int/lit8 v5, v5, 0x4

    move/from16 v0, p0

    move v1, v5

    if-ne v0, v1, :cond_e

    sput v6, Lcom/rubycell/pianisthd/d/i;->z:I

    move/from16 p0, v4

    goto/16 :goto_5

    :cond_a
    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual/range {p0 .. p0}, Lcom/rubycell/pianisthd/c/c;->x()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v7

    if-nez v7, :cond_b

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    const/4 v8, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_b
    add-int/lit8 v5, v5, 0x1

    sget-boolean p0, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz p0, :cond_c

    sget-object v7, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object p0, Lcom/rubycell/pianisthd/d/i;->j:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    const/4 v8, 0x2

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_c
    move/from16 p0, v5

    goto :goto_a

    :cond_d
    sget-object p0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result p0

    goto/16 :goto_6

    :cond_e
    move/from16 v5, p0

    move/from16 p0, v6

    goto/16 :goto_4

    :cond_f
    move v6, v5

    move/from16 v5, p0

    goto/16 :goto_2

    :cond_10
    move v13, v14

    move v14, v15

    move/from16 v23, v12

    move v12, v4

    move/from16 v4, v23

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Ljava/util/ArrayList;I)V
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/rubycell/pianisthd/d/k;->b()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->e()V

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    if-nez v0, :cond_5

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rubycell/pianisthd/ui/a;->a(Ljava/lang/String;)Lorg/cocos2d/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->b(Lorg/cocos2d/e/d;)V

    :goto_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->b(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/i;->u:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/i;->v:Z

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->a:Ljava/util/ArrayList;

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->c:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->b:Ljava/util/ArrayList;

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/k;

    invoke-direct {v1}, Lcom/rubycell/pianisthd/c/k;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, p1

    :goto_2
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->m:Ljava/util/HashMap;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/rubycell/pianisthd/d/b;->K:I

    add-int/2addr v0, v2

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_7

    sget v0, Lcom/rubycell/pianisthd/d/b;->K:I

    add-int/2addr v0, v2

    move v3, v0

    :goto_3
    move v4, v2

    :goto_4
    if-ge v4, v3, :cond_4

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->w:Z

    if-nez v0, :cond_8

    :cond_4
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object v3, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Ljava/util/ArrayList;)V

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->t:Lcom/rubycell/pianisthd/ui/b;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/rubycell/pianisthd/ui/b;->d(FF)V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rubycell/pianisthd/ui/a;->a(Ljava/lang/String;)Lorg/cocos2d/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->b(Lorg/cocos2d/e/d;)V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->m:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->q:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/rubycell/pianisthd/d/i;->q:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    :goto_5
    if-eqz p0, :cond_e

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v6, v10

    :goto_6
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v6, v1, :cond_a

    :cond_9
    :goto_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->d()F

    move-result v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    sget v8, Lcom/rubycell/pianisthd/d/b;->I:F

    mul-float/2addr v7, v8

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->b()Ljava/lang/String;

    move-result-object v8

    const-string v9, "m"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "greendot.png"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/high16 v8, 0x3f00

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/cocos2d/g/o;->c(FF)V

    sget v8, Lcom/rubycell/pianisthd/d/b;->o:F

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v9

    iget v9, v9, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v8, v9

    invoke-virtual {v1, v8}, Lorg/cocos2d/g/o;->c(F)V

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v7, v8

    invoke-virtual {v1, v7}, Lorg/cocos2d/g/o;->d(F)V

    move-object v7, v1

    :goto_8
    const/high16 v1, 0x3f00

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lorg/cocos2d/g/o;->c(FF)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/l/e;

    invoke-virtual {v7, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {v7, v4}, Lorg/cocos2d/g/o;->c(I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->t:Lcom/rubycell/pianisthd/ui/b;

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lcom/rubycell/pianisthd/ui/b;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_b
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->d()F

    move-result v1

    const/high16 v8, 0x4348

    cmpg-float v1, v1, v8

    if-gez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "bluedot_tiny.png"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/high16 v8, 0x3f00

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/cocos2d/g/o;->c(FF)V

    :goto_9
    sget v8, Lcom/rubycell/pianisthd/d/b;->m:F

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v9

    iget v9, v9, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v8, v9

    invoke-virtual {v1, v8}, Lorg/cocos2d/g/o;->c(F)V

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v7, v8

    invoke-virtual {v1, v7}, Lorg/cocos2d/g/o;->d(F)V

    move-object v7, v1

    goto :goto_8

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "bluedot_small.png"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/high16 v8, 0x3f00

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/cocos2d/g/o;->c(FF)V

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/rubycell/pianisthd/d/i;->a(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :cond_f
    move-object v5, v1

    goto/16 :goto_5
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v0, 0x0

    move v8, v1

    :goto_0
    if-lt v8, v7, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "rest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    sget v4, Lcom/rubycell/pianisthd/d/b;->y:I

    add-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    if-nez v4, :cond_1

    add-float/2addr v0, v3

    move v2, v0

    :goto_2
    new-instance v0, Lcom/rubycell/pianisthd/c/e;

    invoke-direct/range {v0 .. v5}, Lcom/rubycell/pianisthd/c/e;-><init>(Ljava/lang/String;FFZZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    const/4 v6, 0x1

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->n:F

    sub-float/2addr v0, v1

    sget v1, Lcom/rubycell/pianisthd/d/b;->H:F

    div-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->I:F

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    return-void

    :cond_0
    sub-int v0, v3, v6

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->c()F

    move-result v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    sget v1, Lcom/rubycell/pianisthd/d/b;->I:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/m;->a(D)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    sub-int v2, v3, v6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Lcom/rubycell/pianisthd/d/m;->a(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->d()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/rubycell/pianisthd/c/e;->a(F)V

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static b(I)Lcom/rubycell/pianisthd/c/h;
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, p0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    sub-int v1, p0, v3

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    goto :goto_1

    :cond_2
    sub-int v1, p0, v3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v1, Lcom/rubycell/pianisthd/d/i;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v3, Lcom/rubycell/pianisthd/d/i;->z:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->e()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/c;->e()Lorg/cocos2d/l/g;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    add-float/2addr v0, v1

    sget v1, Lcom/rubycell/pianisthd/d/i;->z:I

    if-eq v1, v5, :cond_0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    sget v0, Lcom/rubycell/pianisthd/d/i;->z:I

    sub-int/2addr v0, v5

    sput v0, Lcom/rubycell/pianisthd/d/i;->z:I

    if-gtz v0, :cond_1

    sput v5, Lcom/rubycell/pianisthd/d/i;->z:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v1, Lcom/rubycell/pianisthd/d/i;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v1, v0, v6}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->g:Ljava/util/HashMap;

    sget v2, Lcom/rubycell/pianisthd/d/i;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_2
    :goto_1
    sget v0, Lcom/rubycell/pianisthd/d/i;->y:I

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/i;->a(I)V

    sget v0, Lcom/rubycell/pianisthd/d/i;->y:I

    sub-int/2addr v0, v5

    sput v0, Lcom/rubycell/pianisthd/d/i;->y:I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v1, v0, v5}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz v0, :cond_2

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->j:Ljava/util/HashMap;

    sget v2, Lcom/rubycell/pianisthd/d/i;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v1, v0, v6}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    goto :goto_1
.end method

.method public static c()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    add-float v2, v0, v1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v1, Lcom/rubycell/pianisthd/d/i;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v3, Lcom/rubycell/pianisthd/d/i;->y:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->e()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    sub-float v0, v3, v0

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/c;->e()Lorg/cocos2d/l/g;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    sub-float/2addr v0, v1

    sget v1, Lcom/rubycell/pianisthd/d/i;->y:I

    sget-object v3, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    sget v0, Lcom/rubycell/pianisthd/d/i;->y:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rubycell/pianisthd/d/i;->y:I

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/rubycell/pianisthd/d/i;->y:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v1, Lcom/rubycell/pianisthd/d/i;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v1, v0, v6}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->g:Ljava/util/HashMap;

    sget v2, Lcom/rubycell/pianisthd/d/i;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    :cond_2
    :goto_1
    sget v0, Lcom/rubycell/pianisthd/d/i;->z:I

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/i;->a(I)V

    sget v0, Lcom/rubycell/pianisthd/d/i;->z:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rubycell/pianisthd/d/i;->z:I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v1, v0, v5}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz v0, :cond_2

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->j:Ljava/util/HashMap;

    sget v2, Lcom/rubycell/pianisthd/d/i;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v1, v0, v6}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    goto :goto_1
.end method

.method public static d()V
    .locals 6

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/rubycell/pianisthd/d/i;->a(IZ)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->t:Lcom/rubycell/pianisthd/ui/b;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/b;->F()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->t:Lcom/rubycell/pianisthd/ui/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/b;->d(Z)V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->J:Z

    return-void
.end method
