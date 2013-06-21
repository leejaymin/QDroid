.class public Lorg/appcelerator/kroll/KrollConverter;
.super Ljava/lang/Object;
.source "KrollConverter.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollNativeConverter;
.implements Lorg/appcelerator/kroll/KrollJavascriptConverter;
.implements Lorg/appcelerator/kroll/KrollDefaultValueProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFAULT_NAME:Ljava/lang/String; = "__default_name__"

.field public static final JS_CLASS_DATE:Ljava/lang/String; = "Date"

.field public static final JS_CLASS_ERROR:Ljava/lang/String; = "Error"

.field public static final JS_CLASS_OBJECT:Ljava/lang/String; = "Object"

.field public static final JS_METHOD_TO_STRING:Ljava/lang/String; = "toString"

.field public static final JS_METHOD_VALUE_OF:Ljava/lang/String; = "valueOf"

.field public static final JS_PROPERTY_JAVA_EXCEPTION:Ljava/lang/String; = "javaException"

.field public static final JS_PROPERTY_LENGTH:Ljava/lang/String; = "length"

.field public static final JS_PROPERTY_MESSAGE:Ljava/lang/String; = "message"

.field public static final JS_UNDEFINED:Ljava/lang/String; = "undefined"

.field private static final TAG:Ljava/lang/String; = "KrollConverter"

