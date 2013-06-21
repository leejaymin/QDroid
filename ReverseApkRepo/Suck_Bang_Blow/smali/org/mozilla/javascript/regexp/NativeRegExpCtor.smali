.class Lorg/mozilla/javascript/regexp/NativeRegExpCtor;
.super Lorg/mozilla/javascript/BaseFunction;
.source "NativeRegExpCtor.java"


# static fields
.field private static final DOLLAR_ID_BASE:I = 0xc

.field private static final Id_AMPERSAND:I = 0x6

.field private static final Id_BACK_QUOTE:I = 0xa

.field private static final Id_DOLLAR_1:I = 0xd

.field private static final Id_DOLLAR_2:I = 0xe

.field private static final Id_DOLLAR_3:I = 0xf

.field private static final Id_DOLLAR_4:I = 0x10

.field private static final Id_DOLLAR_5:I = 0x11

.field private static final Id_DOLLAR_6:I = 0x12

.field private static final Id_DOLLAR_7:I = 0x13

.field private static final Id_DOLLAR_8:I = 0x14

.field private static final Id_DOLLAR_9:I = 0x15

.field private static final Id_PLUS:I = 0x8

.field private static final Id_QUOTE:I = 0xc

.field private static final Id_STAR:I = 0x2

.field private static final Id_UNDERSCORE:I = 0x4

.field private static final Id_input:I = 0x3

.field private static final Id_lastMatch:I = 0x5

.field private static final Id_lastParen:I = 0x7

.field private static final Id_leftContext:I = 0x9

.field private static final Id_multiline:I = 0x1

.field private static final Id_rightContext:I = 0xb

.field private static final MAX_INSTANCE_ID:I = 0x15

.field static final serialVersionUID:J = -0x4f90e148c40815ceL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 64
    return-void
.end method

