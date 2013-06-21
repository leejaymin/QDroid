.class public Lti/modules/titanium/json/JSONModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "JSONModule.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 24
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, parsed:Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v3

    .line 81
    .end local v3           #parsed:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 65
    .restart local v3       #parsed:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, trimmed:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 68
    .local v1, firstChar:C
    const/16 v6, 0x7b

    if-ne v1, v6, :cond_2

    .line 69
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    .end local v3           #parsed:Ljava/lang/Object;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lorg/appcelerator/kroll/KrollDict;-><init>(Lorg/json/JSONObject;)V

    :goto_1
    move-object v6, v3

    .line 81
    goto :goto_0

    .line 70
    .restart local v3       #parsed:Ljava/lang/Object;
    :cond_2
    const/16 v6, 0x5b

    if-ne v1, v6, :cond_4

    .line 71
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v4, v6, [Ljava/lang/Object;

    .line 73
    .local v4, result:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 74
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/kroll/KrollDict;->fromJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 76
    :cond_3
    move-object v3, v4

    .line 77
    .local v3, parsed:[Ljava/lang/Object;
    goto :goto_1

    .line 78
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #result:[Ljava/lang/Object;
    .local v3, parsed:Ljava/lang/Object;
    :cond_4
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method public stringify(Ljava/lang/Object;)Ljava/lang/String;
    .locals 14
    .parameter "data"

    .prologue
    const-wide/16 v10, 0x0

    const-string v13, "\""

    const-string v12, ""

    .line 28
    instance-of v8, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v8, :cond_0

    .line 29
    check-cast p1, Lorg/appcelerator/kroll/KrollDict;

    .end local p1
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Lorg/appcelerator/kroll/KrollDict;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 52
    :goto_0
    return-object v8

    .line 30
    .restart local p1
    :cond_0
    instance-of v8, p1, [Ljava/lang/Object;

    if-eqz v8, :cond_3

    .line 31
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 32
    .local v4, objects:[Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v8, "["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v4

    if-ge v3, v8, :cond_2

    .line 35
    aget-object v8, v4, v3

    invoke-virtual {p0, v8}, Lti/modules/titanium/json/JSONModule;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    array-length v8, v4

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v3, v8, :cond_1

    .line 37
    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 40
    :cond_2
    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 42
    .end local v3           #i:I
    .end local v4           #objects:[Ljava/lang/Object;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_3
    instance-of v8, p1, Ljava/lang/Number;

    if-eqz v8, :cond_6

    .line 44
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 45
    .local v1, d:D
    cmpg-double v8, v1, v10

    if-gez v8, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    move-wide v6, v8

    .line 46
    .local v6, whole:D
    :goto_2
    sub-double v8, v1, v6

    cmpl-double v8, v8, v10

    if-nez v8, :cond_5

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    double-to-int v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 45
    .end local v6           #whole:D
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    move-wide v6, v8

    goto :goto_2

    .line 49
    .restart local v6       #whole:D
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 52
    .end local v1           #d:D
    .end local v6           #whole:D
    .restart local p1
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method