.field protected static _instance:Lorg/appcelerator/kroll/KrollConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/kroll/KrollConverter;->DBG:Z

    .line 47
    new-instance v0, Lorg/appcelerator/kroll/KrollConverter;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollConverter;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollConverter;->_instance:Lorg/appcelerator/kroll/KrollConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static getInstance()Lorg/appcelerator/kroll/KrollConverter;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/appcelerator/kroll/KrollConverter;->_instance:Lorg/appcelerator/kroll/KrollConverter;

    return-object v0
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 351
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 352
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 354
    :goto_0
    return v0

    .line 353
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 354
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 356
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to boolean."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/KrollConverter;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toDouble(Ljava/lang/Object;)D
    .locals 3
    .parameter "value"

    .prologue
    .line 397
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 398
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 402
    :goto_0
    return-wide v0

    .line 399
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 400
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 401
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 402
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 404
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDouble(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)D
    .locals 2
    .parameter "d"
    .parameter "key"

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/KrollConverter;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(Ljava/lang/Object;)F
    .locals 3
    .parameter "value"

    .prologue
    .line 381
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 382
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 386
    :goto_0
    return v0

    .line 383
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 384
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    goto :goto_0

    .line 385
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 386
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 388
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/KrollConverter;->toFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 365
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 366
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 370
    :goto_0
    return v0

    .line 367
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 368
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 369
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 370
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 372
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/KrollConverter;->toInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 413
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    const-string v0, "undefined"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/KrollConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .parameter "parts"

    .prologue
    .line 421
    if-eqz p0, :cond_0

    array-length v2, p0

    new-array v2, v2, [Ljava/lang/String;

    move-object v1, v2

    .line 422
    .local v1, sparts:[Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_2

    .line 423
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 424
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    aput-object v2, v1, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    .end local v0           #i:I
    .end local v1           #sparts:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    .line 424
    .restart local v0       #i:I
    .restart local v1       #sparts:[Ljava/lang/String;
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 427
    .end local v0           #i:I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public convertArray(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .parameter "invocation"
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/kroll/KrollInvocation;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p3, target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Object;

    .line 292
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, converted:Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 296
    .local v0, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 297
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    array-length v4, p2

    new-array v1, v4, [I

    .line 308
    .end local v1           #converted:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    .line 309
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_5

    .line 310
    aget-object v4, p2, v2

    invoke-virtual {p0, p1, v4, v0}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 299
    .end local v2           #i:I
    .restart local v1       #converted:Ljava/lang/Object;
    :cond_1
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    array-length v4, p2

    new-array v1, v4, [Ljava/lang/Integer;

    .local v1, converted:[Ljava/lang/Integer;
    goto :goto_0

    .line 301
    .local v1, converted:Ljava/lang/Object;
    :cond_2
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 302
    array-length v4, p2

    new-array v1, v4, [D

    .local v1, converted:[D
    goto :goto_0

    .line 303
    .local v1, converted:Ljava/lang/Object;
    :cond_3
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 304
    array-length v4, p2

    new-array v1, v4, [Ljava/lang/Double;

    .local v1, converted:[Ljava/lang/Double;
    goto :goto_0

    .line 305
    .local v1, converted:Ljava/lang/Object;
    :cond_4
    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    array-length v4, p2

    new-array v1, v4, [Ljava/lang/String;

    .local v1, converted:[Ljava/lang/String;
    goto :goto_0

    .end local v1           #converted:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_5
    move-object v4, v1

    .line 321
    .end local v0           #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    return-object v4

    .line 317
    .end local v2           #i:I
    :cond_6
    array-length v4, p2

    new-array v3, v4, [Ljava/lang/Object;

    .line 318
    .local v3, newValues:[Ljava/lang/Object;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    array-length v4, p2

    if-ge v2, v4, :cond_7

    .line 319
    aget-object v4, p2, v2

    const-class v5, Ljava/lang/Object;

    invoke-virtual {p0, p1, v4, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move-object v4, v3

    .line 321
    goto :goto_2
.end method

.method public convertJSONArray(Lorg/appcelerator/kroll/KrollInvocation;Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 6
    .parameter "invocation"
    .parameter "array"

    .prologue
    .line 77
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v3, v4, [Ljava/lang/Object;

    .line 78
    .local v3, result:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, r:Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v2           #r:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 83
    .local v1, ig:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v1           #ig:Lorg/json/JSONException;
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v4

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    return-object v4
.end method

.method public convertJSONObject(Lorg/appcelerator/kroll/KrollInvocation;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .parameter "invocation"
    .parameter "json"

    .prologue
    .line 54
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v5, :cond_0

    .line 56
    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    .line 73
    :goto_0
    return-object v5

    .line 58
    :cond_0
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 59
    .local v3, map:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    .local v4, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, entry:Ljava/lang/Object;
    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    .end local v0           #entry:Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 70
    .local v1, ig:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v1           #ig:Lorg/json/JSONException;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "invocation"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/kroll/KrollInvocation;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 325
    .local p3, target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 326
    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollConverter;->convertScriptable(Lorg/appcelerator/kroll/KrollInvocation;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    .line 327
    .restart local p2
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 328
    :cond_1
    invoke-static {p2, p3}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_2
    if-nez p2, :cond_3

    .line 330
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :cond_3
    instance-of v0, p2, Lorg/mozilla/javascript/Undefined;

    if-eqz v0, :cond_4

    .line 332
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0

    .line 334
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollConverter;->convertArray(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 337
    .restart local p2
    :cond_5
    sget-boolean v0, Lorg/appcelerator/kroll/KrollConverter;->DBG:Z

    if-eqz v0, :cond_6

    .line 338
    const-string v0, "KrollConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type conversion: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", invocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, p2

    .line 342
    goto :goto_0
.end method

.method public convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "invocation"
    .parameter "value"

    .prologue
    .line 189
    instance-of v6, p2, Lorg/appcelerator/kroll/KrollConvertable;

    if-eqz v6, :cond_0

    .line 190
    check-cast p2, Lorg/appcelerator/kroll/KrollConvertable;

    .end local p2
    invoke-interface {p2}, Lorg/appcelerator/kroll/KrollConvertable;->getJavascriptValue()Ljava/lang/Object;

    move-result-object v6

    .line 235
    :goto_0
    return-object v6

    .line 192
    .restart local p2
    :cond_0
    if-eqz p2, :cond_1

    instance-of v6, p2, Ljava/lang/String;

    if-nez v6, :cond_1

    instance-of v6, p2, Ljava/lang/Number;

    if-nez v6, :cond_1

    instance-of v6, p2, Ljava/lang/Boolean;

    if-nez v6, :cond_1

    instance-of v6, p2, Lorg/mozilla/javascript/Scriptable;

    if-nez v6, :cond_1

    instance-of v6, p2, Lorg/mozilla/javascript/Function;

    if-eqz v6, :cond_2

    .line 197
    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    invoke-static {p2, v6}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 199
    :cond_2
    instance-of v6, p2, Lorg/json/JSONArray;

    if-eqz v6, :cond_3

    .line 200
    check-cast p2, Lorg/json/JSONArray;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollConverter;->convertJSONArray(Lorg/appcelerator/kroll/KrollInvocation;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 202
    .restart local p2
    :cond_3
    instance-of v6, p2, Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    .line 204
    check-cast p2, Lorg/json/JSONObject;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollConverter;->convertJSONObject(Lorg/appcelerator/kroll/KrollInvocation;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 206
    .restart local p2
    :cond_4
    instance-of v6, p2, Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 208
    new-instance v6, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;

    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-direct {v6, p0, p1, p2}, Lorg/appcelerator/kroll/KrollConverter$ScriptableMap;-><init>(Lorg/appcelerator/kroll/KrollConverter;Lorg/appcelerator/kroll/KrollInvocation;Ljava/util/Map;)V

    goto :goto_0

    .line 210
    .restart local p2
    :cond_5
    instance-of v6, p2, Ljava/util/Date;

    if-eqz v6, :cond_7

    .line 211
    instance-of v6, p2, Lorg/appcelerator/kroll/KrollDate;

    if-eqz v6, :cond_6

    .line 212
    check-cast p2, Lorg/appcelerator/kroll/KrollDate;

    .end local p2
    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollDate;->getJSDate()Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto :goto_0

    .line 215
    .restart local p2
    :cond_6
    move-object v0, p2

    check-cast v0, Ljava/util/Date;

    move-object v1, v0

    .line 216
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    .line 217
    .local v5, tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v6

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getKrollBridge()Lorg/appcelerator/titanium/kroll/KrollBridge;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    const-string v8, "Date"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto :goto_0

    .line 219
    .end local v1           #date:Ljava/util/Date;
    .end local v5           #tiContext:Lorg/appcelerator/titanium/TiContext;
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 220
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 221
    .local v4, length:I
    new-array v3, v4, [Ljava/lang/Object;

    .line 222
    .local v3, jsArray:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 223
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    :cond_8
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v6

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto/16 :goto_0

    .line 227
    .end local v2           #i:I
    .end local v3           #jsArray:[Ljava/lang/Object;
    .end local v4           #length:I
    :cond_9
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p2, v6, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 229
    :cond_a
    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    .line 231
    :cond_b
    sget-object v6, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    if-ne p2, v6, :cond_c

    .line 232
    invoke-static {}, Lorg/mozilla/javascript/Context;->getUndefinedValue()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    move-object v6, p2

    .line 235
    goto/16 :goto_0
.end method

.method public convertScriptable(Lorg/appcelerator/kroll/KrollInvocation;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 6
    .parameter "invocation"
    .parameter "scriptable"

    .prologue
    const-string v5, "javaException"

    .line 262
    instance-of v3, p2, Lorg/appcelerator/kroll/KrollObject;

    if-eqz v3, :cond_0

    .line 263
    check-cast p2, Lorg/appcelerator/kroll/KrollObject;

    .end local p2
    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollObject;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v2

    .line 264
    .local v2, proxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollProxy;->getNativeValue()Ljava/lang/Object;

    move-result-object v3

    .line 287
    .end local v2           #proxy:Lorg/appcelerator/kroll/KrollProxy;
    :goto_0
    return-object v3

    .line 265
    .restart local p2
    :cond_0
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollConverter;->isArrayLike(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollConverter;->toArray(Lorg/appcelerator/kroll/KrollInvocation;Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 267
    :cond_1
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Date"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    new-instance v3, Lorg/appcelerator/kroll/KrollDate;

    invoke-direct {v3, p2}, Lorg/appcelerator/kroll/KrollDate;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 270
    const-string v3, "javaException"

    invoke-interface {p2, v5, p2}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    const-string v3, "javaException"

    invoke-interface {p2, v5, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/NativeJavaObject;

    .line 272
    .local v1, exception:Lorg/mozilla/javascript/NativeJavaObject;
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeJavaObject;->unwrap()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 274
    .end local v1           #exception:Lorg/mozilla/javascript/NativeJavaObject;
    :cond_3
    const-string v3, "message"

    invoke-interface {p2, v3, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 276
    :cond_4
    instance-of v3, p2, Lorg/mozilla/javascript/Function;

    if-eqz v3, :cond_7

    .line 277
    instance-of v3, p2, Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v3, :cond_5

    move-object v3, p2

    .line 278
    goto :goto_0

    .line 281
    :cond_5
    const/4 v0, 0x0

    .line 282
    .local v0, ctx:Lorg/appcelerator/titanium/kroll/KrollContext;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 283
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v0

    .line 285
    :cond_6
    new-instance v3, Lorg/appcelerator/titanium/kroll/KrollCallback;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getThisObj()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    check-cast p2, Lorg/mozilla/javascript/Function;

    .end local p2
    invoke-direct {v3, v0, v4, v5, p2}, Lorg/appcelerator/titanium/kroll/KrollCallback;-><init>(Lorg/appcelerator/titanium/kroll/KrollContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;)V

    goto :goto_0

    .line 287
    .end local v0           #ctx:Lorg/appcelerator/titanium/kroll/KrollContext;
    .restart local p2
    :cond_7
    new-instance v3, Lorg/appcelerator/kroll/KrollScriptableDict;

    invoke-direct {v3, p2}, Lorg/appcelerator/kroll/KrollScriptableDict;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/appcelerator/kroll/KrollDefaultValues;->getDefault(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isArrayLike(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "scriptable"

    .prologue
    const-string v1, "length"

    .line 241
    const-string v0, "length"

    invoke-interface {p1, v1, p1}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "length"

    invoke-interface {p1, v1, p1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/appcelerator/kroll/KrollObject;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toArray(Lorg/appcelerator/kroll/KrollInvocation;Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 7
    .parameter "invocation"
    .parameter "scriptable"

    .prologue
    .line 249
    const-string v4, "length"

    invoke-interface {p2, v4, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    invoke-static {v4, v5}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 250
    .local v2, len:I
    new-array v0, v2, [Ljava/lang/Object;

    .line 251
    .local v0, a:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 252
    invoke-interface {p2, v1, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    .line 253
    .local v3, v:Ljava/lang/Object;
    sget-boolean v4, Lorg/appcelerator/kroll/KrollConverter;->DBG:Z

    if-eqz v4, :cond_0

    .line 254
    const-string v4, "KrollConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    const-class v4, Ljava/lang/Object;

    invoke-virtual {p0, p1, v3, v4}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v3           #v:Ljava/lang/Object;
    :cond_1
    return-object v0
.end method
