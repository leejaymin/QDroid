.class public Lorg/mozilla/javascript/NativeJavaObject;
.super Ljava/lang/Object;
.source "NativeJavaObject.java"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/Wrapper;
.implements Ljava/io/Serializable;


# static fields
.field private static final COERCED_INTERFACE_KEY:Ljava/lang/Object; = null

.field static final CONVERSION_NONE:B = 0x63t

.field static final CONVERSION_NONTRIVIAL:B = 0x0t

.field static final CONVERSION_TRIVIAL:B = 0x1t

.field private static final JSTYPE_BOOLEAN:I = 0x2

.field private static final JSTYPE_JAVA_ARRAY:I = 0x7

.field private static final JSTYPE_JAVA_CLASS:I = 0x5

.field private static final JSTYPE_JAVA_OBJECT:I = 0x6

.field private static final JSTYPE_NULL:I = 0x1

.field private static final JSTYPE_NUMBER:I = 0x3

.field private static final JSTYPE_OBJECT:I = 0x8

.field private static final JSTYPE_STRING:I = 0x4

.field private static final JSTYPE_UNDEFINED:I = 0x0

.field private static adapter_readAdapterObject:Ljava/lang/reflect/Method; = null

.field private static adapter_writeAdapterObject:Ljava/lang/reflect/Method; = null

.field static final serialVersionUID:J = -0x606e5a61ca3bce1fL


# instance fields
.field private transient fieldAndMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/FieldAndMethods;",
            ">;"
        }
    .end annotation
.end field

.field private transient isAdapter:Z

.field protected transient javaObject:Ljava/lang/Object;

.field protected transient members:Lorg/mozilla/javascript/JavaMembers;

.field protected parent:Lorg/mozilla/javascript/Scriptable;

.field protected prototype:Lorg/mozilla/javascript/Scriptable;

.field protected transient staticType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 975
    const-string v3, "Coerced Interface"

    sput-object v3, Lorg/mozilla/javascript/NativeJavaObject;->COERCED_INTERFACE_KEY:Ljava/lang/Object;

    .line 981
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Class;

    .line 982
    .local v2, sig2:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v3, "org.mozilla.javascript.JavaAdapter"

    invoke-static {v3}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 983
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 985
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 986
    const/4 v3, 0x1

    const-string v4, "java.io.ObjectOutputStream"

    invoke-static {v4}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 987
    const-string v3, "writeAdapterObject"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    .line 990
    const/4 v3, 0x0

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 991
    const/4 v3, 0x1

    const-string v4, "java.io.ObjectInputStream"

    invoke-static {v4}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 992
    const-string v3, "readAdapterObject"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 996
    .local v1, e:Ljava/lang/NoSuchMethodException;
    sput-object v5, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    .line 997
    sput-object v5, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .parameter "scope"
    .parameter "javaObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativeJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V
    .locals 0
    .parameter "scope"
    .parameter "javaObject"
    .parameter
    .parameter "isAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    .line 77
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    .line 78
    iput-object p3, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    .line 79
    iput-boolean p4, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    .line 80
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaObject;->initMembers()V

    .line 81
    return-void
.end method