.method private static getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 96
    .local v0, cx:Lorg/mozilla/javascript/Context;
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    check-cast v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    return-object v0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    array-length v0, p4

    if-lez v0, :cond_1

    aget-object v0, p4, v2

    instance-of v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_1

    array-length v0, p4

    if-eq v0, v1, :cond_0

    aget-object v0, p4, v1

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    aget-object v0, p4, v2

    .line 81
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 87
    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>()V

    .line 88
    .local v0, re:Lorg/mozilla/javascript/regexp/NativeRegExp;
    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 89
    invoke-static {v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 90
    return-object v0
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x24

    const/4 v5, 0x0

    .line 145
    const/4 v3, 0x0

    .local v3, id:I
    const/4 v0, 0x0

    .line 146
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 177
    :cond_1
    :goto_1
    if-nez v3, :cond_4

    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v4

    .line 192
    :goto_2
    return v4

    .line 147
    :pswitch_1
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 148
    :sswitch_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    .line 149
    :sswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0xc

    goto :goto_1

    .line 150
    :sswitch_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    .line 151
    :sswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    .line 152
    :sswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0xd

    goto :goto_1

    .line 153
    :sswitch_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0xe

    goto :goto_1

    .line 154
    :sswitch_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0xf

    goto :goto_1

    .line 155
    :sswitch_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0x10

    goto :goto_1

    .line 156
    :sswitch_8
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0x11

    goto :goto_1

    .line 157
    :sswitch_9
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0x12

    goto :goto_1

    .line 158
    :sswitch_a
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0x13

    goto :goto_1

    .line 159
    :sswitch_b
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0x14

    goto :goto_1

    .line 160
    :sswitch_c
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_1

    .line 161
    :sswitch_d
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_1

    .line 162
    :sswitch_e
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_1

    .line 164
    :pswitch_2
    const-string v0, "input"

    const/4 v3, 0x3

    goto/16 :goto_0

    .line 165
    :pswitch_3
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 166
    .local v2, c:I
    const/16 v4, 0x4d

    if-ne v2, v4, :cond_2

    const-string v0, "lastMatch"

    const/4 v3, 0x5

    goto/16 :goto_0

    .line 167
    :cond_2
    const/16 v4, 0x50

    if-ne v2, v4, :cond_3

    const-string v0, "lastParen"

    const/4 v3, 0x7

    goto/16 :goto_0

    .line 168
    :cond_3
    const/16 v4, 0x69

    if-ne v2, v4, :cond_0

    const-string v0, "multiline"

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 170
    .end local v2           #c:I
    :pswitch_4
    const-string v0, "leftContext"

    const/16 v3, 0x9

    goto/16 :goto_0

    .line 171
    :pswitch_5
    const-string v0, "rightContext"

    const/16 v3, 0xb

    goto/16 :goto_0

    .line 180
    :cond_4
    packed-switch v3, :pswitch_data_1

    .line 188
    const/4 v1, 0x5

    .line 192
    .local v1, attr:I
    :goto_3
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->instanceIdInfo(II)I

    move-result v4

    goto/16 :goto_2

    .line 185
    .end local v1           #attr:I
    :pswitch_6
    const/4 v1, 0x4

    .line 186
    .restart local v1       #attr:I
    goto :goto_3

    .line 146
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x27 -> :sswitch_1
        0x2a -> :sswitch_2
        0x2b -> :sswitch_3
        0x31 -> :sswitch_4
        0x32 -> :sswitch_5
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
        0x36 -> :sswitch_9
        0x37 -> :sswitch_a
        0x38 -> :sswitch_b
        0x39 -> :sswitch_c
        0x5f -> :sswitch_d
        0x60 -> :sswitch_e
    .end sparse-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "RegExp"

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 200
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v3

    sub-int v1, p1, v3

    .line 201
    .local v1, shifted:I
    if-gt v5, v1, :cond_0

    const/16 v3, 0x15

    if-gt v1, v3, :cond_0

    .line 202
    packed-switch v1, :pswitch_data_0

    .line 222
    const/16 v3, 0xc

    sub-int v3, v1, v3

    sub-int v2, v3, v5

    .line 223
    .local v2, substring_number:I
    const/4 v3, 0x2

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/16 v4, 0x24

    aput-char v4, v0, v3

    add-int/lit8 v3, v2, 0x31

    int-to-char v3, v3

    aput-char v3, v0, v5

    .line 224
    .local v0, buf:[C
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 226
    .end local v0           #buf:[C
    .end local v2           #substring_number:I
    :goto_0
    return-object v3

    .line 203
    :pswitch_0
    const-string v3, "multiline"

    goto :goto_0

    .line 204
    :pswitch_1
    const-string v3, "$*"

    goto :goto_0

    .line 206
    :pswitch_2
    const-string v3, "input"

    goto :goto_0

    .line 207
    :pswitch_3
    const-string v3, "$_"

    goto :goto_0

    .line 209
    :pswitch_4
    const-string v3, "lastMatch"

    goto :goto_0

    .line 210
    :pswitch_5
    const-string v3, "$&"

    goto :goto_0

    .line 212
    :pswitch_6
    const-string v3, "lastParen"

    goto :goto_0

    .line 213
    :pswitch_7
    const-string v3, "$+"

    goto :goto_0

    .line 215
    :pswitch_8
    const-string v3, "leftContext"

    goto :goto_0

    .line 216
    :pswitch_9
    const-string v3, "$`"

    goto :goto_0

    .line 218
    :pswitch_a
    const-string v3, "rightContext"

    goto :goto_0

    .line 219
    :pswitch_b
    const-string v3, "$\'"

    goto :goto_0

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 232
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v4

    sub-int v1, p1, v4

    .line 233
    .local v1, shifted:I
    if-gt v5, v1, :cond_1

    const/16 v4, 0x15

    if-gt v1, v4, :cond_1

    .line 234
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object v0

    .line 236
    .local v0, impl:Lorg/mozilla/javascript/regexp/RegExpImpl;
    packed-switch v1, :pswitch_data_0

    .line 269
    const/16 v4, 0xc

    sub-int v4, v1, v4

    sub-int v3, v4, v5

    .line 270
    .local v3, substring_number:I
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v2

    .line 274
    .end local v3           #substring_number:I
    :goto_0
    if-nez v2, :cond_0

    const-string v4, ""

    .line 276
    .end local v0           #impl:Lorg/mozilla/javascript/regexp/RegExpImpl;
    :goto_1
    return-object v4

    .line 239
    .restart local v0       #impl:Lorg/mozilla/javascript/regexp/RegExpImpl;
    :pswitch_0
    iget-boolean v4, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 243
    :pswitch_1
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 244
    .local v2, stringResult:Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v2           #stringResult:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 249
    .local v2, stringResult:Lorg/mozilla/javascript/regexp/SubString;
    goto :goto_0

    .line 253
    .end local v2           #stringResult:Lorg/mozilla/javascript/regexp/SubString;
    :pswitch_3
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    .line 254
    .restart local v2       #stringResult:Lorg/mozilla/javascript/regexp/SubString;
    goto :goto_0

    .line 258
    .end local v2           #stringResult:Lorg/mozilla/javascript/regexp/SubString;
    :pswitch_4
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 259
    .restart local v2       #stringResult:Lorg/mozilla/javascript/regexp/SubString;
    goto :goto_0

    .line 263
    .end local v2           #stringResult:Lorg/mozilla/javascript/regexp/SubString;
    :pswitch_5
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 264
    .restart local v2       #stringResult:Lorg/mozilla/javascript/regexp/SubString;
    goto :goto_0

    .line 274
    .end local v2           #stringResult:Lorg/mozilla/javascript/regexp/SubString;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 276
    .end local v0           #impl:Lorg/mozilla/javascript/regexp/RegExpImpl;
    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected getMaxInstanceId()I
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    return v0
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 4
    .parameter "id"
    .parameter "value"

    .prologue
    .line 282
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v2

    sub-int v0, p1, v2

    .line 283
    .local v0, shifted:I
    packed-switch v0, :pswitch_data_0

    .line 304
    const/16 v2, 0xc

    sub-int v2, v0, v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .line 305
    .local v1, substring_number:I
    if-ltz v1, :cond_0

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 310
    .end local v1           #substring_number:I
    :goto_0
    :pswitch_0
    return-void

    .line 286
    :pswitch_1
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object v2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    goto :goto_0

    .line 291
    :pswitch_2
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object v2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    goto :goto_0

    .line 309
    .restart local v1       #substring_number:I
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdValue(ILjava/lang/Object;)V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
