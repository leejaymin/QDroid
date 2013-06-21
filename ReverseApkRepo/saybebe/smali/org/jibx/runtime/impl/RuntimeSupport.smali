.class public abstract Lorg/jibx/runtime/impl/RuntimeSupport;
.super Ljava/lang/Object;
.source "RuntimeSupport.java"


# static fields
.field static class$org$jibx$runtime$IUnmarshallingContext:Ljava/lang/Class;

.field static class$org$jibx$runtime$impl$IXMLReaderFactory:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "x0"

    .prologue
    .line 215
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createReaderFactory(Ljava/lang/String;)Lorg/jibx/runtime/impl/IXMLReaderFactory;
    .locals 7
    .parameter "cname"

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, clas:Ljava/lang/Class;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 206
    .local v2, loader:Ljava/lang/ClassLoader;
    if-eqz v2, :cond_0

    .line 208
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 211
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 215
    :try_start_1
    sget-object v4, Lorg/jibx/runtime/impl/RuntimeSupport;->class$org$jibx$runtime$IUnmarshallingContext:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "org.jibx.runtime.IUnmarshallingContext"

    invoke-static {v4}, Lorg/jibx/runtime/impl/RuntimeSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jibx/runtime/impl/RuntimeSupport;->class$org$jibx$runtime$IUnmarshallingContext:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 216
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 222
    :cond_1
    sget-object v4, Lorg/jibx/runtime/impl/RuntimeSupport;->class$org$jibx$runtime$impl$IXMLReaderFactory:Ljava/lang/Class;

    if-nez v4, :cond_3

    const-string v4, "org.jibx.runtime.impl.IXMLReaderFactory"

    invoke-static {v4}, Lorg/jibx/runtime/impl/RuntimeSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jibx/runtime/impl/RuntimeSupport;->class$org$jibx$runtime$impl$IXMLReaderFactory:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 223
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Specified parser factory class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " does not implement IXMLReaderFactory interface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    :cond_2
    :try_start_2
    sget-object v4, Lorg/jibx/runtime/impl/RuntimeSupport;->class$org$jibx$runtime$IUnmarshallingContext:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to specified parser factory class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :cond_3
    sget-object v4, Lorg/jibx/runtime/impl/RuntimeSupport;->class$org$jibx$runtime$impl$IXMLReaderFactory:Ljava/lang/Class;

    goto :goto_2

    .line 229
    :cond_4
    :try_start_3
    const-string v5, "getInstance"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 230
    .local v3, meth:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jibx/runtime/impl/IXMLReaderFactory;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v4

    .line 231
    .end local v3           #meth:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Specified parser factory class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " does not define static getInstance() method"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 235
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error on parser factory class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " getInstance() method call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 237
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 238
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error on parser factory class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " getInstance() method call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    goto/16 :goto_0
.end method