.method public static canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 2
    .parameter "fromObj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, to:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    .line 241
    .local v0, weight:I
    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 715
    .local v6, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-eq v0, v1, :cond_0

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-ne v0, v1, :cond_2

    .line 716
    :cond_0
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v6

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1

    move-object/from16 p0, p1

    .line 817
    .end local v6           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local p1
    :goto_0
    return-object p0

    .line 719
    .restart local v6       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p1
    :cond_1
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    .end local v6           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-wide/16 v7, 0x0

    const-wide v9, 0x40efffe000000000L

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    move-wide/from16 v0, p0

    long-to-int v0, v0

    move/from16 p0, v0

    move/from16 v0, p0

    int-to-char v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    .line 726
    .restart local v6       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-eq v0, v1, :cond_3

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-eq v0, v1, :cond_3

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-ne v0, v1, :cond_5

    .line 728
    :cond_3
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v6

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_4

    move-object/from16 p0, p1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/Double;

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    .end local v6           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 733
    .restart local v6       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->FloatClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-eq v0, v1, :cond_6

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-ne v0, v1, :cond_e

    .line 734
    :cond_6
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->FloatClass:Ljava/lang/Class;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v6

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_7

    move-object/from16 p0, p1

    .line 735
    goto :goto_0

    .line 738
    :cond_7
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    .line 739
    .local v6, number:D
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_8

    const-wide/16 p0, 0x0

    cmpl-double p0, v6, p0

    if-nez p0, :cond_9

    .line 741
    :cond_8
    new-instance p0, Ljava/lang/Float;

    move-wide v0, v6

    double-to-float v0, v0

    move/from16 p1, v0

    invoke-direct/range {p0 .. p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    .line 744
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 745
    .end local p1
    .local p0, absNumber:D
    const-wide/high16 v8, 0x36a0

    cmpg-double v8, p0, v8

    if-gez v8, :cond_b

    .line 746
    new-instance p0, Ljava/lang/Float;

    .end local p0           #absNumber:D
    const-wide/16 v8, 0x0

    cmpl-double p1, v6, v8

    if-lez p1, :cond_a

    const-wide/16 v6, 0x0

    .end local v6           #number:D
    :goto_1
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Ljava/lang/Float;-><init>(D)V

    goto/16 :goto_0

    .restart local v6       #number:D
    :cond_a
    const-wide/high16 v6, -0x8000

    goto :goto_1

    .line 748
    .restart local p0       #absNumber:D
    :cond_b
    const-wide v8, 0x47efffffe0000000L

    cmpl-double p0, p0, v8

    if-lez p0, :cond_d

    .line 749
    .end local p0           #absNumber:D
    new-instance p0, Ljava/lang/Float;

    const-wide/16 v8, 0x0

    cmpl-double p1, v6, v8

    if-lez p1, :cond_c

    const/high16 p1, 0x7f80

    :goto_2
    invoke-direct/range {p0 .. p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    :cond_c
    const/high16 p1, -0x80

    goto :goto_2

    .line 754
    :cond_d
    new-instance p0, Ljava/lang/Float;

    move-wide v0, v6

    double-to-float v0, v0

    move/from16 p1, v0

    invoke-direct/range {p0 .. p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    .line 761
    .local v6, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p1
    :cond_e
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-eq v0, v1, :cond_f

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-ne v0, v1, :cond_11

    .line 762
    :cond_f
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v6

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_10

    move-object/from16 p0, p1

    .line 763
    goto/16 :goto_0

    .line 766
    :cond_10
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    .end local v6           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-wide/high16 v7, -0x3e20

    const-wide v9, 0x41dfffffffc00000L

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    move-wide/from16 v0, p0

    long-to-int v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    .line 773
    .restart local v6       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_11
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-eq v0, v1, :cond_12

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-ne v0, v1, :cond_14

    .line 774
    :cond_12
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v6

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_13

    move-object/from16 p0, p1

    .line 775
    goto/16 :goto_0

    .line 784
    :cond_13
    const-wide v6, 0x43dfffffffffffffL

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    .end local v6           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-result-wide v9

    .line 785
    .local v9, max:D
    const-wide/high16 v6, -0x3c20

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 786
    .local v7, min:D
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    move-wide v4, v9

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    .line 793
    .end local v7           #min:D
    .end local v9           #max:D
    .restart local v6       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_14
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-eq v0, v1, :cond_15

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-ne v0, v1, :cond_17

    .line 794
    :cond_15
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v6

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_16

    move-object/from16 p0, p1

    .line 795
    goto/16 :goto_0

    .line 798
    :cond_16
    sget-object v12, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    const-wide/high16 v13, -0x3f20

    const-wide v15, 0x40dfffc000000000L

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v16}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    move-wide/from16 v0, p0

    long-to-int v0, v0

    move/from16 p0, v0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    .line 805
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_17
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-eq v0, v1, :cond_18

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v7

    if-ne v0, v1, :cond_1a

    .line 806
    :cond_18
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v6

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_19

    move-object/from16 p0, p1

    .line 807
    goto/16 :goto_0

    .line 810
    :cond_19
    sget-object v12, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    const-wide/high16 v13, -0x3fa0

    const-wide v15, 0x405fc00000000000L

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v16}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide p0

    move-wide/from16 v0, p0

    long-to-int v0, v0

    move/from16 p0, v0

    move/from16 v0, p0

    int-to-byte v0, v0

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    .line 817
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1a
    new-instance p0, Ljava/lang/Double;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    .end local v6           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0
.end method

.method public static coerceType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p0, :cond_0

    move-object p0, p1

    .line 707
    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object p0

    .line 510
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getJSTypeCode(Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object p0, p1

    .line 707
    goto :goto_0

    .line 514
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 517
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 520
    :pswitch_1
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_2

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    .line 522
    :cond_2
    const-string p0, "undefined"

    goto :goto_0

    .line 525
    :cond_3
    const-string v1, "undefined"

    invoke-static {v1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 531
    :pswitch_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_4

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_4

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    :cond_4
    move-object p0, p1

    .line 534
    goto :goto_0

    .line 536
    :cond_5
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 540
    :cond_6
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 545
    :pswitch_3
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    .line 546
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 548
    :cond_7
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    .line 549
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 551
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_a

    :cond_9
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 553
    :cond_a
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 556
    :cond_b
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 561
    :pswitch_4
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    move-object p0, p1

    .line 562
    goto :goto_0

    .line 564
    :cond_d
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_e

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_10

    .line 571
    :cond_e
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 572
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    .line 575
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_f
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 578
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_12

    :cond_11
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 581
    :cond_12
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 584
    :cond_13
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 589
    :pswitch_5
    instance-of v1, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_14

    .line 590
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .end local p1
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    .line 593
    .restart local p1
    :cond_14
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_15

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_16

    :cond_15
    move-object p0, p1

    .line 595
    goto/16 :goto_0

    .line 597
    :cond_16
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_17

    .line 598
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 601
    :cond_17
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 607
    :pswitch_6
    instance-of v1, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_18

    .line 608
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .end local p1
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    .line 610
    .restart local p1
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 611
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_19

    .line 612
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 614
    :cond_19
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 617
    :cond_1a
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_1b

    .line 618
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 621
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object p0, p1

    .line 622
    goto/16 :goto_0

    .line 625
    :cond_1c
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 632
    :pswitch_7
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_1d

    .line 633
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 635
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 636
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1e

    .line 637
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 639
    :cond_1e
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 641
    :cond_1f
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object p0, p1

    .line 642
    goto/16 :goto_0

    .line 644
    :cond_20
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->DateClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_21

    instance-of v1, p1, Lorg/mozilla/javascript/NativeDate;

    if-eqz v1, :cond_21

    .line 647
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeDate;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeDate;->getJSTimeValue()D

    move-result-wide v1

    .line 649
    .local v1, time:D
    new-instance p0, Ljava/util/Date;

    .end local p0           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    double-to-long v1, v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 651
    .end local v1           #time:D
    .restart local p0       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_23

    instance-of v1, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_23

    .line 654
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v2, v0

    .line 655
    .local v2, array:Lorg/mozilla/javascript/NativeArray;
    invoke-virtual {v2}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v6

    .line 656
    .local v6, length:J
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 657
    .local v3, arrayType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    long-to-int v1, v6

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 658
    .local v1, Result:Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_2
    int-to-long v8, v5

    cmp-long v4, v8, v6

    if-gez v4, :cond_22

    .line 660
    :try_start_0
    invoke-virtual {v2, v5, v2}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeJavaObject;->coerceType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v5, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_3
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 663
    :catch_0
    move-exception v4

    .line 664
    .local v4, ee:Lorg/mozilla/javascript/EvaluatorException;
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_3

    .end local v4           #ee:Lorg/mozilla/javascript/EvaluatorException;
    :cond_22
    move-object p0, v1

    .line 668
    goto/16 :goto_0

    .line 670
    .end local v1           #Result:Ljava/lang/Object;
    .end local v2           #array:Lorg/mozilla/javascript/NativeArray;
    .end local v3           #arrayType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #i:I
    .end local v6           #length:J
    :cond_23
    instance-of v1, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_25

    .line 671
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .end local p1
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    .line 672
    .restart local p1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move-object p0, p1

    .line 673
    goto/16 :goto_0

    .line 674
    :cond_24
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 676
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_28

    instance-of v1, p1, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_28

    .line 684
    instance-of v1, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v1, :cond_27

    .line 685
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v3, v0

    .line 686
    .local v3, so:Lorg/mozilla/javascript/ScriptableObject;
    sget-object v1, Lorg/mozilla/javascript/NativeJavaObject;->COERCED_INTERFACE_KEY:Ljava/lang/Object;

    invoke-static {v1, p0}, Lorg/mozilla/javascript/Kit;->makeHashKeyFromPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 688
    .local v2, key:Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 689
    .local v1, old:Ljava/lang/Object;
    if-eqz v1, :cond_26

    move-object p0, v1

    .line 691
    goto/16 :goto_0

    .line 693
    :cond_26
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 694
    .local v1, cx:Lorg/mozilla/javascript/Context;
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v4, v0

    invoke-static {v1, p0, v4}, Lorg/mozilla/javascript/InterfaceAdapter;->create(Lorg/mozilla/javascript/Context;Ljava/lang/Class;Lorg/mozilla/javascript/Callable;)Ljava/lang/Object;

    move-result-object p0

    .line 697
    .local p0, glue:Ljava/lang/Object;
    invoke-virtual {v3, v2, p0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 698
    goto/16 :goto_0

    .line 700
    .end local v1           #cx:Lorg/mozilla/javascript/Context;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #so:Lorg/mozilla/javascript/ScriptableObject;
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_27
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 702
    :cond_28
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 8
    .parameter "fromObj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p1, to:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v7, 0x63

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 268
    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaObject;->getJSTypeCode(Ljava/lang/Object;)I

    move-result v0

    .line 270
    .local v0, fromCode:I
    packed-switch v0, :pswitch_data_0

    :cond_0
    move v2, v7

    .line 412
    :goto_0
    return v2

    .line 273
    :pswitch_0
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p1, v2, :cond_1

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    :cond_1
    move v2, v3

    .line 275
    goto :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 281
    goto :goto_0

    .line 287
    :pswitch_2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_2

    move v2, v3

    .line 288
    goto :goto_0

    .line 290
    :cond_2
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    move v2, v4

    .line 291
    goto :goto_0

    .line 293
    :cond_3
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_4

    move v2, v5

    .line 294
    goto :goto_0

    .line 296
    :cond_4
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    move v2, v6

    .line 297
    goto :goto_0

    .line 302
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 303
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5

    move v2, v3

    .line 304
    goto :goto_0

    .line 306
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_0

    .line 307
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_6
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_7

    .line 313
    const/16 v2, 0x9

    goto :goto_0

    .line 315
    :cond_7
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_8

    .line 316
    const/16 v2, 0xa

    goto :goto_0

    .line 318
    :cond_8
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 320
    goto :goto_0

    .line 326
    :pswitch_4
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_9

    move v2, v3

    .line 327
    goto :goto_0

    .line 329
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    .line 330
    goto :goto_0

    .line 332
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_b

    move v2, v5

    .line 334
    goto :goto_0

    .line 335
    :cond_b
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_0

    move v2, v6

    .line 336
    goto :goto_0

    .line 342
    :pswitch_5
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_c

    move v2, v3

    .line 343
    goto :goto_0

    .line 345
    :cond_c
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_d

    move v2, v5

    .line 346
    goto/16 :goto_0

    .line 348
    :cond_d
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    move v2, v6

    .line 349
    goto/16 :goto_0

    .line 355
    :pswitch_6
    move-object v1, p0

    .line 356
    .local v1, javaObj:Ljava/lang/Object;
    instance-of v2, v1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_e

    .line 357
    check-cast v1, Lorg/mozilla/javascript/Wrapper;

    .end local v1           #javaObj:Ljava/lang/Object;
    invoke-interface {v1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v1

    .line 359
    .restart local v1       #javaObj:Ljava/lang/Object;
    :cond_e
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 360
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 362
    :cond_f
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_10

    move v2, v4

    .line 363
    goto/16 :goto_0

    .line 365
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_0

    .line 366
    const/4 v2, 0x7

    if-ne v0, v2, :cond_11

    move v2, v7

    goto/16 :goto_0

    :cond_11
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 373
    .end local v1           #javaObj:Ljava/lang/Object;
    :pswitch_7
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p1, v2, :cond_12

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v3

    .line 375
    goto/16 :goto_0

    .line 377
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 378
    instance-of v2, p0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v2, :cond_0

    move v2, v3

    .line 382
    goto/16 :goto_0

    .line 385
    :cond_13
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_14

    move v2, v4

    .line 386
    goto/16 :goto_0

    .line 388
    :cond_14
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_15

    move v2, v5

    .line 389
    goto/16 :goto_0

    .line 391
    :cond_15
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->DateClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_16

    .line 392
    instance-of v2, p0, Lorg/mozilla/javascript/NativeDate;

    if-eqz v2, :cond_0

    move v2, v3

    .line 394
    goto/16 :goto_0

    .line 397
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 398
    instance-of v2, p0, Lorg/mozilla/javascript/Function;

    if-eqz v2, :cond_17

    .line 400
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v3, :cond_17

    move v2, v3

    .line 401
    goto/16 :goto_0

    .line 404
    :cond_17
    const/16 v2, 0xb

    goto/16 :goto_0

    .line 406
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_0

    .line 407
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getJSTypeCode(Ljava/lang/Object;)I
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    .line 446
    if-nez p0, :cond_0

    .line 447
    const/4 v1, 0x1

    .line 484
    :goto_0
    return v1

    .line 449
    :cond_0
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    .line 450
    const/4 v1, 0x0

    goto :goto_0

    .line 452
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 453
    const/4 v1, 0x4

    goto :goto_0

    .line 455
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 456
    const/4 v1, 0x3

    goto :goto_0

    .line 458
    :cond_3
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 459
    const/4 v1, 0x2

    goto :goto_0

    .line 461
    :cond_4
    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_8

    .line 462
    instance-of v1, p0, Lorg/mozilla/javascript/NativeJavaClass;

    if-eqz v1, :cond_5

    move v1, v2

    .line 463
    goto :goto_0

    .line 465
    :cond_5
    instance-of v1, p0, Lorg/mozilla/javascript/NativeJavaArray;

    if-eqz v1, :cond_6

    move v1, v4

    .line 466
    goto :goto_0

    .line 468
    :cond_6
    instance-of v1, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_7

    move v1, v3

    .line 469
    goto :goto_0

    .line 472
    :cond_7
    const/16 v1, 0x8

    goto :goto_0

    .line 475
    :cond_8
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_9

    move v1, v2

    .line 476
    goto :goto_0

    .line 479
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 480
    .local v0, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    .line 481
    goto :goto_0

    :cond_a
    move v1, v3

    .line 484
    goto :goto_0
.end method

.method static getSizeRank(Ljava/lang/Class;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, aType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 417
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    .line 419
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 420
    const/4 v0, 0x2

    goto :goto_0

    .line 422
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 423
    const/4 v0, 0x3

    goto :goto_0

    .line 425
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 426
    const/4 v0, 0x4

    goto :goto_0

    .line 428
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 429
    const/4 v0, 0x5

    goto :goto_0

    .line 431
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 432
    const/4 v0, 0x6

    goto :goto_0

    .line 434
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 435
    const/4 v0, 0x7

    goto :goto_0

    .line 437
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 438
    const/16 v0, 0x63

    goto :goto_0

    .line 441
    :cond_7
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 932
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 934
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    .line 935
    iget-boolean v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    if-eqz v3, :cond_1

    .line 936
    sget-object v3, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 937
    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-direct {v3}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v3

    .line 938
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    const/4 v3, 0x1

    aput-object p1, v0, v3

    .line 940
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 949
    .local v1, className:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 950
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    .line 955
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaObject;->initMembers()V

    .line 956
    return-void

    .line 941
    .end local v1           #className:Ljava/lang/String;
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 942
    .local v2, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 945
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    goto :goto_0

    .line 952
    .restart local v1       #className:Ljava/lang/String;
    :cond_2
    iput-object v5, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    goto :goto_1
.end method

.method static reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "msg.conversion.not.allowed"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method private static toDouble(Ljava/lang/Object;)D
    .locals 5
    .parameter "value"

    .prologue
    .line 823
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 824
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 864
    :goto_0
    return-wide v2

    .line 826
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 827
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0

    .line 829
    .restart local p0
    :cond_1
    instance-of v2, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_3

    .line 830
    instance-of v2, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_2

    .line 832
    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    .end local p0
    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_0

    .line 835
    .restart local p0
    :cond_2
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_0

    .line 841
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "doubleValue"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 850
    .local v1, meth:Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_4

    .line 852
    const/4 v2, 0x0

    :try_start_1
    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v2

    goto :goto_0

    .line 844
    .end local v1           #meth:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 845
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    .line 849
    .restart local v1       #meth:Ljava/lang/reflect/Method;
    goto :goto_1

    .line 847
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .end local v1           #meth:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 848
    .local v0, e:Ljava/lang/SecurityException;
    const/4 v1, 0x0

    .restart local v1       #meth:Ljava/lang/reflect/Method;
    goto :goto_1

    .line 855
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 857
    .local v0, e:Ljava/lang/IllegalAccessException;
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 864
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0

    .line 859
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 861
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2
.end method

.method private static toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J
    .locals 4
    .parameter "value"
    .parameter
    .parameter "min"
    .parameter "max"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;DD)J"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 873
    .local v0, d:D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 878
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_4

    .line 879
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 885
    :goto_0
    cmpg-double v2, v0, p2

    if-ltz v2, :cond_2

    cmpl-double v2, v0, p4

    if-lez v2, :cond_3

    .line 887
    :cond_2
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 889
    :cond_3
    double-to-long v2, v0

    return-wide v2

    .line 882
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static wrap(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "scope"
    .parameter "obj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 184
    .local v0, cx:Lorg/mozilla/javascript/Context;
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1, p2}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 905
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 907
    iget-boolean v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 908
    iget-boolean v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    if-eqz v2, :cond_1

    .line 909
    sget-object v2, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 910
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 912
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 914
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 923
    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 927
    :goto_1
    return-void

    .line 915
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 916
    .local v1, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 919
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 925
    :cond_2
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public delete(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 143
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 140
    return-void
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "start"

    .prologue
    .line 117
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4
    .parameter "name"
    .parameter "start"

    .prologue
    .line 105
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->fieldAndMethods:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->fieldAndMethods:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, result:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 113
    .end local v0           #result:Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, p1, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "JavaObject"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
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
    .line 198
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 199
    iget-object v6, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    .line 200
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v6, :cond_2

    .line 204
    :cond_1
    iget-object v6, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    .end local p0
    :goto_0
    return-object v5

    .line 207
    .restart local p0
    :cond_2
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v6, :cond_3

    .line 208
    const-string v2, "booleanValue"

    .line 214
    .local v2, converterName:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2, p0}, Lorg/mozilla/javascript/NativeJavaObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    .line 215
    .local v3, converterObject:Ljava/lang/Object;
    instance-of v6, v3, Lorg/mozilla/javascript/Function;

    if-eqz v6, :cond_5

    .line 216
    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v4, v0

    .line 217
    .local v4, f:Lorg/mozilla/javascript/Function;
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v6

    invoke-interface {v4}, Lorg/mozilla/javascript/Function;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v4, v6, v7, p0, v8}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 219
    .local v5, value:Ljava/lang/Object;
    goto :goto_0

    .line 209
    .end local v2           #converterName:Ljava/lang/String;
    .end local v3           #converterObject:Ljava/lang/Object;
    .end local v4           #f:Lorg/mozilla/javascript/Function;
    .end local v5           #value:Ljava/lang/Object;
    :cond_3
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v6, :cond_4

    .line 210
    const-string v2, "doubleValue"

    .restart local v2       #converterName:Ljava/lang/String;
    goto :goto_1

    .line 212
    .end local v2           #converterName:Ljava/lang/String;
    :cond_4
    const-string v6, "msg.default.value"

    invoke-static {v6}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v6

    throw v6

    .line 220
    .restart local v2       #converterName:Ljava/lang/String;
    .restart local v3       #converterObject:Ljava/lang/Object;
    :cond_5
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v6, :cond_7

    iget-object v6, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_7

    .line 223
    iget-object p0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 224
    .local v1, b:Z
    if-eqz v1, :cond_6

    const-wide/high16 v6, 0x3ff0

    :goto_2
    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    .line 225
    .local v5, value:Ljava/lang/Number;
    goto :goto_0

    .line 224
    .end local v5           #value:Ljava/lang/Number;
    :cond_6
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 226
    .end local v1           #b:Z
    .restart local p0
    :cond_7
    iget-object v6, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, value:Ljava/lang/String;
    goto :goto_0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->getIds(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    const-string v1, "String"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    goto :goto_0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "name"
    .parameter "start"

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method protected initMembers()V
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, dynamicType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    iget-boolean v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-static {v1, v0, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->lookupClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/mozilla/javascript/JavaMembers;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    .line 92
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->getFieldAndMethodsObjects(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->fieldAndMethods:Ljava/util/Map;

    .line 94
    return-void

    .line 88
    .end local v0           #dynamicType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    .restart local v0       #dynamicType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 131
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 6
    .parameter "name"
    .parameter "start"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-virtual {v0, p1, v5}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/JavaMembers;->put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, v1, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 170
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    .line 171
    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 156
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 157
    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    return-object v0
.end method
