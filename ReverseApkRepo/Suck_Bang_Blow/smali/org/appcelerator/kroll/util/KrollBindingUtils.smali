.class public Lorg/appcelerator/kroll/util/KrollBindingUtils;
.super Ljava/lang/Object;
.source "KrollBindingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V
    .locals 7
    .parameter "methodArgs"
    .parameter "requiredArgs"
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected %d arguments for %s, got 0"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    array-length v0, p0

    if-ge v0, p1, :cond_1

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected %d arguments for %s, got %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    return-void
.end method

.method public static createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;
    .locals 1
    .parameter "accessor"
    .parameter "isSet"

    .prologue
    .line 83
    new-instance v0, Lorg/appcelerator/kroll/util/KrollBindingUtils$2;

    invoke-direct {v0, p0, p1, p0}, Lorg/appcelerator/kroll/util/KrollBindingUtils$2;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static createCreateMethod(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)Lorg/appcelerator/kroll/KrollMethod;
    .locals 1
    .parameter "methodName"
    .parameter "creator"

    .prologue
    .line 63
    new-instance v0, Lorg/appcelerator/kroll/util/KrollBindingUtils$1;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/kroll/util/KrollBindingUtils$1;-><init>(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)V

    return-object v0
.end method

.method public static getVarArgs(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;ILorg/appcelerator/kroll/KrollJavascriptConverter;Lorg/appcelerator/kroll/KrollDefaultValueProvider;)[Ljava/lang/Object;
    .locals 9
    .parameter "invocation"
    .parameter "methodArgs"
    .parameter "argIndex"
    .parameter "argConverter"
    .parameter "defaultValueProvider"

    .prologue
    const-class v8, Ljava/lang/Object;

    .line 38
    array-length v3, p1

    .line 39
    .local v3, methodArgsLen:I
    sub-int v5, v3, p2

    new-array v4, v5, [Ljava/lang/Object;

    .line 40
    .local v4, varArgs:[Ljava/lang/Object;
    add-int/lit8 v5, p2, 0x1

    if-ne v3, v5, :cond_2

    .line 41
    aget-object v5, p1, p2

    const-class v6, Ljava/lang/Object;

    invoke-interface {p3, p0, v5, v8}, Lorg/appcelerator/kroll/KrollJavascriptConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, firstValue:Ljava/lang/Object;
    instance-of v5, v1, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 43
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #firstValue:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 54
    .end local p0
    :cond_0
    :goto_0
    return-object v4

    .line 45
    .restart local v1       #firstValue:Ljava/lang/Object;
    .restart local p0
    :cond_1
    const/4 v5, 0x0

    aput-object v1, v4, v5

    goto :goto_0

    .line 47
    .end local v1           #firstValue:Ljava/lang/Object;
    :cond_2
    if-ne v3, p2, :cond_3

    .line 48
    const-class v5, [Ljava/lang/Object;

    invoke-interface {p4, v5}, Lorg/appcelerator/kroll/KrollDefaultValueProvider;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    goto :goto_0

    .line 50
    .restart local p0
    :cond_3
    move v2, p2

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 51
    sub-int v5, v2, p2

    aget-object v6, p1, v2

    const-class v7, Ljava/lang/Object;

    invoke-interface {p3, p0, v6, v8}, Lorg/appcelerator/kroll/KrollJavascriptConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
