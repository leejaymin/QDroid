.class public Ltwitter4j/org/json/JSONML;
.super Ljava/lang/Object;
.source "JSONML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Ltwitter4j/org/json/XMLTokener;ZLtwitter4j/org/json/JSONArray;)Ljava/lang/Object;
    .locals 8
    .parameter "x"
    .parameter "arrayForm"
    .parameter "ja"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, closeTag:Ljava/lang/String;
    const/4 v2, 0x0

    .line 55
    .local v2, newja:Ltwitter4j/org/json/JSONArray;
    const/4 v3, 0x0

    .line 57
    .local v3, newjo:Ltwitter4j/org/json/JSONObject;
    const/4 v4, 0x0

    .local v4, tagName:Ljava/lang/String;
    move-object v5, v4

    .end local v4           #tagName:Ljava/lang/String;
    .local v5, tagName:Ljava/lang/String;
    move-object v4, v3

    .end local v3           #newjo:Ltwitter4j/org/json/JSONObject;
    .local v4, newjo:Ltwitter4j/org/json/JSONObject;
    move-object v3, v2

    .end local v2           #newja:Ltwitter4j/org/json/JSONArray;
    .local v3, newja:Ltwitter4j/org/json/JSONArray;
    move-object v2, v1

    .line 66
    .end local v1           #closeTag:Ljava/lang/String;
    .local v2, closeTag:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, token:Ljava/lang/Object;
    sget-object v6, Ltwitter4j/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v6, :cond_21

    .line 68
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 69
    .end local v1           #token:Ljava/lang/Object;
    .local v6, token:Ljava/lang/Object;
    instance-of v1, v6, Ljava/lang/Character;

    if-eqz v1, :cond_e

    .line 70
    sget-object v1, Ltwitter4j/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v6, v1, :cond_3

    .line 74
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p1

    .line 75
    .end local v6           #token:Ljava/lang/Object;
    .local p1, token:Ljava/lang/Object;
    instance-of p2, p1, Ljava/lang/String;

    .end local p2
    if-nez p2, :cond_1

    .line 76
    new-instance p0, Ltwitter4j/org/json/JSONException;

    .end local p0
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Expected a closing name instead of \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    .end local p1           #token:Ljava/lang/Object;
    const-string p2, "\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    .restart local p0
    .restart local p1       #token:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Ltwitter4j/org/json/XML;->GT:Ljava/lang/Character;

    if-eq p2, v1, :cond_2

    .line 81
    const-string p1, "Misshaped close tag"

    .end local p1           #token:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0
    throw p0

    .restart local p0
    .restart local p1       #token:Ljava/lang/Object;
    :cond_2
    move-object v1, v5

    .end local v5           #tagName:Ljava/lang/String;
    .local v1, tagName:Ljava/lang/String;
    move-object p2, v4

    .end local v4           #newjo:Ltwitter4j/org/json/JSONObject;
    .local p2, newjo:Ltwitter4j/org/json/JSONObject;
    move-object p0, v2

    .end local v2           #closeTag:Ljava/lang/String;
    .local p0, closeTag:Ljava/lang/String;
    move-object v2, p1

    move-object p1, v3

    .line 213
    .end local v3           #newja:Ltwitter4j/org/json/JSONArray;
    .local p1, newja:Ltwitter4j/org/json/JSONArray;
    :goto_1
    return-object v2

    .line 84
    .end local v1           #tagName:Ljava/lang/String;
    .restart local v2       #closeTag:Ljava/lang/String;
    .restart local v3       #newja:Ltwitter4j/org/json/JSONArray;
    .restart local v4       #newjo:Ltwitter4j/org/json/JSONObject;
    .restart local v5       #tagName:Ljava/lang/String;
    .restart local v6       #token:Ljava/lang/Object;
    .local p0, x:Ltwitter4j/org/json/XMLTokener;
    .local p1, arrayForm:Z
    .local p2, ja:Ltwitter4j/org/json/JSONArray;
    :cond_3
    sget-object v1, Ltwitter4j/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v6, v1, :cond_c

    .line 88
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v1

    .line 89
    .local v1, c:C
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_5

    .line 90
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v1

    .end local v1           #c:C
    const/16 v6, 0x2d

    if-ne v1, v6, :cond_4

    .line 91
    .end local v6           #token:Ljava/lang/Object;
    const-string v1, "-->"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    .line 93
    :cond_4
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->back()V

    goto :goto_0

    .line 94
    .restart local v1       #c:C
    .restart local v6       #token:Ljava/lang/Object;
    :cond_5
    const/16 v7, 0x5b

    if-ne v1, v7, :cond_7

    .line 95
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 96
    .end local v6           #token:Ljava/lang/Object;
    .local v1, token:Ljava/lang/Object;
    const-string v6, "CDATA"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #token:Ljava/lang/Object;
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v1

    const/16 v6, 0x5b

    if-ne v1, v6, :cond_6

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    goto/16 :goto_0

    .line 101
    :cond_6
    const-string p1, "Expected \'CDATA[\'"

    .end local p1           #arrayForm:Z
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 104
    .local v1, c:C
    .restart local v6       #token:Ljava/lang/Object;
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    :cond_7
    const/4 v1, 0x1

    .line 106
    .local v1, i:I
    :cond_8
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v6

    .line 107
    if-nez v6, :cond_9

    .line 108
    const-string p1, "Missing \'>\' after \'<!\'."

    .end local p1           #arrayForm:Z
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 109
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    :cond_9
    sget-object v7, Ltwitter4j/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v6, v7, :cond_b

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 114
    :cond_a
    :goto_2
    if-gtz v1, :cond_8

    goto/16 :goto_0

    .line 111
    :cond_b
    sget-object v7, Ltwitter4j/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v6, v7, :cond_a

    .line 112
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 116
    .end local v1           #i:I
    :cond_c
    sget-object v1, Ltwitter4j/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v6, v1, :cond_d

    .line 120
    const-string v1, "?>"

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 122
    :cond_d
    const-string p1, "Misshaped tag"

    .end local p1           #arrayForm:Z
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 128
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    :cond_e
    instance-of v1, v6, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 129
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1           #arrayForm:Z
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Bad tagName \'"

    .end local p2           #ja:Ltwitter4j/org/json/JSONArray;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 131
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    .restart local p2       #ja:Ltwitter4j/org/json/JSONArray;
    :cond_f
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 132
    new-instance v3, Ltwitter4j/org/json/JSONArray;

    .end local v3           #newja:Ltwitter4j/org/json/JSONArray;
    invoke-direct {v3}, Ltwitter4j/org/json/JSONArray;-><init>()V

    .line 133
    .restart local v3       #newja:Ltwitter4j/org/json/JSONArray;
    new-instance v4, Ltwitter4j/org/json/JSONObject;

    .end local v4           #newjo:Ltwitter4j/org/json/JSONObject;
    invoke-direct {v4}, Ltwitter4j/org/json/JSONObject;-><init>()V

    .line 134
    .restart local v4       #newjo:Ltwitter4j/org/json/JSONObject;
    if-eqz p1, :cond_12

    .line 135
    invoke-virtual {v3, v5}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 136
    if-eqz p2, :cond_10

    .line 137
    invoke-virtual {p2, v3}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 145
    :cond_10
    :goto_3
    const/4 v1, 0x0

    .line 147
    .end local v6           #token:Ljava/lang/Object;
    :goto_4
    if-nez v1, :cond_11

    .line 148
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 150
    :cond_11
    if-nez v1, :cond_13

    .line 151
    const-string p1, "Misshaped tag"

    .end local p1           #arrayForm:Z
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 140
    .restart local v6       #token:Ljava/lang/Object;
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    :cond_12
    const-string v1, "tagName"

    invoke-virtual {v4, v1, v5}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 141
    if-eqz p2, :cond_10

    .line 142
    invoke-virtual {p2, v4}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    goto :goto_3

    .line 153
    .end local v6           #token:Ljava/lang/Object;
    :cond_13
    instance-of v6, v1, Ljava/lang/String;

    if-nez v6, :cond_15

    .line 175
    if-eqz p1, :cond_14

    invoke-virtual {v4}, Ltwitter4j/org/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_14

    .line 176
    invoke-virtual {v3, v4}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    .line 181
    :cond_14
    sget-object v6, Ltwitter4j/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v6, :cond_1c

    .line 182
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Ltwitter4j/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v6, :cond_1a

    .line 183
    const-string p1, "Misshaped tag"

    .end local p1           #arrayForm:Z
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 159
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    :cond_15
    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, attribute:Ljava/lang/String;
    if-nez p1, :cond_17

    const-string v6, "tagName"

    if-eq v1, v6, :cond_16

    const-string v6, "childNode"

    if-ne v1, v6, :cond_17

    .line 161
    :cond_16
    const-string p1, "Reserved attribute."

    .end local p1           #arrayForm:Z
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 163
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    :cond_17
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 164
    .restart local v6       #token:Ljava/lang/Object;
    sget-object v7, Ltwitter4j/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v6, v7, :cond_19

    .line 165
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    .line 166
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_18

    .line 167
    const-string p1, "Missing value"

    .end local p1           #arrayForm:Z
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 169
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    :cond_18
    check-cast v6, Ljava/lang/String;

    .end local v6           #token:Ljava/lang/Object;
    invoke-static {v6}, Ltwitter4j/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ltwitter4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 170
    const/4 v1, 0x0

    .local v1, token:Ljava/lang/Object;
    goto :goto_4

    .line 172
    .local v1, attribute:Ljava/lang/String;
    .restart local v6       #token:Ljava/lang/Object;
    :cond_19
    const-string v7, ""

    invoke-virtual {v4, v1, v7}, Ltwitter4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    move-object v1, v6

    .end local v6           #token:Ljava/lang/Object;
    .local v1, token:Ljava/lang/Object;
    goto :goto_4

    .line 185
    .end local v1           #token:Ljava/lang/Object;
    :cond_1a
    if-nez p2, :cond_0

    .line 186
    if-eqz p1, :cond_1b

    move-object v1, v5

    .end local v5           #tagName:Ljava/lang/String;
    .local v1, tagName:Ljava/lang/String;
    move-object p2, v4

    .end local v4           #newjo:Ltwitter4j/org/json/JSONObject;
    .local p2, newjo:Ltwitter4j/org/json/JSONObject;
    move-object p1, v3

    .end local v3           #newja:Ltwitter4j/org/json/JSONArray;
    .local p1, newja:Ltwitter4j/org/json/JSONArray;
    move-object p0, v2

    .end local v2           #closeTag:Ljava/lang/String;
    .local p0, closeTag:Ljava/lang/String;
    move-object v2, v3

    .line 187
    goto/16 :goto_1

    .end local v1           #tagName:Ljava/lang/String;
    .restart local v2       #closeTag:Ljava/lang/String;
    .restart local v3       #newja:Ltwitter4j/org/json/JSONArray;
    .restart local v4       #newjo:Ltwitter4j/org/json/JSONObject;
    .restart local v5       #tagName:Ljava/lang/String;
    .local p0, x:Ltwitter4j/org/json/XMLTokener;
    .local p1, arrayForm:Z
    .local p2, ja:Ltwitter4j/org/json/JSONArray;
    :cond_1b
    move-object v1, v5

    .end local v5           #tagName:Ljava/lang/String;
    .restart local v1       #tagName:Ljava/lang/String;
    move-object p2, v4

    .end local v4           #newjo:Ltwitter4j/org/json/JSONObject;
    .local p2, newjo:Ltwitter4j/org/json/JSONObject;
    move-object p1, v3

    .end local v3           #newja:Ltwitter4j/org/json/JSONArray;
    .local p1, newja:Ltwitter4j/org/json/JSONArray;
    move-object p0, v2

    .end local v2           #closeTag:Ljava/lang/String;
    .local p0, closeTag:Ljava/lang/String;
    move-object v2, v4

    .line 189
    goto/16 :goto_1

    .line 196
    .end local v1           #tagName:Ljava/lang/String;
    .restart local v2       #closeTag:Ljava/lang/String;
    .restart local v3       #newja:Ltwitter4j/org/json/JSONArray;
    .restart local v4       #newjo:Ltwitter4j/org/json/JSONObject;
    .restart local v5       #tagName:Ljava/lang/String;
    .local p0, x:Ltwitter4j/org/json/XMLTokener;
    .local p1, arrayForm:Z
    .local p2, ja:Ltwitter4j/org/json/JSONArray;
    :cond_1c
    sget-object v2, Ltwitter4j/org/json/XML;->GT:Ljava/lang/Character;

    .end local v2           #closeTag:Ljava/lang/String;
    if-eq v1, v2, :cond_1d

    .line 197
    const-string p1, "Misshaped tag"

    .end local p1           #arrayForm:Z
    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 199
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    :cond_1d
    invoke-static {p0, p1, v3}, Ltwitter4j/org/json/JSONML;->parse(Ltwitter4j/org/json/XMLTokener;ZLtwitter4j/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .local v1, closeTag:Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 201
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 202
    new-instance p1, Ljava/lang/StringBuffer;

    .end local p1           #arrayForm:Z
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Mismatched \'"

    .end local p2           #ja:Ltwitter4j/org/json/JSONArray;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\' and \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object p0

    .end local p0           #x:Ltwitter4j/org/json/XMLTokener;
    throw p0

    .line 205
    .restart local p0       #x:Ltwitter4j/org/json/XMLTokener;
    .restart local p1       #arrayForm:Z
    .restart local p2       #ja:Ltwitter4j/org/json/JSONArray;
    :cond_1e
    const/4 v2, 0x0

    .line 206
    .end local v5           #tagName:Ljava/lang/String;
    .local v2, tagName:Ljava/lang/String;
    if-nez p1, :cond_1f

    invoke-virtual {v3}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1f

    .line 207
    const-string v5, "childNodes"

    invoke-virtual {v4, v5, v3}, Ltwitter4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 209
    :cond_1f
    if-nez p2, :cond_23

    .line 210
    if-eqz p1, :cond_20

    move-object p2, v4

    .end local v4           #newjo:Ltwitter4j/org/json/JSONObject;
    .local p2, newjo:Ltwitter4j/org/json/JSONObject;
    move-object p1, v3

    .end local v3           #newja:Ltwitter4j/org/json/JSONArray;
    .local p1, newja:Ltwitter4j/org/json/JSONArray;
    move-object p0, v1

    .end local v1           #closeTag:Ljava/lang/String;
    .local p0, closeTag:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #tagName:Ljava/lang/String;
    .local v1, tagName:Ljava/lang/String;
    move-object v2, v3

    .line 211
    goto/16 :goto_1

    .local v1, closeTag:Ljava/lang/String;
    .restart local v2       #tagName:Ljava/lang/String;
    .restart local v3       #newja:Ltwitter4j/org/json/JSONArray;
    .restart local v4       #newjo:Ltwitter4j/org/json/JSONObject;
    .local p0, x:Ltwitter4j/org/json/XMLTokener;
    .local p1, arrayForm:Z
    .local p2, ja:Ltwitter4j/org/json/JSONArray;
    :cond_20
    move-object p2, v4

    .end local v4           #newjo:Ltwitter4j/org/json/JSONObject;
    .local p2, newjo:Ltwitter4j/org/json/JSONObject;
    move-object p1, v3

    .end local v3           #newja:Ltwitter4j/org/json/JSONArray;
    .local p1, newja:Ltwitter4j/org/json/JSONArray;
    move-object p0, v1

    .end local v1           #closeTag:Ljava/lang/String;
    .local p0, closeTag:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #tagName:Ljava/lang/String;
    .local v1, tagName:Ljava/lang/String;
    move-object v2, v4

    .line 213
    goto/16 :goto_1

    .line 220
    .local v1, token:Ljava/lang/Object;
    .local v2, closeTag:Ljava/lang/String;
    .restart local v3       #newja:Ltwitter4j/org/json/JSONArray;
    .restart local v4       #newjo:Ltwitter4j/org/json/JSONObject;
    .restart local v5       #tagName:Ljava/lang/String;
    .local p0, x:Ltwitter4j/org/json/XMLTokener;
    .local p1, arrayForm:Z
    .local p2, ja:Ltwitter4j/org/json/JSONArray;
    :cond_21
    if-eqz p2, :cond_0

    .line 221
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_22

    check-cast v1, Ljava/lang/String;

    .end local v1           #token:Ljava/lang/Object;
    invoke-static {v1}, Ltwitter4j/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_22
    invoke-virtual {p2, v1}, Ltwitter4j/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/org/json/JSONArray;

    goto/16 :goto_0

    .end local v5           #tagName:Ljava/lang/String;
    .local v1, closeTag:Ljava/lang/String;
    .local v2, tagName:Ljava/lang/String;
    :cond_23
    move-object v5, v2

    .end local v2           #tagName:Ljava/lang/String;
    .restart local v5       #tagName:Ljava/lang/String;
    move-object v2, v1

    .end local v1           #closeTag:Ljava/lang/String;
    .local v2, closeTag:Ljava/lang/String;
    goto/16 :goto_0

    .end local v2           #closeTag:Ljava/lang/String;
    .restart local v1       #closeTag:Ljava/lang/String;
    :cond_24
    move-object v2, v1

    .end local v1           #closeTag:Ljava/lang/String;
    .restart local v2       #closeTag:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static toJSONArray(Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ltwitter4j/org/json/XMLTokener;

    invoke-direct {v0, p0}, Ltwitter4j/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltwitter4j/org/json/JSONML;->toJSONArray(Ltwitter4j/org/json/XMLTokener;)Ltwitter4j/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ltwitter4j/org/json/XMLTokener;)Ltwitter4j/org/json/JSONArray;
    .locals 2
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltwitter4j/org/json/JSONML;->parse(Ltwitter4j/org/json/XMLTokener;ZLtwitter4j/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/org/json/JSONArray;

    return-object p0
.end method

.method public static toJSONObject(Ljava/lang/String;)Ltwitter4j/org/json/JSONObject;
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ltwitter4j/org/json/XMLTokener;

    invoke-direct {v0, p0}, Ltwitter4j/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltwitter4j/org/json/JSONML;->toJSONObject(Ltwitter4j/org/json/XMLTokener;)Ltwitter4j/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ltwitter4j/org/json/XMLTokener;)Ltwitter4j/org/json/JSONObject;
    .locals 2
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltwitter4j/org/json/JSONML;->parse(Ltwitter4j/org/json/XMLTokener;ZLtwitter4j/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/org/json/JSONObject;

    return-object p0
.end method

.method public static toString(Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;
    .locals 15
    .parameter "ja"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3c

    const/16 v13, 0x2f

    const/16 v12, 0x22

    const/16 v11, 0x3e

    .line 311
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ltwitter4j/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, tagName:Ljava/lang/String;
    invoke-static {v8}, Ltwitter4j/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 319
    invoke-static {v8}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 320
    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ltwitter4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 324
    .local v1, e:Ljava/lang/Object;
    instance-of v10, v1, Ltwitter4j/org/json/JSONObject;

    if-eqz v10, :cond_1

    .line 325
    const/4 v2, 0x2

    .line 326
    .local v2, i:I
    move-object v0, v1

    check-cast v0, Ltwitter4j/org/json/JSONObject;

    move-object v3, v0

    .line 330
    .local v3, jo:Ltwitter4j/org/json/JSONObject;
    invoke-virtual {v3}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 331
    .local v5, keys:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 332
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, k:Ljava/lang/String;
    invoke-static {v4}, Ltwitter4j/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3, v4}, Ltwitter4j/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, v:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 336
    const/16 v10, 0x20

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 337
    invoke-static {v4}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const/16 v10, 0x3d

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    invoke-static {v9}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 345
    .end local v2           #i:I
    .end local v3           #jo:Ltwitter4j/org/json/JSONObject;
    .end local v4           #k:Ljava/lang/String;
    .end local v5           #keys:Ljava/util/Iterator;
    .end local v9           #v:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    .line 350
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v6

    .line 351
    .local v6, length:I
    if-lt v2, v6, :cond_3

    .line 352
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 355
    :cond_3
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    :cond_4
    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 358
    add-int/lit8 v2, v2, 0x1

    .line 359
    if-eqz v1, :cond_5

    .line 360
    instance-of v10, v1, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 361
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_5
    :goto_2
    if-lt v2, v6, :cond_4

    .line 369
    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 362
    :cond_6
    instance-of v10, v1, Ltwitter4j/org/json/JSONObject;

    if-eqz v10, :cond_7

    .line 363
    move-object v0, v1

    check-cast v0, Ltwitter4j/org/json/JSONObject;

    move-object v10, v0

    invoke-static {v10}, Ltwitter4j/org/json/JSONML;->toString(Ltwitter4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 364
    :cond_7
    instance-of v10, v1, Ltwitter4j/org/json/JSONArray;

    if-eqz v10, :cond_5

    .line 365
    move-object v0, v1

    check-cast v0, Ltwitter4j/org/json/JSONArray;

    move-object v10, v0

    invoke-static {v10}, Ltwitter4j/org/json/JSONML;->toString(Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static toString(Ltwitter4j/org/json/JSONObject;)Ljava/lang/String;
    .locals 15
    .parameter "jo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3c

    const/16 v12, 0x2f

    const/16 v11, 0x22

    const/16 v10, 0x3e

    const-string v14, "childNodes"

    .line 387
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    .local v6, sb:Ljava/lang/StringBuffer;
    const-string v9, "tagName"

    invoke-virtual {p0, v9}, Ltwitter4j/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, tagName:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 401
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 453
    :goto_0
    return-object v9

    .line 403
    :cond_0
    invoke-static {v7}, Ltwitter4j/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 404
    invoke-static {v7}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 411
    .local v4, keys:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 412
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, k:Ljava/lang/String;
    const-string v9, "tagName"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "childNodes"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 414
    invoke-static {v3}, Ltwitter4j/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, v:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 417
    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    invoke-static {v3}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    invoke-static {v8}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 429
    .end local v3           #k:Ljava/lang/String;
    .end local v8           #v:Ljava/lang/String;
    :cond_2
    const-string v9, "childNodes"

    invoke-virtual {p0, v14}, Ltwitter4j/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Ltwitter4j/org/json/JSONArray;

    move-result-object v2

    .line 430
    .local v2, ja:Ltwitter4j/org/json/JSONArray;
    if-nez v2, :cond_3

    .line 431
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 453
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 434
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v2}, Ltwitter4j/org/json/JSONArray;->length()I

    move-result v5

    .line 436
    .local v5, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v5, :cond_7

    .line 437
    invoke-virtual {v2, v1}, Ltwitter4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, e:Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 439
    instance-of v9, v0, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    .end local v0           #e:Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 441
    .restart local v0       #e:Ljava/lang/Object;
    :cond_5
    instance-of v9, v0, Ltwitter4j/org/json/JSONObject;

    if-eqz v9, :cond_6

    .line 442
    check-cast v0, Ltwitter4j/org/json/JSONObject;

    .end local v0           #e:Ljava/lang/Object;
    invoke-static {v0}, Ltwitter4j/org/json/JSONML;->toString(Ltwitter4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 443
    .restart local v0       #e:Ljava/lang/Object;
    :cond_6
    instance-of v9, v0, Ltwitter4j/org/json/JSONArray;

    if-eqz v9, :cond_4

    .line 444
    check-cast v0, Ltwitter4j/org/json/JSONArray;

    .end local v0           #e:Ljava/lang/Object;
    invoke-static {v0}, Ltwitter4j/org/json/JSONML;->toString(Ltwitter4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 448
    :cond_7
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
