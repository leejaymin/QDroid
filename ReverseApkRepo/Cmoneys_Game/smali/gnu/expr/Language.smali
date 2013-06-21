.class public abstract Lgnu/expr/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final FUNCTION_NAMESPACE:I = 0x2

.field public static final NAMESPACE_PREFIX_NAMESPACE:I = 0x4

.field public static final PARSE_IMMEDIATE:I = 0x1

.field public static final PARSE_ONE_LINE:I = 0x2

.field public static final PARSE_PROLOG:I = 0x4

.field public static final VALUE_NAMESPACE:I = 0x1

.field protected static final current:Lgnu/mapping/ThreadLocation;

.field static envCounter:I

.field protected static env_counter:I

.field static languages:[[Ljava/lang/String;

.field public static requirePedantic:Z


# instance fields
.field protected environ:Lgnu/mapping/Environment;

.field protected userEnv:Lgnu/mapping/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 26
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "language"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Language;->current:Lgnu/mapping/ThreadLocation;

    .line 32
    invoke-static {}, Lgnu/expr/BuiltinEnvironment;->getInstance()Lgnu/expr/BuiltinEnvironment;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/Environment;->setGlobal(Lgnu/mapping/Environment;)V

    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "scheme"

    aput-object v2, v1, v5

    const-string v2, ".scm"

    aput-object v2, v1, v4

    const-string v2, ".sc"

    aput-object v2, v1, v6

    const-string v2, "kawa.standard.Scheme"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "krl"

    aput-object v2, v1, v5

    const-string v2, ".krl"

    aput-object v2, v1, v4

    const-string v2, "gnu.kawa.brl.BRL"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "brl"

    aput-object v2, v1, v5

    const-string v2, ".brl"

    aput-object v2, v1, v4

    const-string v2, "gnu.kawa.brl.BRL"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "emacs"

    aput-object v2, v1, v5

    const-string v2, "elisp"

    aput-object v2, v1, v4

    const-string v2, "emacs-lisp"

    aput-object v2, v1, v6

    const-string v2, ".el"

    aput-object v2, v1, v7

    const-string v2, "gnu.jemacs.lang.ELisp"

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "xquery"

    aput-object v2, v1, v5

    const-string v2, ".xquery"

    aput-object v2, v1, v4

    const-string v2, ".xq"

    aput-object v2, v1, v6

    const-string v2, ".xql"

    aput-object v2, v1, v7

    const-string v2, "gnu.xquery.lang.XQuery"

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "q2"

    aput-object v3, v2, v5

    const-string v3, ".q2"

    aput-object v3, v2, v4

    const-string v3, "gnu.q2.lang.Q2"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "xslt"

    aput-object v3, v2, v5

    const-string v3, "xsl"

    aput-object v3, v2, v4

    const-string v3, ".xsl"

    aput-object v3, v2, v6

    const-string v3, "gnu.kawa.xslt.XSLT"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "commonlisp"

    aput-object v3, v2, v5

    const-string v3, "common-lisp"

    aput-object v3, v2, v4

    const-string v3, "clisp"

    aput-object v3, v2, v6

    const-string v3, "lisp"

    aput-object v3, v2, v7

    const-string v3, ".lisp"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, ".lsp"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ".cl"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "gnu.commonlisp.lang.CommonLisp"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    .line 878
    sput v5, Lgnu/expr/Language;->env_counter:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-static {}, Lgnu/expr/KawaConvert;->getInstance()Lgnu/lists/Convert;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/Convert;->setInstance(Lgnu/lists/Convert;)V

    .line 208
    return-void
.end method

.method public static detect(Lgnu/mapping/InPort;)Lgnu/expr/Language;
    .locals 2
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lgnu/mapping/InPort;->mark(I)V

    .line 113
    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/InPort;->readLine(Ljava/lang/StringBuffer;C)V

    .line 114
    invoke-virtual {p0}, Lgnu/mapping/InPort;->reset()V

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Language;->detect(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v1

    return-object v1
.end method

.method public static detect(Ljava/io/InputStream;)Lgnu/expr/Language;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc8

    .line 88
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 102
    :goto_0
    return-object v2

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v1, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 94
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v3, :cond_2

    .line 101
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Language;->detect(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 97
    .local v0, c:I
    if-ltz v0, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 99
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static detect(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 13
    .parameter "line"

    .prologue
    const/16 v11, 0x3b

    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "scheme"

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, str:Ljava/lang/String;
    const-string v6, "kawa:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, k:I
    if-ltz v2, :cond_1

    .line 129
    add-int/lit8 v0, v2, 0x5

    .line 130
    .local v0, i:I
    move v1, v0

    .line 132
    .local v1, j:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    if-le v1, v0, :cond_1

    .line 136
    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, w:Ljava/lang/String;
    invoke-static {v5}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v3

    .line 138
    .local v3, lang:Lgnu/expr/Language;
    if-eqz v3, :cond_1

    move-object v6, v3

    .line 158
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #lang:Lgnu/expr/Language;
    .end local v5           #w:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 143
    :cond_1
    const-string v6, "-*- scheme -*-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 144
    const-string v6, "scheme"

    invoke-static {v12}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    goto :goto_1

    .line 145
    :cond_2
    const-string v6, "-*- xquery -*-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 146
    const-string v6, "xquery"

    invoke-static {v6}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    goto :goto_1

    .line 147
    :cond_3
    const-string v6, "-*- emacs-lisp -*-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    .line 148
    const-string v6, "elisp"

    invoke-static {v6}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    goto :goto_1

    .line 149
    :cond_4
    const-string v6, "-*- common-lisp -*-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    const-string v6, "-*- lisp -*-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 151
    :cond_5
    const-string v6, "common-lisp"

    invoke-static {v6}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    goto :goto_1

    .line 153
    :cond_6
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_7

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_8

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_9

    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "xquery "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 155
    :cond_8
    const-string v6, "xquery"

    invoke-static {v6}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    goto :goto_1

    .line 156
    :cond_9
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_a

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_a

    .line 157
    const-string v6, "scheme"

    invoke-static {v12}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    goto :goto_1

    .line 158
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public static getDefaultLanguage()Lgnu/expr/Language;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lgnu/expr/Language;->current:Lgnu/mapping/ThreadLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Language;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 9
    .parameter "name"

    .prologue
    .line 177
    sget-object v7, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v4, v7

    .line 178
    .local v4, langCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 180
    sget-object v7, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    aget-object v6, v7, v1

    .line 181
    .local v6, names:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    sub-int v5, v7, v8

    .line 182
    .local v5, nameCount:I
    move v2, v5

    .local v2, j:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 184
    if-eqz p0, :cond_1

    aget-object v7, v6, v2

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    :cond_1
    :try_start_0
    aget-object v7, v6, v5

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 198
    .local v3, langClass:Ljava/lang/Class;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7, v3}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lgnu/expr/Language;

    move-result-object v7

    .line 202
    .end local v2           #j:I
    .end local v3           #langClass:Ljava/lang/Class;
    .end local v5           #nameCount:I
    .end local v6           #names:[Ljava/lang/String;
    :goto_1
    return-object v7

    .line 191
    .restart local v2       #j:I
    .restart local v5       #nameCount:I
    .restart local v6       #names:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 178
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v2           #j:I
    .end local v5           #nameCount:I
    .end local v6           #names:[Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;)Lgnu/expr/Language;
    .locals 9
    .parameter "langName"
    .parameter "langClass"

    .prologue
    .line 215
    const/4 v6, 0x0

    :try_start_0
    new-array v0, v6, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .local v0, args:[Ljava/lang/Class;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, capitalizedName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Instance"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, methodName:Ljava/lang/String;
    invoke-virtual {p1, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 229
    .end local v1           #capitalizedName:Ljava/lang/String;
    .end local v4           #methodName:Ljava/lang/String;
    .local v3, method:Ljava/lang/reflect/Method;
    :goto_0
    const/4 v6, 0x0

    :try_start_2
    sget-object v7, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Language;

    return-object p0

    .line 224
    .end local v3           #method:Ljava/lang/reflect/Method;
    .restart local p0
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 226
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "getInstance"

    invoke-virtual {p1, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .restart local v3       #method:Ljava/lang/reflect/Method;
    goto :goto_0

    .line 231
    .end local v0           #args:[Ljava/lang/Class;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local p0
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 233
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 235
    .restart local p0
    instance-of v6, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_0

    .line 236
    check-cast v2, Ljava/lang/reflect/InvocationTargetException;

    .end local v2           #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    .line 240
    .local v5, th:Ljava/lang/Throwable;
    :goto_1
    new-instance v6, Lgnu/mapping/WrappedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInstance for \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 238
    .end local v5           #th:Ljava/lang/Throwable;
    .restart local v2       #ex:Ljava/lang/Exception;
    :cond_0
    move-object v5, v2

    .restart local v5       #th:Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public static getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 3
    .parameter "filename"

    .prologue
    .line 163
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 164
    .local v0, dot:I
    if-lez v0, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v1

    .line 167
    .local v1, lang:Lgnu/expr/Language;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 170
    .end local v1           #lang:Lgnu/expr/Language;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLanguages()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    return-object v0
.end method

.method public static registerLanguage([Ljava/lang/String;)V
    .locals 4
    .parameter "langMapping"

    .prologue
    const/4 v3, 0x0

    .line 76
    sget-object v1, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[Ljava/lang/String;

    .line 77
    .local v0, newLangs:[[Ljava/lang/String;
    sget-object v1, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    sget-object v2, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-object p0, v0, v1

    .line 79
    sput-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static setDefaultLanguage(Lgnu/expr/Language;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 36
    sget-object v0, Lgnu/expr/Language;->current:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static declared-synchronized setDefaults(Lgnu/expr/Language;)V
    .locals 3
    .parameter "lang"

    .prologue
    .line 763
    const-class v0, Lgnu/expr/Language;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    .line 764
    sget-object v1, Lgnu/expr/Language;->current:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v1, p0}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 768
    invoke-static {}, Lgnu/mapping/Environment;->getGlobal()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {}, Lgnu/expr/BuiltinEnvironment;->getInstance()Lgnu/expr/BuiltinEnvironment;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 769
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v1}, Lgnu/mapping/Environment;->setGlobal(Lgnu/mapping/Environment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    :cond_0
    monitor-exit v0

    return-void

    .line 763
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 530
    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 533
    .local v0, t:Lgnu/bytecode/Type;
    if-nez v0, :cond_0

    move-object v1, v4

    .line 541
    .end local v0           #t:Lgnu/bytecode/Type;
    :goto_0
    return-object v1

    .line 535
    .restart local v0       #t:Lgnu/bytecode/Type;
    :cond_0
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 541
    goto :goto_0

    .line 537
    .end local v0           #t:Lgnu/bytecode/Type;
    :cond_1
    invoke-static {p0}, Lgnu/bytecode/Type;->isValidJavaTypeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 538
    invoke-static {p0}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .restart local v0       #t:Lgnu/bytecode/Type;
    goto :goto_1

    .end local v0           #t:Lgnu/bytecode/Type;
    :cond_2
    move-object v1, v4

    .line 540
    goto :goto_0
.end method


# virtual methods
.method public final asType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "spec"

    .prologue
    .line 573
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v0

    .line 574
    .local v0, type:Lgnu/bytecode/Type;
    if-nez v0, :cond_0

    check-cast p1, Lgnu/bytecode/Type;

    .end local p1
    move-object v1, p1

    :goto_0
    return-object v1

    .restart local p1
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public booleanObject(Z)Ljava/lang/Object;
    .locals 1
    .parameter "b"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "clas"
    .parameter "obj"

    .prologue
    .line 748
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public coerceToObject(I)Ljava/lang/Object;
    .locals 1
    .parameter "val"

    .prologue
    .line 758
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "clas"
    .parameter "obj"

    .prologue
    .line 753
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;
    .locals 17
    .parameter "mod"
    .parameter "fvalue"
    .parameter "fld"

    .prologue
    .line 644
    invoke-virtual/range {p3 .. p3}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 645
    .local v7, fname:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 646
    .local v8, ftype:Lgnu/bytecode/Type;
    sget-object v15, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v15}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v9

    .line 651
    .local v9, isAlias:Z
    const/4 v4, 0x0

    .line 652
    .local v4, externalAccess:Z
    const-string v15, "$instance"

    invoke-virtual {v7, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    .local v11, isImportedInstance:Z
    if-eqz v11, :cond_5

    .line 653
    move-object v6, v7

    .line 666
    .end local p2
    :goto_0
    instance-of v15, v6, Ljava/lang/String;

    if-eqz v15, :cond_e

    .line 668
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleExp;->getNamespaceUri()Ljava/lang/String;

    move-result-object v14

    .line 669
    .local v14, uri:Ljava/lang/String;
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 671
    .local v13, sname:Ljava/lang/String;
    if-nez v14, :cond_8

    .line 672
    invoke-static {v13}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v6

    .local v6, fdname:Lgnu/mapping/SimpleSymbol;
    move-object v15, v6

    .line 676
    .end local v6           #fdname:Lgnu/mapping/SimpleSymbol;
    .end local v13           #sname:Ljava/lang/String;
    .end local v14           #uri:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_9

    sget-object v16, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v3, v16

    .line 678
    .local v3, dtype:Lgnu/bytecode/Type;
    :goto_2
    move-object/from16 v0, p1

    move-object v1, v15

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 679
    .local v5, fdecl:Lgnu/expr/Declaration;
    invoke-virtual/range {p3 .. p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v15

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    move v12, v15

    .line 680
    .local v12, isStatic:Z
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v15

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    move v10, v15

    .line 681
    .local v10, isFinal:Z
    :goto_4
    if-eqz v9, :cond_c

    .line 682
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 690
    .end local v8           #ftype:Lgnu/bytecode/Type;
    :cond_0
    :goto_5
    if-eqz v12, :cond_1

    .line 691
    const/16 v15, 0x800

    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 692
    :cond_1
    move-object/from16 v0, p3

    move-object v1, v5

    iput-object v0, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 693
    if-eqz v10, :cond_2

    if-nez v9, :cond_2

    .line 694
    const/16 v15, 0x4000

    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 695
    :cond_2
    if-eqz v11, :cond_3

    .line 696
    const/high16 v15, 0x4000

    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 697
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 698
    if-eqz v4, :cond_4

    .line 699
    const v15, 0x80020

    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 700
    :cond_4
    return-object v5

    .line 654
    .end local v3           #dtype:Lgnu/bytecode/Type;
    .end local v5           #fdecl:Lgnu/expr/Declaration;
    .end local v10           #isFinal:Z
    .end local v12           #isStatic:Z
    .restart local v8       #ftype:Lgnu/bytecode/Type;
    .restart local p2
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/Named;

    move v15, v0

    if-eqz v15, :cond_6

    .line 655
    check-cast p2, Lgnu/mapping/Named;

    .end local p2
    invoke-interface/range {p2 .. p2}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    .local v6, fdname:Ljava/lang/Object;
    goto :goto_0

    .line 659
    .end local v6           #fdname:Ljava/lang/Object;
    .restart local p2
    :cond_6
    const-string v15, "$Prvt$"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 661
    const/4 v4, 0x1

    .line 662
    const-string v15, "$Prvt$"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 664
    :cond_7
    const/4 v15, 0x1

    invoke-static {v7, v15}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .local v6, fdname:Ljava/lang/String;
    goto/16 :goto_0

    .line 674
    .end local v6           #fdname:Ljava/lang/String;
    .end local p2
    .restart local v13       #sname:Ljava/lang/String;
    .restart local v14       #uri:Ljava/lang/String;
    :cond_8
    invoke-static {v14, v13}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    .local v6, fdname:Lgnu/mapping/Symbol;
    move-object v15, v6

    goto/16 :goto_1

    .line 676
    .end local v6           #fdname:Lgnu/mapping/Symbol;
    .end local v13           #sname:Ljava/lang/String;
    .end local v14           #uri:Ljava/lang/String;
    :cond_9
    invoke-virtual {v8}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v16

    move-object/from16 v3, v16

    goto/16 :goto_2

    .line 679
    .restart local v3       #dtype:Lgnu/bytecode/Type;
    .restart local v5       #fdecl:Lgnu/expr/Declaration;
    :cond_a
    const/4 v15, 0x0

    move v12, v15

    goto :goto_3

    .line 680
    .restart local v12       #isStatic:Z
    :cond_b
    const/4 v15, 0x0

    move v10, v15

    goto :goto_4

    .line 683
    .restart local v10       #isFinal:Z
    :cond_c
    if-eqz v10, :cond_0

    instance-of v15, v8, Lgnu/bytecode/ClassType;

    if-eqz v15, :cond_0

    .line 685
    sget-object v15, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v15}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 686
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    goto/16 :goto_5

    .line 687
    :cond_d
    check-cast v8, Lgnu/bytecode/ClassType;

    .end local v8           #ftype:Lgnu/bytecode/Type;
    const-string v15, "gnu.mapping.Namespace"

    invoke-virtual {v8, v15}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 688
    const/high16 v15, 0x20

    invoke-virtual {v5, v15}, Lgnu/expr/Declaration;->setFlag(I)V

    goto/16 :goto_5

    .end local v3           #dtype:Lgnu/bytecode/Type;
    .end local v5           #fdecl:Lgnu/expr/Declaration;
    .end local v10           #isFinal:Z
    .end local v12           #isStatic:Z
    .restart local v8       #ftype:Lgnu/bytecode/Type;
    :cond_e
    move-object v15, v6

    goto/16 :goto_1
.end method

.method protected defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "cname"
    .parameter "fname"

    .prologue
    .line 310
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    .line 311
    return-void
.end method

.method protected defProcStFld(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "cname"

    .prologue
    .line 336
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method protected defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "cname"
    .parameter "fname"

    .prologue
    .line 321
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v1, v3

    .line 323
    .local v1, property:Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 324
    .local v2, sym:Lgnu/mapping/Symbol;
    iget-object v3, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-static {v3, v2, v1, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    .line 326
    .local v0, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v0}, Lgnu/kawa/reflect/StaticFieldLocation;->setProcedure()V

    .line 327
    return-void

    .line 321
    .end local v0           #loc:Lgnu/kawa/reflect/StaticFieldLocation;
    .end local v1           #property:Ljava/lang/Object;
    .end local v2           #sym:Lgnu/mapping/Symbol;
    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_0
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "sym"
    .parameter "p"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 303
    .local v0, s:Lgnu/mapping/Symbol;
    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public final defineFunction(Lgnu/mapping/Named;)V
    .locals 4
    .parameter "proc"

    .prologue
    .line 342
    invoke-interface {p1}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, name:Ljava/lang/Object;
    instance-of v3, v0, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_0

    check-cast v0, Lgnu/mapping/Symbol;

    .end local v0           #name:Ljava/lang/Object;
    move-object v2, v0

    .line 345
    .local v2, sym:Lgnu/mapping/Symbol;
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v1, v3

    .line 347
    .local v1, property:Ljava/lang/Object;
    :goto_1
    iget-object v3, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v3, v2, v1, p1}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    return-void

    .line 343
    .end local v1           #property:Ljava/lang/Object;
    .end local v2           #sym:Lgnu/mapping/Symbol;
    .restart local v0       #name:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 345
    .end local v0           #name:Ljava/lang/Object;
    .restart local v2       #sym:Lgnu/mapping/Symbol;
    :cond_1
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_1
.end method

.method public defineFunction(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "proc"

    .prologue
    .line 355
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v0, v1

    .line 357
    .local v0, property:Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    return-void

    .line 355
    .end local v0           #property:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public emitCoerceToBoolean(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    .line 738
    invoke-virtual {p0, v1, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 739
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfNEq()V

    .line 740
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 741
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 742
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 743
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 744
    return-void
.end method

.method public emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "value"
    .parameter "code"

    .prologue
    .line 729
    if-eqz p1, :cond_0

    sget-object v0, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    :goto_0
    invoke-virtual {p2, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 731
    return-void

    .line 729
    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    goto :goto_0
.end method

.method public final eval(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 4
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 802
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 803
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v2

    .line 806
    .local v2, oldIndex:I
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V

    .line 807
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 809
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 811
    .local v1, ex:Ljava/lang/Throwable;
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 812
    throw v1
.end method

.method public final eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 796
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/InPort;

    .end local p1
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .restart local p1
    :cond_0
    new-instance v0, Lgnu/mapping/InPort;

    invoke-direct {v0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public final eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 788
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V
    .locals 6
    .parameter "port"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 861
    new-instance v1, Lgnu/text/SourceMessages;

    invoke-direct {v1}, Lgnu/text/SourceMessages;-><init>()V

    .line 862
    .local v1, messages:Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 863
    .local v2, saveLang:Lgnu/expr/Language;
    invoke-static {p0}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    .line 866
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1, v3}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v0

    .line 867
    .local v0, comp:Lgnu/expr/Compilation;
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p2, v0, v4, v5}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-static {v2}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    .line 873
    invoke-virtual {v1}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid syntax in eval form:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v1, v5}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 871
    .end local v0           #comp:Lgnu/expr/Compilation;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lgnu/expr/Language;->setDefaultLanguage(Lgnu/expr/Language;)V

    throw v3

    .line 876
    .restart local v0       #comp:Lgnu/expr/Compilation;
    :cond_0
    return-void
.end method

.method public eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V
    .locals 4
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 845
    instance-of v3, p1, Lgnu/mapping/InPort;

    if-eqz v3, :cond_0

    check-cast p1, Lgnu/mapping/InPort;

    .end local p1
    move-object v1, p1

    .line 846
    .local v1, port:Lgnu/mapping/InPort;
    :goto_0
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 847
    .local v0, ctx:Lgnu/mapping/CallContext;
    iget-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 850
    .local v2, save:Lgnu/lists/Consumer;
    :try_start_0
    iput-object p2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 851
    invoke-virtual {p0, v1, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 857
    return-void

    .line 845
    .end local v0           #ctx:Lgnu/mapping/CallContext;
    .end local v1           #port:Lgnu/mapping/InPort;
    .end local v2           #save:Lgnu/lists/Consumer;
    .restart local p1
    :cond_0
    new-instance v3, Lgnu/mapping/InPort;

    invoke-direct {v3, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    goto :goto_0

    .line 855
    .end local p1
    .restart local v0       #ctx:Lgnu/mapping/CallContext;
    .restart local v1       #port:Lgnu/mapping/InPort;
    .restart local v2       #save:Lgnu/lists/Consumer;
    :catchall_0
    move-exception v3

    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v3
.end method

.method public final eval(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p0, p2}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V

    .line 840
    return-void
.end method

.method public final eval(Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "string"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 833
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V

    .line 834
    return-void
.end method

.method public final eval(Ljava/lang/String;Lgnu/lists/PrintConsumer;)V
    .locals 1
    .parameter "string"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 827
    invoke-virtual {p0, p2}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->eval(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 828
    return-void
.end method

.method public final eval(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "string"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 819
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 820
    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 524
    invoke-virtual {p1}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 1
    .parameter "lexer"
    .parameter "messages"
    .parameter "lexical"

    .prologue
    .line 434
    new-instance v0, Lgnu/expr/Compilation;

    invoke-direct {v0, p0, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object v0
.end method

.method public getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;
    .locals 1
    .parameter "decl"

    .prologue
    .line 372
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "fld"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 367
    :goto_0
    return-object v0

    .line 364
    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 367
    goto :goto_0
.end method

.method public final getEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lgnu/expr/Language;->userEnv:Lgnu/mapping/Environment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Language;->userEnv:Lgnu/mapping/Environment;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    goto :goto_0
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 1
    .parameter "readable"

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLangEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public final getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 3
    .parameter "type"

    .prologue
    .line 513
    instance-of v2, p1, Lgnu/bytecode/ObjectType;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ObjectType;->isExisting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 516
    .local v1, clas:Ljava/lang/Class;
    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {p0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 519
    .end local v1           #clas:Ljava/lang/Class;
    :goto_0
    return-object v2

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method public abstract getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, name:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 425
    .local v0, dot:I
    if-ltz v0, :cond_0

    .line 426
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    :cond_0
    return-object v1
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 1
    .parameter "decl"

    .prologue
    .line 717
    const/4 v0, 0x1

    return v0
.end method

.method public final getNewEnvironment()Lgnu/mapping/Environment;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "environment-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lgnu/expr/Language;->envCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/expr/Language;->envCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-static {v0, v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .locals 2
    .parameter "out"

    .prologue
    .line 415
    instance-of v1, p1, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    check-cast p1, Lgnu/mapping/OutPort;

    .end local p1
    move-object v0, p1

    .line 417
    .local v0, oport:Lgnu/mapping/OutPort;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v1

    iput-object v1, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 418
    return-object v0

    .line 415
    .end local v0           #oport:Lgnu/mapping/OutPort;
    .restart local p1
    :cond_0
    new-instance v1, Lgnu/mapping/OutPort;

    invoke-direct {v1, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 5

    .prologue
    .line 774
    const/4 v1, 0x0

    .line 775
    .local v1, property:Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 777
    .end local v1           #property:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    const-string v3, "default-prompter"

    invoke-virtual {p0, v3}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    .line 779
    .local v0, prompter:Lgnu/mapping/Procedure;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 782
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lgnu/expr/SimplePrompter;

    invoke-direct {v2}, Lgnu/expr/SimplePrompter;-><init>()V

    goto :goto_0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "name"

    .prologue
    .line 400
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "exp"

    .prologue
    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;
    .locals 12
    .parameter "exp"
    .parameter "lenient"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 584
    instance-of v8, p1, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_2

    .line 586
    move-object v0, p1

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 587
    .local v7, value:Ljava/lang/Object;
    instance-of v8, v7, Lgnu/bytecode/Type;

    if-eqz v8, :cond_0

    .line 588
    check-cast v7, Lgnu/bytecode/Type;

    .end local v7           #value:Ljava/lang/Object;
    move-object v8, v7

    .line 639
    :goto_0
    return-object v8

    .line 589
    .restart local v7       #value:Ljava/lang/Object;
    :cond_0
    instance-of v8, v7, Ljava/lang/Class;

    if-eqz v8, :cond_1

    .line 590
    check-cast v7, Ljava/lang/Class;

    .end local v7           #value:Ljava/lang/Object;
    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    goto :goto_0

    .line 591
    .restart local v7       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v7, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v8

    goto :goto_0

    .line 593
    .end local v7           #value:Ljava/lang/Object;
    :cond_2
    instance-of v8, p1, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_a

    .line 595
    move-object v0, p1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v5, v0

    .line 596
    .local v5, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    invoke-static {v8}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 597
    .local v1, decl:Lgnu/expr/Declaration;
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, name:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 600
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p1

    .line 601
    instance-of v8, p1, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_3

    const/16 v8, 0x4000

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v8

    if-nez v8, :cond_3

    .line 605
    move-object v0, p1

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 606
    .local v6, val:Ljava/lang/Object;
    invoke-virtual {p0, v6, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v8

    goto :goto_0

    .line 608
    .end local v6           #val:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v8

    if-eqz v8, :cond_7

    instance-of v8, p1, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_7

    .line 611
    move-object v0, p1

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 612
    .restart local v6       #val:Ljava/lang/Object;
    instance-of v8, v6, Lgnu/mapping/Location;

    if-eqz v8, :cond_6

    .line 614
    move-object v0, v6

    check-cast v0, Lgnu/mapping/Location;

    move-object v3, v0

    .line 615
    .local v3, loc:Lgnu/mapping/Location;
    invoke-virtual {v3}, Lgnu/mapping/Location;->isBound()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 616
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v8, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v8

    goto :goto_0

    .line 617
    :cond_4
    instance-of v8, v3, Lgnu/mapping/Named;

    if-nez v8, :cond_5

    move-object v8, v11

    .line 618
    goto :goto_0

    .line 619
    :cond_5
    check-cast v3, Lgnu/mapping/Named;

    .end local v3           #loc:Lgnu/mapping/Location;
    invoke-interface {v3}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v4

    .line 625
    .end local v6           #val:Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v8

    invoke-virtual {v8, v4}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 626
    .restart local v6       #val:Ljava/lang/Object;
    instance-of v8, v6, Lgnu/bytecode/Type;

    if-eqz v8, :cond_8

    .line 627
    check-cast v6, Lgnu/bytecode/Type;

    .end local v6           #val:Ljava/lang/Object;
    move-object v8, v6

    goto/16 :goto_0

    .line 622
    :cond_7
    const/high16 v8, 0x1

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 623
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v8

    goto/16 :goto_0

    .line 628
    .restart local v6       #val:Ljava/lang/Object;
    :cond_8
    instance-of v8, v6, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v8, :cond_9

    .line 629
    check-cast v6, Lgnu/kawa/lispexpr/ClassNamespace;

    .end local v6           #val:Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v8

    goto/16 :goto_0

    .line 630
    .restart local v6       #val:Ljava/lang/Object;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 631
    .local v2, len:I
    const/4 v8, 0x2

    if-le v2, v8, :cond_c

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_c

    sub-int v8, v2, v10

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_c

    .line 633
    sub-int v8, v2, v10

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v8

    goto/16 :goto_0

    .line 635
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v2           #len:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #rexp:Lgnu/expr/ReferenceExp;
    .end local v6           #val:Ljava/lang/Object;
    :cond_a
    instance-of v8, p1, Lgnu/expr/ClassExp;

    if-nez v8, :cond_b

    instance-of v8, p1, Lgnu/expr/ModuleExp;

    if-eqz v8, :cond_c

    .line 637
    :cond_b
    move-object v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    goto/16 :goto_0

    :cond_c
    move-object v8, v11

    .line 639
    goto/16 :goto_0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "clas"

    .prologue
    .line 508
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;
    .locals 3
    .parameter "spec"
    .parameter "lenient"

    .prologue
    .line 551
    instance-of v2, p1, Lgnu/bytecode/Type;

    if-eqz v2, :cond_0

    .line 552
    check-cast p1, Lgnu/bytecode/Type;

    .end local p1
    move-object v2, p1

    .line 567
    :goto_0
    return-object v2

    .line 553
    .restart local p1
    :cond_0
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 554
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    goto :goto_0

    .line 555
    .restart local p1
    :cond_1
    if-eqz p2, :cond_4

    instance-of v2, p1, Lgnu/lists/FString;

    if-nez v2, :cond_3

    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_3

    instance-of v2, p1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    instance-of v2, p1, Lgnu/lists/CharSeq;

    if-eqz v2, :cond_4

    .line 560
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    goto :goto_0

    .line 561
    :cond_4
    instance-of v2, p1, Lgnu/mapping/Namespace;

    if-eqz v2, :cond_5

    .line 563
    check-cast p1, Lgnu/mapping/Namespace;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, uri:Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v2, "class:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 565
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v2

    goto :goto_0

    .line 567
    .end local v1           #uri:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 546
    invoke-static {p1}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .locals 1
    .parameter "decl"
    .parameter "namespace"

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 248
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 383
    .local v0, clas:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 384
    .local v2, inst:Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 385
    instance-of v3, v2, Lgnu/expr/ModuleBody;

    if-eqz v3, :cond_0

    .line 386
    check-cast v2, Lgnu/expr/ModuleBody;

    .end local v2           #inst:Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/expr/ModuleBody;->run()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :cond_0
    return-void

    .line 388
    .end local v0           #clas:Ljava/lang/Class;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 390
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    throw v1

    .line 392
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 394
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Lgnu/mapping/WrappedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot load "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 405
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupBuiltin(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 1
    .parameter "name"
    .parameter "property"
    .parameter "hash"

    .prologue
    .line 296
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public noValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;
    .locals 2
    .parameter "port"
    .parameter "messages"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .locals 2
    .parameter "port"
    .parameter "messages"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, p3}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .locals 6
    .parameter "lexer"
    .parameter "options"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 477
    invoke-virtual {p1}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    .line 478
    .local v2, messages:Lgnu/text/SourceMessages;
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_3

    move v0, v5

    .line 479
    .local v0, immediate:Z
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-static {v4, p0}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v4

    move-object v1, v4

    .line 480
    .local v1, lexical:Lgnu/expr/NameLookup;
    :goto_1
    invoke-virtual {p0, p1, v2, v1}, Lgnu/expr/Language;->getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;

    move-result-object v3

    .line 481
    .local v3, tr:Lgnu/expr/Compilation;
    sget-boolean v4, Lgnu/expr/Language;->requirePedantic:Z

    if-eqz v4, :cond_0

    .line 482
    iput-boolean v5, v3, Lgnu/expr/Compilation;->pedantic:Z

    .line 483
    :cond_0
    iput-boolean v0, v3, Lgnu/expr/Compilation;->immediate:Z

    .line 484
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_1

    .line 485
    invoke-virtual {v3, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 486
    :cond_1
    invoke-virtual {v3, p1}, Lgnu/expr/Compilation;->pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;

    .line 487
    if-eqz p3, :cond_2

    .line 488
    invoke-virtual {p3, v3}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 489
    :cond_2
    invoke-virtual {p0, v3, p2}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 490
    const/4 v4, 0x0

    .line 493
    :goto_2
    return-object v4

    .line 478
    .end local v0           #immediate:Z
    .end local v1           #lexical:Lgnu/expr/NameLookup;
    .end local v3           #tr:Lgnu/expr/Compilation;
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 479
    .restart local v0       #immediate:Z
    :cond_4
    new-instance v4, Lgnu/expr/NameLookup;

    invoke-direct {v4, p0}, Lgnu/expr/NameLookup;-><init>(Lgnu/expr/Language;)V

    move-object v1, v4

    goto :goto_1

    .line 491
    .restart local v1       #lexical:Lgnu/expr/NameLookup;
    .restart local v3       #tr:Lgnu/expr/Compilation;
    :cond_5
    invoke-virtual {v3}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 492
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->setState(I)V

    :cond_6
    move-object v4, v3

    .line 493
    goto :goto_2
.end method

.method public abstract parse(Lgnu/expr/Compilation;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 0
    .parameter "comp"

    .prologue
    .line 504
    return-void
.end method

.method public runAsApplication([Ljava/lang/String;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 882
    invoke-static {p0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 883
    invoke-static {p1}, Lkawa/repl;->main([Ljava/lang/String;)V

    .line 884
    return-void
.end method