.method public static expandNamespaces(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "blob"
    .parameter "uris"

    .prologue
    .line 129
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 130
    :cond_0
    sget-object v2, Lorg/jibx/runtime/Utility;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 139
    :cond_1
    return-object v2

    .line 132
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 133
    .local v2, nameuris:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .line 135
    .local v1, index:I
    if-ltz v1, :cond_3

    .line 136
    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 133
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static loadFactory()Lorg/jibx/runtime/impl/IXMLReaderFactory;
    .locals 7

    .prologue
    .line 251
    const/4 v3, 0x0

    .line 253
    .local v3, prop:Ljava/lang/String;
    :try_start_0
    const-string v4, "org.jibx.runtime.impl.parser"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 257
    :goto_0
    if-nez v3, :cond_0

    .line 260
    const/4 v2, 0x0

    .line 262
    .local v2, fact:Lorg/jibx/runtime/impl/IXMLReaderFactory;
    :try_start_1
    const-string v4, "org.jibx.runtime.impl.XMLPullReaderFactory"

    invoke-static {v4}, Lorg/jibx/runtime/impl/RuntimeSupport;->createReaderFactory(Ljava/lang/String;)Lorg/jibx/runtime/impl/IXMLReaderFactory;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 279
    .end local v2           #fact:Lorg/jibx/runtime/impl/IXMLReaderFactory;
    :goto_1
    return-object v2

    .line 264
    .restart local v2       #fact:Lorg/jibx/runtime/impl/IXMLReaderFactory;
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "org.jibx.runtime.impl.StAXReaderFactory"

    invoke-static {v4}, Lorg/jibx/runtime/impl/RuntimeSupport;->createReaderFactory(Ljava/lang/String;)Lorg/jibx/runtime/impl/IXMLReaderFactory;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_1

    .line 268
    :catch_1
    move-exception v1

    .line 269
    .local v1, e1:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to load either XMLPull or StAX parser - check classpath for interface and implementation jars\nXMLPull error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\nStAX error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v1           #e1:Ljava/lang/Throwable;
    .end local v2           #fact:Lorg/jibx/runtime/impl/IXMLReaderFactory;
    :cond_0
    invoke-static {v3}, Lorg/jibx/runtime/impl/RuntimeSupport;->createReaderFactory(Ljava/lang/String;)Lorg/jibx/runtime/impl/IXMLReaderFactory;

    move-result-object v2

    goto :goto_1

    .line 254
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public static splitClassNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "blob"

    .prologue
    const/16 v11, 0x2e

    const/16 v10, 0x24

    const/4 v9, 0x0

    .line 60
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 61
    :cond_0
    sget-object v8, Lorg/jibx/runtime/Utility;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 111
    :goto_0
    return-object v8

    .line 63
    :cond_1
    new-instance v6, Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-direct {v6}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>()V

    .line 64
    .local v6, names:Lorg/jibx/runtime/impl/GrowableStringArray;
    const-string v4, ""

    .line 65
    .local v4, last:Ljava/lang/String;
    const/4 v7, -0x1

    .line 66
    .local v7, split:I
    const/4 v3, 0x0

    .line 67
    .local v3, index:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v1, buff:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 69
    add-int/lit8 v0, v7, 0x1

    .line 70
    .local v0, base:I
    const/16 v8, 0x7c

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 71
    if-gez v7, :cond_2

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 74
    :cond_2
    if-le v7, v0, :cond_9

    .line 75
    const/4 v5, 0x0

    .line 76
    .local v5, mark:I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 78
    .local v2, chr:C
    if-ne v2, v11, :cond_3

    .line 79
    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 85
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 86
    goto :goto_2

    .line 80
    :cond_3
    if-ne v2, v10, :cond_4

    .line 81
    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    goto :goto_3

    .line 87
    .end local v2           #chr:C
    :cond_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 88
    if-ne v0, v7, :cond_7

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 90
    :cond_5
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 92
    .restart local v2       #chr:C
    if-eq v2, v11, :cond_6

    if-ne v2, v10, :cond_5

    .line 97
    .end local v2           #chr:C
    :cond_6
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v6, v4}, Lorg/jibx/runtime/impl/GrowableStringArray;->add(Ljava/lang/String;)V

    .line 109
    .end local v5           #mark:I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_1

    .line 99
    .restart local v5       #mark:I
    :cond_7
    if-lez v5, :cond_8

    .line 100
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_8
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 107
    .end local v5           #mark:I
    :cond_9
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/jibx/runtime/impl/GrowableStringArray;->add(Ljava/lang/String;)V

    goto :goto_5

    .line 111
    .end local v0           #base:I
    :cond_a
    invoke-virtual {v6}, Lorg/jibx/runtime/impl/GrowableStringArray;->toArray()[Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public static splitInts(Ljava/lang/String;)[I
    .locals 3
    .parameter "blob"

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [I

    .line 187
    .local v1, indexes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-object v1
.end method

.method public static splitNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "blob"

    .prologue
    .line 154
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 155
    :cond_0
    sget-object v4, Lorg/jibx/runtime/Utility;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 173
    :goto_0
    return-object v4

    .line 157
    :cond_1
    new-instance v2, Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-direct {v2}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>()V

    .line 158
    .local v2, names:Lorg/jibx/runtime/impl/GrowableStringArray;
    const/4 v3, -0x1

    .line 159
    .local v3, split:I
    const/4 v1, 0x0

    .line 160
    .local v1, index:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 161
    add-int/lit8 v0, v3, 0x1

    .line 162
    .local v0, base:I
    const/16 v4, 0x7c

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 163
    if-gez v3, :cond_2

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 166
    :cond_2
    if-le v3, v0, :cond_3

    .line 167
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jibx/runtime/impl/GrowableStringArray;->add(Ljava/lang/String;)V

    .line 171
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 172
    goto :goto_1

    .line 169
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/jibx/runtime/impl/GrowableStringArray;->add(Ljava/lang/String;)V

    goto :goto_2

    .line 173
    .end local v0           #base:I
    :cond_4
    invoke-virtual {v2}, Lorg/jibx/runtime/impl/GrowableStringArray;->toArray()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
