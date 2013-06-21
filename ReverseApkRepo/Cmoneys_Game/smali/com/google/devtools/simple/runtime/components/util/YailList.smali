.class public Lcom/google/devtools/simple/runtime/components/util/YailList;
.super Lgnu/lists/Pair;
.source "YailList.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/google/devtools/simple/runtime/components/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {p0, v0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "cdrval"

    .prologue
    .line 43
    sget-object v0, Lcom/google/devtools/simple/runtime/components/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    invoke-direct {p0, v0, p1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static makeList(Ljava/util/Collection;)Lcom/google/devtools/simple/runtime/components/util/YailList;
    .locals 3
    .parameter "vals"

    .prologue
    .line 66
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/lists/Pair;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 67
    .local v0, newCdr:Lgnu/lists/LList;
    new-instance v1, Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-direct {v1, v0}, Lcom/google/devtools/simple/runtime/components/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static makeList(Ljava/util/List;)Lcom/google/devtools/simple/runtime/components/util/YailList;
    .locals 2
    .parameter "vals"

    .prologue
    .line 58
    invoke-static {p0}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v0

    .line 59
    .local v0, newCdr:Lgnu/lists/LList;
    new-instance v1, Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-direct {v1, v0}, Lcom/google/devtools/simple/runtime/components/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static makeList([Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/components/util/YailList;
    .locals 2
    .parameter "objects"

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lgnu/lists/Pair;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 51
    .local v0, newCdr:Lgnu/lists/LList;
    new-instance v1, Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-direct {v1, v0}, Lcom/google/devtools/simple/runtime/components/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 147
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lgnu/lists/Pair;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/google/devtools/simple/runtime/components/util/YailList;->cdr:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    .line 78
    iget-object p0, p0, Lcom/google/devtools/simple/runtime/components/util/YailList;->cdr:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/lists/LList;

    invoke-virtual {p0}, Lgnu/lists/LList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 80
    .restart local p0
    :cond_1
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;

    const-string v1, "YailList cannot be represented as an array"

    const-string v2, "YailList Error."

    invoke-direct {v0, v1, v2}, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 103
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v2, json:Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 105
    .local v3, separator:Ljava/lang/String;
    const/16 v6, 0x5b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/util/YailList;->size()I

    move-result v4

    .line 107
    .local v4, size:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v4, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 109
    .local v5, value:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v3, ","

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v5           #value:Ljava/lang/Object;
    :cond_0
    const/16 v6, 0x5d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 116
    .end local v1           #i:I
    .end local v2           #json:Ljava/lang/StringBuilder;
    .end local v3           #separator:Ljava/lang/String;
    .end local v4           #size:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 117
    .local v0, e:Lorg/json/JSONException;
    new-instance v6, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;

    const-string v7, "List failed to convert to JSON."

    const-string v8, "JSON Creation Error."

    invoke-direct {v6, v7, v8}, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/google/devtools/simple/runtime/components/util/YailList;->cdr:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 136
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    .line 137
    iget-object p0, p0, Lcom/google/devtools/simple/runtime/components/util/YailList;->cdr:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/lists/LList;

    invoke-virtual {p0}, Lgnu/lists/LList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "YailList cannot be represented as a String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/util/YailList;->size()I

    move-result v2

    .line 89
    .local v2, size:I
    new-array v1, v2, [Ljava/lang/String;

    .line 90
    .local v1, objects:[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 91
    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v1
.end method
