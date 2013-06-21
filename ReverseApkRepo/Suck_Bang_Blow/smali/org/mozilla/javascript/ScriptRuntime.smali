.class public Lorg/mozilla/javascript/ScriptRuntime;
.super Ljava/lang/Object;
.source "ScriptRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ScriptRuntime$DefaultMessageProvider;,
        Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;,
        Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;,
        Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;
    }
.end annotation


# static fields
.field public static final BooleanClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final ByteClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final CharacterClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final ClassClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final ContextClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final ContextFactoryClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_NS_TAG:Ljava/lang/String; = "__default_namespace__"

.field public static final DateClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final DoubleClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final ENUMERATE_ARRAY:I = 0x2

.field public static final ENUMERATE_ARRAY_NO_ITERATOR:I = 0x5

.field public static final ENUMERATE_KEYS:I = 0x0

.field public static final ENUMERATE_KEYS_NO_ITERATOR:I = 0x3

.field public static final ENUMERATE_VALUES:I = 0x1

.field public static final ENUMERATE_VALUES_NO_ITERATOR:I = 0x4

.field public static final FloatClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final FunctionClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final IntegerClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LIBRARY_SCOPE_KEY:Ljava/lang/Object; = null

.field public static final LongClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MSJVM_BUG_WORKAROUNDS:Z = true

.field public static final NaN:D

.field public static final NaNobj:Ljava/lang/Double;

.field public static final NumberClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final ObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static ROOT_LOCALE:Ljava/util/Locale;

.field public static final ScriptableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lorg/mozilla/javascript/Scriptable;",
            ">;"
        }
    .end annotation
.end field

.field public static final ScriptableObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final ShortClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final StringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static THROW_TYPE_ERROR:Lorg/mozilla/javascript/BaseFunction;

.field public static final emptyArgs:[Ljava/lang/Object;

.field public static final emptyStrings:[Ljava/lang/String;

.field private static final lazilyNames:[Ljava/lang/String;

.field public static messageProvider:Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;

.field public static final negativeZero:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, "(xml)"

    const-string v3, "org.mozilla.javascript.NativeJavaTopPackage"

    .line 98
    sput-object v6, Lorg/mozilla/javascript/ScriptRuntime;->THROW_TYPE_ERROR:Lorg/mozilla/javascript/BaseFunction;

    .line 140
    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    .line 141
    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    .line 142
    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    .line 143
    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    .line 144
    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    .line 145
    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->FloatClass:Ljava/lang/Class;

    .line 146
    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    .line 147
    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    .line 148
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    .line 149
    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    .line 150
    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    .line 151
    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    .line 152
    const-string v0, "java.util.Date"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DateClass:Ljava/lang/Class;

    .line 155
    const-string v0, "org.mozilla.javascript.Context"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    .line 157
    const-string v0, "org.mozilla.javascript.ContextFactory"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    .line 159
    const-string v0, "org.mozilla.javascript.Function"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    .line 161
    const-string v0, "org.mozilla.javascript.ScriptableObject"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableObjectClass:Ljava/lang/Class;

    .line 163
    const-class v0, Lorg/mozilla/javascript/Scriptable;

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    .line 166
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RegExp"

    aput-object v1, v0, v5

    const/4 v1, 0x1

    const-string v2, "org.mozilla.javascript.regexp.NativeRegExp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Packages"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.mozilla.javascript.NativeJavaTopPackage"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, "java"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "org.mozilla.javascript.NativeJavaTopPackage"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "javax"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "org.mozilla.javascript.NativeJavaTopPackage"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, "org"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "org.mozilla.javascript.NativeJavaTopPackage"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, "com"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "org.mozilla.javascript.NativeJavaTopPackage"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org.mozilla.javascript.NativeJavaTopPackage"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "org.mozilla.javascript.NativeJavaTopPackage"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v2, "getClass"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "org.mozilla.javascript.NativeJavaTopPackage"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "JavaAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "org.mozilla.javascript.JavaAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "JavaImporter"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "org.mozilla.javascript.ImporterTopLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Continuation"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "org.mozilla.javascript.NativeContinuation"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "XML"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "(xml)"

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    const-string v2, "XMLList"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "(xml)"

    aput-object v4, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Namespace"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "(xml)"

    aput-object v4, v0, v1

    const/16 v1, 0x1e

    const-string v2, "QName"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "(xml)"

    aput-object v4, v0, v1

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->lazilyNames:[Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ROOT_LOCALE:Ljava/util/Locale;

    .line 190
    const-string v0, "LIBRARY_SCOPE"

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->LIBRARY_SCOPE_KEY:Ljava/lang/Object;

    .line 420
    const-wide/high16 v0, 0x7ff8

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    .line 424
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    .line 426
    new-instance v0, Ljava/lang/Double;

    sget-wide v1, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 3695
    new-instance v0, Lorg/mozilla/javascript/ScriptRuntime$DefaultMessageProvider;

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/ScriptRuntime$DefaultMessageProvider;-><init>(Lorg/mozilla/javascript/ScriptRuntime$1;)V

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->messageProvider:Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;

    .line 4045
    new-array v0, v5, [Ljava/lang/Object;

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 4046
    new-array v0, v5, [Ljava/lang/String;

    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyStrings:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 7
    .parameter "val1"
    .parameter "val2"
    .parameter "cx"

    .prologue
    const/4 v4, 0x0

    .line 2633
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 2634
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    add-double v2, v3, v5

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    .line 2659
    :goto_0
    return-object v2

    .line 2637
    .restart local p0
    :cond_0
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v2, :cond_1

    .line 2638
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3, p1}, Lorg/mozilla/javascript/xml/XMLObject;->addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2639
    .local v1, test:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    move-object v2, v1

    .line 2640
    goto :goto_0

    .line 2643
    .end local v1           #test:Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v2, :cond_2

    .line 2644
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, p0}, Lorg/mozilla/javascript/xml/XMLObject;->addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2645
    .restart local v1       #test:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    move-object v2, v1

    .line 2646
    goto :goto_0

    .line 2649
    .end local v1           #test:Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_3

    .line 2650
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    invoke-interface {p0, v4}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 2651
    .restart local p0
    :cond_3
    instance-of v2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_4

    .line 2652
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    invoke-interface {p1, v4}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 2653
    .restart local p1
    :cond_4
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_6

    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_6

    .line 2654
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_5

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_5

    .line 2655
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    add-double v2, v3, v5

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    goto :goto_0

    .line 2658
    .restart local p0
    :cond_5
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    goto :goto_0

    .line 2659
    :cond_6
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "val1"
    .parameter "val2"

    .prologue
    .line 2667
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "val1"
    .parameter "val2"

    .prologue
    .line 2663
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addInstructionCount(Lorg/mozilla/javascript/Context;I)V
    .locals 2
    .parameter "cx"
    .parameter "instructionsToAdd"

    .prologue
    .line 3203
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 3204
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-le v0, v1, :cond_0

    .line 3206
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    .line 3207
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 3209
    :cond_0
    return-void
.end method

.method public static applyOrCall(ZLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "isApply"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2477
    array-length v0, p4

    .line 2478
    .local v0, L:I
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    .line 2480
    .local v3, function:Lorg/mozilla/javascript/Callable;
    const/4 v2, 0x0

    .line 2481
    .local v2, callThis:Lorg/mozilla/javascript/Scriptable;
    if-eqz v0, :cond_0

    .line 2482
    aget-object v4, p4, v6

    invoke-static {p1, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 2484
    :cond_0
    if-nez v2, :cond_1

    .line 2486
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 2490
    :cond_1
    if-eqz p0, :cond_3

    .line 2492
    if-gt v0, v5, :cond_2

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object v1, v4

    .line 2504
    .local v1, callArgs:[Ljava/lang/Object;
    :goto_0
    invoke-interface {v3, p1, p2, v2, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 2492
    .end local v1           #callArgs:[Ljava/lang/Object;
    :cond_2
    aget-object v4, p4, v5

    invoke-static {p1, v4}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 2496
    :cond_3
    if-gt v0, v5, :cond_4

    .line 2497
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .restart local v1       #callArgs:[Ljava/lang/Object;
    goto :goto_0

    .line 2499
    .end local v1           #callArgs:[Ljava/lang/Object;
    :cond_4
    sub-int v4, v0, v5

    new-array v1, v4, [Ljava/lang/Object;

    .line 2500
    .restart local v1       #callArgs:[Ljava/lang/Object;
    sub-int v4, v0, v5

    invoke-static {p4, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 6
    .parameter "cx"
    .parameter "scope"
    .parameter "id"

    .prologue
    .line 1875
    const/4 v1, 0x0

    .line 1876
    .local v1, firstXMLObject:Lorg/mozilla/javascript/Scriptable;
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1877
    .local v2, parent:Lorg/mozilla/javascript/Scriptable;
    if-eqz v2, :cond_3

    .line 1879
    :cond_0
    instance-of v5, p1, Lorg/mozilla/javascript/NativeWith;

    if-eqz v5, :cond_6

    .line 1880
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 1881
    .local v3, withObj:Lorg/mozilla/javascript/Scriptable;
    instance-of v5, v3, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v5, :cond_5

    .line 1882
    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v4, v0

    .line 1883
    .local v4, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v4, p0, p2}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaHas(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    .line 1920
    .end local v3           #withObj:Lorg/mozilla/javascript/Scriptable;
    .end local v4           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object v5

    .line 1886
    .restart local v3       #withObj:Lorg/mozilla/javascript/Scriptable;
    .restart local v4       #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_1
    if-nez v1, :cond_2

    .line 1887
    move-object v1, v4

    .line 1894
    .end local v4           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_2
    move-object p1, v2

    .line 1895
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1896
    if-nez v2, :cond_0

    .line 1912
    .end local v3           #withObj:Lorg/mozilla/javascript/Scriptable;
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    if-eqz v5, :cond_4

    .line 1913
    iget-object v5, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v5, p1}, Lorg/mozilla/javascript/ScriptRuntime;->checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1915
    :cond_4
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, p1

    .line 1916
    goto :goto_0

    .line 1890
    .restart local v3       #withObj:Lorg/mozilla/javascript/Scriptable;
    :cond_5
    invoke-static {v3, p2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 1891
    goto :goto_0

    .line 1901
    .end local v3           #withObj:Lorg/mozilla/javascript/Scriptable;
    :cond_6
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, p1

    .line 1902
    goto :goto_0

    .line 1904
    :cond_7
    move-object p1, v2

    .line 1905
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1906
    if-nez v2, :cond_6

    goto :goto_1

    :cond_8
    move-object v5, v1

    .line 1920
    goto :goto_0
.end method

.method public static call(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4
    .parameter "cx"
    .parameter "fun"
    .parameter "thisArg"
    .parameter "args"
    .parameter "scope"

    .prologue
    .line 1049
    instance-of v3, p1, Lorg/mozilla/javascript/Function;

    if-nez v3, :cond_0

    .line 1050
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1052
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v1, v0

    .line 1053
    .local v1, function:Lorg/mozilla/javascript/Function;
    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1054
    .local v2, thisObj:Lorg/mozilla/javascript/Scriptable;
    if-nez v2, :cond_1

    .line 1055
    const-string v3, "function"

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1057
    :cond_1
    invoke-interface {v1, p0, p4, v2, p3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;
    .locals 7
    .parameter "function"
    .parameter "thisObj"
    .parameter "args"
    .parameter "cx"

    .prologue
    .line 2397
    instance-of v4, p0, Lorg/mozilla/javascript/RefCallable;

    if-eqz v4, :cond_0

    .line 2398
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/RefCallable;

    move-object v3, v0

    .line 2399
    .local v3, rfunction:Lorg/mozilla/javascript/RefCallable;
    invoke-interface {v3, p3, p1, p2}, Lorg/mozilla/javascript/RefCallable;->refCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Ref;

    move-result-object v2

    .line 2400
    .local v2, ref:Lorg/mozilla/javascript/Ref;
    if-nez v2, :cond_1

    .line 2401
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".refCall() returned null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2406
    .end local v2           #ref:Lorg/mozilla/javascript/Ref;
    .end local v3           #rfunction:Lorg/mozilla/javascript/RefCallable;
    :cond_0
    const-string v4, "msg.no.ref.from.function"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2408
    .local v1, msg:Ljava/lang/String;
    const-string v4, "ReferenceError"

    invoke-static {v4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 2403
    .end local v1           #msg:Ljava/lang/String;
    .restart local v2       #ref:Lorg/mozilla/javascript/Ref;
    .restart local v3       #rfunction:Lorg/mozilla/javascript/RefCallable;
    :cond_1
    return-object v2
.end method

.method public static callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .parameter "cx"
    .parameter "fun"
    .parameter "thisObj"
    .parameter "args"
    .parameter "scope"
    .parameter "callerThis"
    .parameter "callType"
    .parameter "filename"
    .parameter "lineNumber"

    .prologue
    .line 2432
    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 2433
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->isEvalFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p3

    move-object v4, p7

    move v5, p8

    .line 2434
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->evalSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 2446
    :goto_0
    return-object v0

    .line 2437
    :cond_0
    const/4 v0, 0x2

    if-ne p6, v0, :cond_1

    .line 2438
    invoke-static {p1}, Lorg/mozilla/javascript/NativeWith;->isWithFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2439
    const-string v0, "msg.only.from.new"

    const-string v1, "With"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    .line 2443
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2446
    :cond_2
    invoke-interface {p1, p0, p4, p2, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static checkDeprecated(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "cx"
    .parameter "name"

    .prologue
    .line 3635
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    .line 3636
    .local v1, version:I
    const/16 v2, 0x8c

    if-ge v1, v2, :cond_0

    if-nez v1, :cond_1

    .line 3637
    :cond_0
    const-string v2, "msg.deprec.ctor"

    invoke-static {v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3638
    .local v0, msg:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 3639
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 3643
    .end local v0           #msg:Ljava/lang/String;
    :cond_1
    return-void

    .line 3641
    .restart local v0       #msg:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    throw v2
.end method

.method static checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "possibleDynamicScope"
    .parameter "staticTopScope"

    .prologue
    .line 3186
    if-ne p0, p1, :cond_0

    move-object v1, p0

    .line 3196
    :goto_0
    return-object v1

    .line 3189
    :cond_0
    move-object v0, p0

    .line 3191
    .local v0, proto:Lorg/mozilla/javascript/Scriptable;
    :cond_1
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 3192
    if-ne v0, p1, :cond_2

    move-object v1, p0

    .line 3193
    goto :goto_0

    .line 3195
    :cond_2
    if-nez v0, :cond_1

    move-object v1, p1

    .line 3196
    goto :goto_0
.end method

.method public static checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;
    .locals 2
    .parameter "cx"

    .prologue
    .line 3885
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    .line 3886
    .local v0, result:Lorg/mozilla/javascript/RegExpProxy;
    if-nez v0, :cond_0

    .line 3887
    const-string v1, "msg.no.regexp"

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1

    .line 3889
    :cond_0
    return-object v0
.end method

.method public static cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter "val1"
    .parameter "val2"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3093
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_0

    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_0

    .line 3094
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 3095
    .local v1, d1:D
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 3107
    .local v3, d2:D
    :goto_0
    cmpg-double v5, v1, v3

    if-gtz v5, :cond_5

    move v5, v7

    .end local v1           #d1:D
    .end local v3           #d2:D
    .end local p0
    :goto_1
    return v5

    .line 3097
    .restart local p0
    :cond_0
    instance-of v5, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_1

    .line 3098
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p0, v5}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 3099
    .restart local p0
    :cond_1
    instance-of v5, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_2

    .line 3100
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p1, v5}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3101
    .restart local p1
    :cond_2
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_4

    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 3102
    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_1

    .line 3104
    .restart local p0
    :cond_4
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    .line 3105
    .restart local v1       #d1:D
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    .restart local v3       #d2:D
    goto :goto_0

    :cond_5
    move v5, v6

    .line 3107
    goto :goto_1
.end method

.method public static cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter "val1"
    .parameter "val2"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3073
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_0

    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_0

    .line 3074
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 3075
    .local v1, d1:D
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 3087
    .local v3, d2:D
    :goto_0
    cmpg-double v5, v1, v3

    if-gez v5, :cond_5

    move v5, v7

    .end local v1           #d1:D
    .end local v3           #d2:D
    .end local p0
    :goto_1
    return v5

    .line 3077
    .restart local p0
    :cond_0
    instance-of v5, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_1

    .line 3078
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p0, v5}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 3079
    .restart local p0
    :cond_1
    instance-of v5, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_2

    .line 3080
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p1, v5}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3081
    .restart local p1
    :cond_2
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_4

    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 3082
    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_1

    .line 3084
    .restart local p0
    :cond_4
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    .line 3085
    .restart local v1       #d1:D
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    .restart local v3       #d2:D
    goto :goto_0

    :cond_5
    move v5, v6

    .line 3087
    goto :goto_1
.end method

.method public static constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 7
    .parameter "error"
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 3737
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 3738
    .local v6, linep:[I
    invoke-static {v6}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v2

    .line 3739
    .local v2, filename:Ljava/lang/String;
    aget v3, v6, v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    return-object v0
.end method

.method public static constructError(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/EcmaError;
    .locals 7
    .parameter "error"
    .parameter "message"
    .parameter "lineNumberDelta"

    .prologue
    const/4 v5, 0x0

    .line 3746
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 3747
    .local v6, linep:[I
    invoke-static {v6}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v2

    .line 3748
    .local v2, filename:Ljava/lang/String;
    aget v0, v6, v5

    if-eqz v0, :cond_0

    .line 3749
    aget v0, v6, v5

    add-int/2addr v0, p2

    aput v0, v6, v5

    .line 3751
    :cond_0
    aget v3, v6, v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    return-object v0
.end method

.method public static constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;
    .locals 7
    .parameter "error"
    .parameter "message"
    .parameter "sourceName"
    .parameter "lineNumber"
    .parameter "lineSource"
    .parameter "columnNumber"

    .prologue
    .line 3761
    new-instance v0, Lorg/mozilla/javascript/EcmaError;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/EcmaError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v0
.end method

.method public static createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "funObj"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 3256
    new-instance v0, Lorg/mozilla/javascript/NativeCall;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativeCall;-><init>(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;
    .locals 2
    .parameter "cx"

    .prologue
    .line 3895
    iget-object v1, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-nez v1, :cond_0

    .line 3896
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3898
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

    .line 3899
    .local v0, xmlLib:Lorg/mozilla/javascript/xml/XMLLib;
    if-nez v0, :cond_2

    .line 3900
    iget-object v1, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/xml/XMLLib;->extractFromScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v0

    .line 3901
    if-nez v0, :cond_1

    .line 3902
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3903
    :cond_1
    iput-object v0, p0, Lorg/mozilla/javascript/Context;->cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

    .line 3906
    :cond_2
    return-object v0
.end method

.method static defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 13
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v12, 0x0

    const-string v10, ", "

    .line 889
    iget-object v10, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    if-nez v10, :cond_2

    .line 890
    const/4 v8, 0x1

    .line 891
    .local v8, toplevel:Z
    const/4 v5, 0x0

    .line 892
    .local v5, iterating:Z
    new-instance v10, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v11, 0x1f

    invoke-direct {v10, v11}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v10, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    .line 898
    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v10, 0x80

    invoke-direct {v6, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 899
    .local v6, result:Ljava/lang/StringBuffer;
    if-eqz v8, :cond_0

    .line 900
    const-string v10, "("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 902
    :cond_0
    const/16 v10, 0x7b

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 907
    if-nez v5, :cond_9

    .line 908
    :try_start_0
    iget-object v10, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v10, p2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v3

    .line 910
    .local v3, ids:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v10, v3

    if-ge v1, v10, :cond_9

    .line 911
    aget-object v2, v3, v1

    .line 913
    .local v2, id:Ljava/lang/Object;
    instance-of v10, v2, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    .line 914
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #id:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 915
    .local v4, intId:I
    invoke-interface {p2, v4, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v9

    .line 916
    .local v9, value:Ljava/lang/Object;
    sget-object v10, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v9, v10, :cond_3

    .line 910
    .end local v4           #intId:I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 894
    .end local v1           #i:I
    .end local v3           #ids:[Ljava/lang/Object;
    .end local v5           #iterating:Z
    .end local v6           #result:Ljava/lang/StringBuffer;
    .end local v8           #toplevel:Z
    .end local v9           #value:Ljava/lang/Object;
    :cond_2
    const/4 v8, 0x0

    .line 895
    .restart local v8       #toplevel:Z
    iget-object v10, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v10, p2}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v5

    .restart local v5       #iterating:Z
    goto :goto_0

    .line 918
    .restart local v1       #i:I
    .restart local v3       #ids:[Ljava/lang/Object;
    .restart local v4       #intId:I
    .restart local v6       #result:Ljava/lang/StringBuffer;
    .restart local v9       #value:Ljava/lang/Object;
    :cond_3
    if-lez v1, :cond_4

    .line 919
    :try_start_1
    const-string v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 920
    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 937
    .end local v4           #intId:I
    :goto_3
    const/16 v10, 0x3a

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 938
    invoke-static {p0, p1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 942
    .end local v1           #i:I
    .end local v3           #ids:[Ljava/lang/Object;
    .end local v9           #value:Ljava/lang/Object;
    :catchall_0
    move-exception v10

    if-eqz v8, :cond_5

    .line 943
    iput-object v12, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    :cond_5
    throw v10

    .line 922
    .restart local v1       #i:I
    .restart local v2       #id:Ljava/lang/Object;
    .restart local v3       #ids:[Ljava/lang/Object;
    :cond_6
    :try_start_2
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 923
    .local v7, strId:Ljava/lang/String;
    invoke-interface {p2, v7, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v9

    .line 924
    .restart local v9       #value:Ljava/lang/Object;
    sget-object v10, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v9, v10, :cond_1

    .line 926
    if-lez v1, :cond_7

    .line 927
    const-string v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    :cond_7
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->isValidIdentifierName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 929
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 931
    :cond_8
    const/16 v10, 0x27

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 932
    const/16 v10, 0x27

    invoke-static {v7, v10}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    const/16 v10, 0x27

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 942
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/Object;
    .end local v3           #ids:[Ljava/lang/Object;
    .end local v7           #strId:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/Object;
    :cond_9
    if-eqz v8, :cond_a

    .line 943
    iput-object v12, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    .line 947
    :cond_a
    const/16 v10, 0x7d

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 948
    if-eqz v8, :cond_b

    .line 949
    const/16 v10, 0x29

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 951
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method static defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "obj"
    .parameter "id"
    .parameter "cx"

    .prologue
    .line 1742
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1743
    .local v2, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v2, :cond_1

    .line 1744
    if-nez p1, :cond_0

    const-string v3, "null"

    move-object v0, v3

    .line 1745
    .local v0, idStr:Ljava/lang/String;
    :goto_0
    const-string v3, "msg.undef.prop.delete"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3

    .line 1744
    .end local v0           #idStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1747
    :cond_1
    invoke-static {v2, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->deleteObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result v1

    .line 1748
    .local v1, result:Z
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public static deleteObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .locals 8
    .parameter "target"
    .parameter "elem"
    .parameter "cx"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1665
    instance-of v5, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v5, :cond_0

    .line 1666
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v4, v0

    .line 1667
    .local v4, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v4, p2, p1}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaDelete(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v2

    .local v2, result:Z
    move v5, v2

    .line 1679
    .end local v2           #result:Z
    .end local v4           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return v5

    .line 1669
    :cond_0
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1670
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1671
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v1

    .line 1672
    .local v1, index:I
    invoke-interface {p0, v1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    .line 1673
    invoke-interface {p0, v1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_0

    .line 1675
    .end local v1           #index:I
    :cond_2
    invoke-interface {p0, v3}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    .line 1676
    invoke-interface {p0, v3, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_0
.end method

.method private static doScriptableIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .parameter "target"
    .parameter "id"
    .parameter "protoChainStart"
    .parameter "value"
    .parameter "incrDecrMask"

    .prologue
    const-wide/high16 v6, 0x3ff0

    .line 2736
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 2738
    .local v3, post:Z
    :goto_0
    instance-of v5, p3, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 2739
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 2747
    .end local p3
    .local v1, number:D
    :cond_0
    :goto_1
    and-int/lit8 v5, p4, 0x1

    if-nez v5, :cond_3

    .line 2748
    add-double/2addr v1, v6

    .line 2752
    :goto_2
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    .line 2753
    .local v4, result:Ljava/lang/Number;
    invoke-interface {p0, p1, p2, v4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 2754
    if-eqz v3, :cond_4

    move-object v5, p3

    .line 2757
    :goto_3
    return-object v5

    .line 2736
    .end local v1           #number:D
    .end local v3           #post:Z
    .end local v4           #result:Ljava/lang/Number;
    .restart local p3
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    goto :goto_0

    .line 2741
    .restart local v3       #post:Z
    :cond_2
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    .line 2742
    .restart local v1       #number:D
    if-eqz v3, :cond_0

    .line 2744
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p3

    .local p3, value:Ljava/lang/Number;
    goto :goto_1

    .line 2750
    .end local p3           #value:Ljava/lang/Number;
    :cond_3
    sub-double/2addr v1, v6

    goto :goto_2

    .restart local v4       #result:Ljava/lang/Number;
    :cond_4
    move-object v5, v4

    .line 2757
    goto :goto_3
.end method

.method public static doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "callable"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    .line 3152
    if-nez p2, :cond_0

    .line 3153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 3154
    :cond_0
    iget-object v1, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3157
    :cond_1
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    .line 3158
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v1

    iput-boolean v1, p1, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    .line 3159
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    .local v0, f:Lorg/mozilla/javascript/ContextFactory;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3161
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/ContextFactory;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 3163
    .local v6, result:Ljava/lang/Object;
    iput-object v7, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    .line 3165
    iput-object v7, p1, Lorg/mozilla/javascript/Context;->cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

    .line 3167
    iget-object v1, p1, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    if-eqz v1, :cond_3

    .line 3170
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3163
    .end local v6           #result:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    iput-object v7, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    .line 3165
    iput-object v7, p1, Lorg/mozilla/javascript/Context;->cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

    .line 3167
    iget-object v2, p1, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    if-eqz v2, :cond_2

    .line 3170
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_2
    throw v1

    .line 3173
    .restart local v6       #result:Ljava/lang/Object;
    :cond_3
    return-object v6
.end method

.method public static elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .locals 9
    .parameter "obj"
    .parameter "index"
    .parameter "cx"
    .parameter "incrDecrMask"

    .prologue
    const-wide/high16 v7, 0x3ff0

    .line 2764
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v5

    .line 2765
    .local v5, value:Ljava/lang/Object;
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    move v3, v6

    .line 2767
    .local v3, post:Z
    :goto_0
    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_2

    .line 2768
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 2776
    .end local v5           #value:Ljava/lang/Object;
    .local v1, number:D
    :cond_0
    :goto_1
    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_3

    .line 2777
    add-double/2addr v1, v7

    .line 2781
    :goto_2
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    .line 2782
    .local v4, result:Ljava/lang/Number;
    invoke-static {p0, p1, v4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 2783
    if-eqz v3, :cond_4

    move-object v6, v5

    .line 2786
    :goto_3
    return-object v6

    .line 2765
    .end local v1           #number:D
    .end local v3           #post:Z
    .end local v4           #result:Ljava/lang/Number;
    .restart local v5       #value:Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 2770
    .restart local v3       #post:Z
    :cond_2
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    .line 2771
    .restart local v1       #number:D
    if-eqz v3, :cond_0

    .line 2773
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    .local v5, value:Ljava/lang/Number;
    goto :goto_1

    .line 2779
    .end local v5           #value:Ljava/lang/Number;
    :cond_3
    sub-double/2addr v1, v7

    goto :goto_2

    .restart local v4       #result:Ljava/lang/Number;
    :cond_4
    move-object v6, v4

    .line 2786
    goto :goto_3
.end method

.method public static enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 3
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 3263
    iget-object v2, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_0

    .line 3264
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 3265
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeCall;

    move-object v1, v0

    .line 3266
    .local v1, call:Lorg/mozilla/javascript/NativeCall;
    iget-object v2, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    iput-object v2, v1, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 3267
    iput-object v1, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 3268
    return-void
.end method

.method public static enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 3
    .parameter "value"
    .parameter "scope"

    .prologue
    .line 3431
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-nez v2, :cond_0

    .line 3432
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notXmlError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3434
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v1, v0

    .line 3435
    .local v1, object:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/xml/XMLObject;->enterDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;

    move-result-object v2

    return-object v2
.end method

.method public static enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 5
    .parameter "obj"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 3412
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 3413
    .local v1, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_0

    .line 3414
    const-string v3, "msg.undef.with"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3

    .line 3416
    :cond_0
    instance-of v3, v1, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v3, :cond_1

    .line 3417
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v2, v0

    .line 3418
    .local v2, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/xml/XMLObject;->enterWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;

    move-result-object v3

    .line 3420
    .end local v2           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Lorg/mozilla/javascript/NativeWith;

    invoke-direct {v3, p2, v1}, Lorg/mozilla/javascript/NativeWith;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0
.end method

.method private static enumChangeObject(Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)V
    .locals 6
    .parameter "x"

    .prologue
    .line 2181
    const/4 v2, 0x0

    .line 2182
    .local v2, ids:[Ljava/lang/Object;
    :goto_0
    iget-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_0

    .line 2183
    iget-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v4}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v2

    .line 2184
    array-length v4, v2

    if-eqz v4, :cond_2

    .line 2189
    :cond_0
    iget-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->ids:[Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 2190
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->ids:[Ljava/lang/Object;

    .line 2191
    .local v3, previous:[Ljava/lang/Object;
    array-length v0, v3

    .line 2192
    .local v0, L:I
    iget-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    if-nez v4, :cond_1

    .line 2193
    new-instance v4, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v4, v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    .line 2195
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eq v1, v0, :cond_3

    .line 2196
    iget-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2187
    .end local v0           #L:I
    .end local v1           #i:I
    .end local v3           #previous:[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v4}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    goto :goto_0

    .line 2199
    :cond_3
    iput-object v2, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->ids:[Ljava/lang/Object;

    .line 2200
    const/4 v4, 0x0

    iput v4, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->index:I

    .line 2201
    return-void
.end method

.method public static enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "enumObj"
    .parameter "cx"

    .prologue
    .line 2143
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    move-object v2, v0

    .line 2144
    .local v2, x:Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_0

    .line 2145
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    .line 2157
    :goto_0
    return-object v3

    .line 2147
    :cond_0
    iget v3, v2, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumType:I

    packed-switch v3, :pswitch_data_0

    .line 2159
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2150
    :pswitch_0
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    goto :goto_0

    .line 2153
    :pswitch_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->enumValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 2156
    :pswitch_2
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v2, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->enumValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2157
    .local v1, elements:[Ljava/lang/Object;
    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_0

    .line 2147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .locals 4
    .parameter "value"
    .parameter "cx"
    .parameter "enumType"

    .prologue
    const/4 v2, 0x0

    .line 2063
    new-instance v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;-><init>(Lorg/mozilla/javascript/ScriptRuntime$1;)V

    .line 2064
    .local v0, x:Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    .line 2065
    iget-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    if-nez v1, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return-object v0

    .line 2070
    :cond_1
    iput p2, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumType:I

    .line 2071
    iput-object v2, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    .line 2072
    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    .line 2076
    iget-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iget-object v2, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    if-nez p2, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {p1, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toIterator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    .line 2079
    :cond_2
    iget-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    if-nez v1, :cond_0

    .line 2082
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->enumChangeObject(Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)V

    goto :goto_0

    .line 2076
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;
    .locals 1
    .parameter "value"
    .parameter "cx"
    .parameter "enumValues"

    .prologue
    .line 2050
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enumNext(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 12
    .parameter "enumObj"

    .prologue
    .line 2094
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    move-object v8, v0

    .line 2095
    .local v8, x:Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    if-eqz v9, :cond_3

    .line 2096
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    const-string v10, "next"

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 2097
    .local v7, v:Ljava/lang/Object;
    instance-of v9, v7, Lorg/mozilla/javascript/Callable;

    if-nez v9, :cond_0

    .line 2098
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2137
    .end local v7           #v:Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 2099
    .restart local v7       #v:Ljava/lang/Object;
    :cond_0
    move-object v0, v7

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v3, v0

    .line 2100
    .local v3, f:Lorg/mozilla/javascript/Callable;
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 2102
    .local v1, cx:Lorg/mozilla/javascript/Context;
    :try_start_0
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v9}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    iget-object v10, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->iterator:Lorg/mozilla/javascript/Scriptable;

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v3, v1, v9, v10, v11}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    .line 2104
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/mozilla/javascript/JavaScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 2106
    .local v2, e:Lorg/mozilla/javascript/JavaScriptException;
    invoke-virtual {v2}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    if-eqz v9, :cond_1

    .line 2107
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2109
    :cond_1
    throw v2

    .line 2116
    .end local v1           #cx:Lorg/mozilla/javascript/Context;
    .end local v2           #e:Lorg/mozilla/javascript/JavaScriptException;
    .end local v3           #f:Lorg/mozilla/javascript/Callable;
    .end local v7           #v:Ljava/lang/Object;
    :cond_2
    iget v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->index:I

    iget-object v10, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->ids:[Ljava/lang/Object;

    array-length v10, v10

    if-ne v9, v10, :cond_4

    .line 2117
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v9}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    iput-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    .line 2118
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->enumChangeObject(Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;)V

    .line 2113
    :cond_3
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    if-nez v9, :cond_2

    .line 2114
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2121
    :cond_4
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->ids:[Ljava/lang/Object;

    iget v10, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->index:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->index:I

    aget-object v4, v9, v10

    .line 2122
    .local v4, id:Ljava/lang/Object;
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    if-eqz v9, :cond_5

    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->used:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2125
    :cond_5
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 2126
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 2127
    .local v6, strId:Ljava/lang/String;
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    iget-object v10, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v9, v6, v10}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2129
    iput-object v6, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    .line 2137
    .end local v4           #id:Ljava/lang/Object;
    .end local v6           #strId:Ljava/lang/String;
    :goto_1
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2131
    .restart local v4       #id:Ljava/lang/Object;
    :cond_6
    check-cast v4, Ljava/lang/Number;

    .end local v4           #id:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 2132
    .local v5, intId:I
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    iget-object v10, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v9, v5, v10}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2134
    iget-boolean v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumNumbers:Z

    if-eqz v9, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_2
    iput-object v9, v8, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static enumValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 7
    .parameter "enumObj"
    .parameter "cx"

    .prologue
    .line 2164
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    move-object v4, v0

    .line 2168
    .local v4, x:Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;
    iget-object v5, v4, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->currentId:Ljava/lang/Object;

    invoke-static {p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2169
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2170
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v1

    .line 2171
    .local v1, index:I
    iget-object v5, v4, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    iget-object v6, v4, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v5, v1, v6}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    .line 2176
    .end local v1           #index:I
    .local v2, result:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 2173
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    iget-object v5, v4, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    iget-object v6, v4, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->obj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v5, v3, v6}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #result:Ljava/lang/Object;
    goto :goto_0
.end method

.method public static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 14
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v12, 0x3ff0

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2841
    if-eqz p0, :cond_0

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v7, :cond_4

    .line 2842
    :cond_0
    if-eqz p1, :cond_1

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v7, :cond_2

    :cond_1
    move v7, v9

    .line 2914
    .end local p0
    .end local p1
    :goto_0
    return v7

    .line 2845
    .restart local p0
    .restart local p1
    :cond_2
    instance-of v7, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v7, :cond_3

    .line 2846
    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    .end local p1
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2847
    .local v4, test:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v7, :cond_3

    .line 2848
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #test:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_0

    :cond_3
    move v7, v8

    .line 2851
    goto :goto_0

    .line 2852
    .restart local p1
    :cond_4
    instance-of v7, p0, Ljava/lang/Number;

    if-eqz v7, :cond_5

    .line 2853
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result v7

    goto :goto_0

    .line 2854
    .restart local p0
    :cond_5
    instance-of v7, p0, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 2855
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eqString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0

    .line 2856
    .restart local p0
    :cond_6
    instance-of v7, p0, Ljava/lang/Boolean;

    if-eqz v7, :cond_b

    .line 2857
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2858
    .local v1, b:Z
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_8

    .line 2859
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v1, v7, :cond_7

    move v7, v9

    goto :goto_0

    :cond_7
    move v7, v8

    goto :goto_0

    .line 2861
    .restart local p1
    :cond_8
    instance-of v7, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v7, :cond_9

    .line 2862
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v7, v0

    invoke-virtual {v7, p0}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2863
    .restart local v4       #test:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v7, :cond_9

    .line 2864
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #test:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_0

    .line 2867
    :cond_9
    if-eqz v1, :cond_a

    move-wide v7, v12

    :goto_1
    invoke-static {v7, v8, p1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result v7

    goto :goto_0

    :cond_a
    move-wide v7, v10

    goto :goto_1

    .line 2868
    .end local v1           #b:Z
    :cond_b
    instance-of v7, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v7, :cond_18

    .line 2869
    instance-of v7, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v7, :cond_12

    .line 2870
    if-ne p0, p1, :cond_c

    move v7, v9

    .line 2871
    goto :goto_0

    .line 2873
    :cond_c
    instance-of v7, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v7, :cond_d

    .line 2874
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v7, v0

    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2875
    .restart local v4       #test:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v7, :cond_d

    .line 2876
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #test:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto/16 :goto_0

    .line 2879
    :cond_d
    instance-of v7, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v7, :cond_e

    .line 2880
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v7, v0

    invoke-virtual {v7, p0}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2881
    .restart local v4       #test:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v7, :cond_e

    .line 2882
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #test:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto/16 :goto_0

    .line 2885
    :cond_e
    instance-of v7, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v7, :cond_11

    instance-of v7, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v7, :cond_11

    .line 2888
    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    .end local p0
    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v5

    .line 2889
    .local v5, unwrappedX:Ljava/lang/Object;
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .end local p1
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v6

    .line 2890
    .local v6, unwrappedY:Ljava/lang/Object;
    if-eq v5, v6, :cond_f

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    move v7, v9

    goto/16 :goto_0

    :cond_10
    move v7, v8

    goto/16 :goto_0

    .end local v5           #unwrappedX:Ljava/lang/Object;
    .end local v6           #unwrappedY:Ljava/lang/Object;
    .restart local p0
    .restart local p1
    :cond_11
    move v7, v8

    .line 2895
    goto/16 :goto_0

    .line 2896
    :cond_12
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_15

    .line 2897
    instance-of v7, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v7, :cond_13

    .line 2898
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v7, v0

    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2899
    .restart local v4       #test:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v7, :cond_13

    .line 2900
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #test:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto/16 :goto_0

    .line 2903
    :cond_13
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_14

    move-wide v2, v12

    .line 2904
    .local v2, d:D
    :goto_2
    invoke-static {v2, v3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result v7

    goto/16 :goto_0

    .end local v2           #d:D
    :cond_14
    move-wide v2, v10

    .line 2903
    goto :goto_2

    .line 2905
    .restart local p1
    :cond_15
    instance-of v7, p1, Ljava/lang/Number;

    if-eqz v7, :cond_16

    .line 2906
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result v7

    goto/16 :goto_0

    .line 2907
    .restart local p1
    :cond_16
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_17

    .line 2908
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_0

    .restart local p1
    :cond_17
    move v7, v8

    .line 2911
    goto/16 :goto_0

    .line 2913
    :cond_18
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    .line 2914
    if-ne p0, p1, :cond_19

    move v7, v9

    goto/16 :goto_0

    :cond_19
    move v7, v8

    goto/16 :goto_0
.end method

.method static eqNumber(DLjava/lang/Object;)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2927
    :goto_0
    if-eqz p2, :cond_0

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, v3, :cond_1

    :cond_0
    move v3, v5

    .line 2946
    .end local p2
    :goto_1
    return v3

    .line 2929
    .restart local p2
    :cond_1
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 2930
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, p0, v3

    if-nez v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    .line 2931
    .restart local p2
    :cond_3
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 2932
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    cmpl-double v3, p0, v3

    if-nez v3, :cond_4

    move v3, v6

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_1

    .line 2933
    :cond_5
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    .line 2934
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/high16 v3, 0x3ff0

    :goto_2
    cmpl-double v3, p0, v3

    if-nez v3, :cond_7

    move v3, v6

    goto :goto_1

    :cond_6
    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_7
    move v3, v5

    goto :goto_1

    .line 2935
    .restart local p2
    :cond_8
    instance-of v3, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_a

    .line 2936
    instance-of v3, p2, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v3, :cond_9

    .line 2937
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    .line 2938
    .local v2, xval:Ljava/lang/Number;
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2939
    .local v1, test:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v3, :cond_9

    .line 2940
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #test:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    .line 2943
    .end local v2           #xval:Ljava/lang/Number;
    :cond_9
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 2945
    :cond_a
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    move v3, v5

    .line 2946
    goto :goto_1
.end method

.method private static eqString(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2954
    :goto_0
    if-eqz p1, :cond_0

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    :cond_0
    move v2, v6

    .line 2973
    .end local p1
    :goto_1
    return v2

    .line 2956
    .restart local p1
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2957
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 2958
    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 2959
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v2

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_1

    .line 2960
    .restart local p1
    :cond_4
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    .line 2961
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v2

    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/high16 v4, 0x3ff0

    :goto_2
    cmpl-double v2, v2, v4

    if-nez v2, :cond_6

    move v2, v7

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_6
    move v2, v6

    goto :goto_1

    .line 2962
    .restart local p1
    :cond_7
    instance-of v2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_9

    .line 2963
    instance-of v2, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v2, :cond_8

    .line 2964
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v2, v0

    invoke-virtual {v2, p0}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2965
    .local v1, test:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_8

    .line 2966
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #test:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    .line 2969
    :cond_8
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2970
    goto :goto_0

    .line 2972
    :cond_9
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    move v2, v6

    .line 2973
    goto :goto_1
.end method

.method private static errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter "msg"
    .parameter "val"

    .prologue
    .line 4026
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    return-object v0
.end method

.method public static escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;
    .locals 2
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 3917
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v0

    .line 3918
    .local v0, xmlLib:Lorg/mozilla/javascript/xml/XMLLib;
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/xml/XMLLib;->escapeAttributeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 685
    const/16 v0, 0x22

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeString(Ljava/lang/String;C)Ljava/lang/String;
    .locals 11
    .parameter "s"
    .parameter "escapeQuote"

    .prologue
    const/16 v10, 0x5c

    .line 694
    const/16 v9, 0x22

    if-eq p1, v9, :cond_0

    const/16 v9, 0x27

    if-eq p1, v9, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 695
    :cond_0
    const/4 v7, 0x0

    .line 697
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, L:I
    :goto_0
    if-eq v6, v0, :cond_8

    .line 698
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 700
    .local v1, c:I
    const/16 v9, 0x20

    if-gt v9, v1, :cond_2

    const/16 v9, 0x7e

    if-gt v1, v9, :cond_2

    if-eq v1, p1, :cond_2

    if-eq v1, v10, :cond_2

    .line 703
    if-eqz v7, :cond_1

    .line 704
    int-to-char v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 697
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 708
    :cond_2
    if-nez v7, :cond_3

    .line 709
    new-instance v7, Ljava/lang/StringBuffer;

    .end local v7           #sb:Ljava/lang/StringBuffer;
    add-int/lit8 v9, v0, 0x3

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 710
    .restart local v7       #sb:Ljava/lang/StringBuffer;
    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 714
    :cond_3
    const/4 v3, -0x1

    .line 715
    .local v3, escape:I
    sparse-switch v1, :sswitch_data_0

    .line 725
    :goto_2
    if-ltz v3, :cond_4

    .line 727
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 728
    int-to-char v9, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 716
    :sswitch_0
    const/16 v3, 0x62

    goto :goto_2

    .line 717
    :sswitch_1
    const/16 v3, 0x66

    goto :goto_2

    .line 718
    :sswitch_2
    const/16 v3, 0x6e

    goto :goto_2

    .line 719
    :sswitch_3
    const/16 v3, 0x72

    goto :goto_2

    .line 720
    :sswitch_4
    const/16 v3, 0x74

    goto :goto_2

    .line 721
    :sswitch_5
    const/16 v3, 0x76

    goto :goto_2

    .line 722
    :sswitch_6
    const/16 v3, 0x20

    goto :goto_2

    .line 723
    :sswitch_7
    const/16 v3, 0x5c

    goto :goto_2

    .line 729
    :cond_4
    if-ne v1, p1, :cond_5

    .line 730
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 731
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 734
    :cond_5
    const/16 v9, 0x100

    if-ge v1, v9, :cond_6

    .line 736
    const-string v9, "\\x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    const/4 v5, 0x2

    .line 744
    .local v5, hexSize:I
    :goto_3
    const/4 v9, 0x1

    sub-int v9, v5, v9

    mul-int/lit8 v8, v9, 0x4

    .local v8, shift:I
    :goto_4
    if-ltz v8, :cond_1

    .line 745
    shr-int v9, v1, v8

    and-int/lit8 v2, v9, 0xf

    .line 746
    .local v2, digit:I
    const/16 v9, 0xa

    if-ge v2, v9, :cond_7

    add-int/lit8 v9, v2, 0x30

    move v4, v9

    .line 747
    .local v4, hc:I
    :goto_5
    int-to-char v9, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 744
    add-int/lit8 v8, v8, -0x4

    goto :goto_4

    .line 740
    .end local v2           #digit:I
    .end local v4           #hc:I
    .end local v5           #hexSize:I
    .end local v8           #shift:I
    :cond_6
    const-string v9, "\\u"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    const/4 v5, 0x4

    .restart local v5       #hexSize:I
    goto :goto_3

    .line 746
    .restart local v2       #digit:I
    .restart local v8       #shift:I
    :cond_7
    add-int/lit8 v9, v2, 0x57

    move v4, v9

    goto :goto_5

    .line 751
    .end local v1           #c:I
    .end local v2           #digit:I
    .end local v3           #escape:I
    .end local v5           #hexSize:I
    .end local v8           #shift:I
    :cond_8
    if-nez v7, :cond_9

    move-object v9, p0

    :goto_6
    return-object v9

    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 715
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0xb -> :sswitch_5
        0xc -> :sswitch_1
        0xd -> :sswitch_3
        0x20 -> :sswitch_6
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method public static escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;
    .locals 2
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 3929
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v0

    .line 3930
    .local v0, xmlLib:Lorg/mozilla/javascript/xml/XMLLib;
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/xml/XMLLib;->escapeTextValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static evalSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
    .parameter "cx"
    .parameter "scope"
    .parameter "thisArg"
    .parameter "args"
    .parameter "filename"
    .parameter "lineNumber"

    .prologue
    .line 2542
    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 2543
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 2582
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .line 2544
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p3, v1

    .line 2545
    .local v1, x:Ljava/lang/Object;
    instance-of p3, v1, Ljava/lang/String;

    .end local p3
    if-nez p3, :cond_3

    .line 2546
    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .end local p1
    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_2

    .line 2549
    :cond_1
    const-string p0, "msg.eval.nonstring.strict"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 2551
    :cond_2
    const-string p0, "msg.eval.nonstring"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2552
    .local p0, message:Ljava/lang/String;
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    move-object p0, v1

    .line 2553
    goto :goto_0

    .line 2555
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1
    :cond_3
    if-nez p4, :cond_4

    .line 2556
    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 2557
    .local p3, linep:[I
    invoke-static {p3}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object p4

    .line 2558
    if-eqz p4, :cond_5

    .line 2559
    const/4 p5, 0x0

    aget p5, p3, p5

    .line 2564
    .end local p3           #linep:[I
    :cond_4
    :goto_1
    const/4 p3, 0x1

    invoke-static {p3, p4, p5}, Lorg/mozilla/javascript/ScriptRuntime;->makeUrlForGeneratedScript(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2568
    .local v5, sourceName:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object p3

    invoke-static {p3}, Lorg/mozilla/javascript/DefaultErrorReporter;->forEval(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v4

    .line 2570
    .local v4, reporter:Lorg/mozilla/javascript/ErrorReporter;
    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v3

    .line 2571
    .local v3, evaluator:Lorg/mozilla/javascript/Evaluator;
    if-nez v3, :cond_6

    .line 2572
    new-instance p0, Lorg/mozilla/javascript/JavaScriptException;

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    const-string p1, "Interpreter not present"

    .end local p1
    invoke-direct {p0, p1, p4, p5}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p0

    .line 2561
    .end local v3           #evaluator:Lorg/mozilla/javascript/Evaluator;
    .end local v4           #reporter:Lorg/mozilla/javascript/ErrorReporter;
    .end local v5           #sourceName:Ljava/lang/String;
    .restart local p0       #cx:Lorg/mozilla/javascript/Context;
    .restart local p1
    .restart local p3       #linep:[I
    :cond_5
    const-string p4, ""

    goto :goto_1

    .line 2578
    .end local p3           #linep:[I
    .restart local v3       #evaluator:Lorg/mozilla/javascript/Evaluator;
    .restart local v4       #reporter:Lorg/mozilla/javascript/ErrorReporter;
    .restart local v5       #sourceName:Ljava/lang/String;
    :cond_6
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    .end local v1           #x:Ljava/lang/Object;
    move-result-object p3

    .line 2580
    .local p3, script:Lorg/mozilla/javascript/Script;
    invoke-interface {v3, p3}, Lorg/mozilla/javascript/Evaluator;->setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V

    .line 2581
    check-cast p3, Lorg/mozilla/javascript/Callable;

    .line 2582
    .local p3, c:Lorg/mozilla/javascript/Callable;
    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    .end local p2
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p3, p0, p1, p2, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static exitActivationFunction(Lorg/mozilla/javascript/Context;)V
    .locals 2
    .parameter "cx"

    .prologue
    .line 3272
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 3273
    .local v0, call:Lorg/mozilla/javascript/NativeCall;
    iget-object v1, v0, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    iput-object v1, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 3274
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 3275
    return-void
.end method

.method static findFunctionActivation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/NativeCall;
    .locals 2
    .parameter "cx"
    .parameter "f"

    .prologue
    .line 3279
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 3280
    .local v0, call:Lorg/mozilla/javascript/NativeCall;
    :goto_0
    if-eqz v0, :cond_1

    .line 3281
    iget-object v1, v0, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    if-ne v1, p1, :cond_0

    move-object v1, v0

    .line 3285
    :goto_1
    return-object v1

    .line 3283
    :cond_0
    iget-object v0, v0, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    goto :goto_0

    .line 3285
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "arg1"

    .prologue
    .line 2509
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 2510
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 2512
    .end local p1
    :goto_0
    return-object v0

    .line 2511
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/mozilla/javascript/Arguments;

    if-eqz v0, :cond_3

    .line 2512
    :cond_2
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->getElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2514
    .restart local p1
    :cond_3
    const-string v0, "msg.arg.isnt.array"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method public static getArrayElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 9
    .parameter "object"

    .prologue
    .line 3614
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 3615
    .local v0, cx:Lorg/mozilla/javascript/Context;
    invoke-static {v0, p0}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v4

    .line 3616
    .local v4, longLen:J
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 3618
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 3620
    :cond_0
    long-to-int v3, v4

    .line 3621
    .local v3, len:I
    if-nez v3, :cond_1

    .line 3622
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 3630
    :goto_0
    return-object v7

    .line 3624
    :cond_1
    new-array v6, v3, [Ljava/lang/Object;

    .line 3625
    .local v6, result:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 3626
    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    .line 3627
    .local v1, elem:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v7, :cond_2

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    aput-object v7, v6, v2

    .line 3625
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v7, v1

    .line 3627
    goto :goto_2

    .end local v1           #elem:Ljava/lang/Object;
    :cond_3
    move-object v7, v6

    .line 3630
    goto :goto_0
.end method

.method static getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .locals 4
    .parameter "thisObj"

    .prologue
    .line 2521
    instance-of v3, p0, Lorg/mozilla/javascript/Callable;

    if-eqz v3, :cond_0

    .line 2522
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v1, v0

    .line 2530
    .local v1, function:Lorg/mozilla/javascript/Callable;
    :goto_0
    return-object v1

    .line 2524
    .end local v1           #function:Lorg/mozilla/javascript/Callable;
    :cond_0
    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    invoke-interface {p0, v3}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 2525
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Lorg/mozilla/javascript/Callable;

    if-nez v3, :cond_1

    .line 2526
    invoke-static {v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2528
    :cond_1
    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v1, v0

    .restart local v1       #function:Lorg/mozilla/javascript/Callable;
    goto :goto_0
.end method

.method public static getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;
    .locals 8
    .parameter "obj"
    .parameter "elem"
    .parameter "cx"

    .prologue
    .line 2245
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2246
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2247
    invoke-static {p0, v3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v7

    .line 2278
    :goto_0
    return-object v7

    .line 2249
    :cond_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v2

    .line 2251
    .local v2, index:I
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    .line 2252
    .local v4, thisObj:Lorg/mozilla/javascript/Scriptable;
    if-nez v4, :cond_2

    .line 2253
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lorg/mozilla/javascript/ScriptRuntime;->undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 2271
    .local v1, extra:Lorg/mozilla/javascript/Scriptable;
    .local v5, value:Ljava/lang/Object;
    .local v6, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_1
    move-object v4, v1

    .line 2259
    .end local v1           #extra:Lorg/mozilla/javascript/Scriptable;
    .end local v5           #value:Ljava/lang/Object;
    .end local v6           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_2
    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v5

    .line 2260
    .restart local v5       #value:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v7, :cond_4

    .line 2273
    :cond_3
    :goto_1
    instance-of v7, v5, Lorg/mozilla/javascript/Callable;

    if-nez v7, :cond_5

    .line 2274
    invoke-static {v5, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 2263
    :cond_4
    instance-of v7, v4, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v7, :cond_3

    .line 2266
    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v6, v0

    .line 2267
    .restart local v6       #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v6, p2}, Lorg/mozilla/javascript/xml/XMLObject;->getExtraMethodSource(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 2268
    .restart local v1       #extra:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_1

    goto :goto_1

    .line 2277
    .end local v1           #extra:Lorg/mozilla/javascript/Scriptable;
    .end local v6           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_5
    invoke-static {p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 2278
    check-cast v5, Lorg/mozilla/javascript/Callable;

    .end local v5           #value:Ljava/lang/Object;
    move-object v7, v5

    goto :goto_0
.end method

.method static getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "constructorName"

    .prologue
    .line 1259
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1260
    .local v0, ctorVal:Ljava/lang/Object;
    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_0

    .line 1261
    check-cast v0, Lorg/mozilla/javascript/Function;

    .end local v0           #ctorVal:Ljava/lang/Object;
    return-object v0

    .line 1263
    .restart local v0       #ctorVal:Ljava/lang/Object;
    :cond_0
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 1264
    const-string v1, "msg.ctor.not.found"

    invoke-static {v1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1

    .line 1267
    :cond_1
    const-string v1, "msg.not.ctor"

    invoke-static {v1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1
.end method

.method public static getGlobal(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 9
    .parameter "cx"

    .prologue
    .line 3115
    const-string v1, "org.mozilla.javascript.tools.shell.Global"

    .line 3116
    .local v1, GLOBAL_CLASS:Ljava/lang/String;
    const-string v7, "org.mozilla.javascript.tools.shell.Global"

    invoke-static {v7}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3117
    .local v4, globalClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v4, :cond_0

    .line 3119
    const/4 v7, 0x1

    :try_start_0
    new-array v6, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 3120
    .local v6, parm:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 3121
    .local v5, globalClassCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v2, v7

    .line 3122
    .local v2, arg:[Ljava/lang/Object;
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local p0
    move-object v7, p0

    .line 3131
    .end local v2           #arg:[Ljava/lang/Object;
    .end local v5           #globalClassCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v6           #parm:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_0
    return-object v7

    .line 3124
    .restart local p0
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 3125
    .local v3, e:Ljava/lang/RuntimeException;
    throw v3

    .line 3127
    .end local v3           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    .line 3131
    :cond_0
    new-instance v7, Lorg/mozilla/javascript/ImporterTopLevel;

    invoke-direct {v7, p0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>(Lorg/mozilla/javascript/Context;)V

    goto :goto_0
.end method

.method static getIndexObject(D)Ljava/lang/Object;
    .locals 3
    .parameter "d"

    .prologue
    .line 1383
    double-to-int v0, p0

    .line 1384
    .local v0, i:I
    int-to-double v1, v0

    cmpl-double v1, v1, p0

    if-nez v1, :cond_0

    .line 1385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1387
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getIndexObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "s"

    .prologue
    .line 1370
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->indexFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 1371
    .local v0, indexTest:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1372
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1374
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p0

    goto :goto_0
.end method

.method public static getLibraryScopeOrNull(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 2
    .parameter "scope"

    .prologue
    .line 271
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->LIBRARY_SCOPE_KEY:Ljava/lang/Object;

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    .line 273
    .local v0, libScope:Lorg/mozilla/javascript/ScriptableObject;
    return-object v0
.end method

.method public static getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "messageId"
    .parameter "arguments"

    .prologue
    .line 3699
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->messageProvider:Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;

    invoke-interface {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessage0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "messageId"

    .prologue
    .line 3647
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"

    .prologue
    .line 3652
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3653
    .local v0, arguments:[Ljava/lang/Object;
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMessage2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 3659
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 3660
    .local v0, arguments:[Ljava/lang/Object;
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMessage3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 3666
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 3667
    .local v0, arguments:[Ljava/lang/Object;
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMessage4(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 3673
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 3674
    .local v0, arguments:[Ljava/lang/Object;
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .locals 4
    .parameter "name"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 2214
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2215
    .local v0, parent:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_2

    .line 2216
    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->topScopeName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2217
    .local v1, result:Ljava/lang/Object;
    instance-of v3, v1, Lorg/mozilla/javascript/Callable;

    if-nez v3, :cond_1

    .line 2218
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v3, :cond_0

    .line 2219
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2221
    :cond_0
    invoke-static {v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2225
    :cond_1
    move-object v2, p2

    .line 2226
    .local v2, thisObj:Lorg/mozilla/javascript/Scriptable;
    invoke-static {p1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 2227
    check-cast v1, Lorg/mozilla/javascript/Callable;

    .end local v1           #result:Ljava/lang/Object;
    move-object v3, v1

    .line 2231
    .end local v2           #thisObj:Lorg/mozilla/javascript/Scriptable;
    .end local p0
    :goto_0
    return-object v3

    .restart local p0
    :cond_2
    const/4 v3, 0x1

    invoke-static {p1, p2, v0, p0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->nameOrFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Callable;

    move-object v3, p0

    goto :goto_0
.end method

.method public static getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "elem"
    .parameter "cx"

    .prologue
    .line 1426
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "elem"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 1434
    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 1435
    .local v0, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 1436
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1438
    :cond_0
    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 6
    .parameter "obj"
    .parameter "elem"
    .parameter "cx"

    .prologue
    .line 1444
    instance-of v5, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v5, :cond_0

    .line 1445
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v4, v0

    .line 1446
    .local v4, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v4, p2, p1}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaGet(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1463
    .end local v4           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object v5

    .line 1451
    :cond_0
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1452
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1453
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v1

    .line 1454
    .local v1, index:I
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    .line 1459
    .end local v1           #index:I
    .local v2, result:Ljava/lang/Object;
    :goto_1
    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v5, :cond_1

    .line 1460
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_1
    move-object v5, v2

    .line 1463
    goto :goto_0

    .line 1456
    .end local v2           #result:Ljava/lang/Object;
    :cond_2
    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #result:Ljava/lang/Object;
    goto :goto_1
.end method

.method public static getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "obj"
    .parameter "dblIndex"
    .parameter "cx"

    .prologue
    .line 1540
    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1541
    .local v2, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v2, :cond_0

    .line 1542
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1545
    :cond_0
    double-to-int v0, p1

    .line 1546
    .local v0, index:I
    int-to-double v3, v0

    cmpl-double v3, v3, p1

    if-nez v3, :cond_1

    .line 1547
    invoke-static {v2, v0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    .line 1550
    :goto_0
    return-object v3

    .line 1549
    :cond_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 1550
    .local v1, s:Ljava/lang/String;
    invoke-static {v2, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public static getObjectIndex(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"
    .parameter "index"
    .parameter "cx"

    .prologue
    .line 1557
    instance-of v3, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v3, :cond_0

    .line 1558
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v2, v0

    .line 1559
    .local v2, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaGet(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1567
    .end local v2           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object v3

    .line 1562
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    .line 1563
    .local v1, result:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v3, :cond_1

    .line 1564
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_1
    move-object v3, v1

    .line 1567
    goto :goto_0
.end method

.method public static getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "property"
    .parameter "cx"

    .prologue
    .line 1472
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 1473
    .local v0, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 1474
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1476
    :cond_0
    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "property"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 1485
    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 1486
    .local v0, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 1487
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1489
    :cond_0
    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"
    .parameter "property"
    .parameter "cx"

    .prologue
    .line 1495
    instance-of v3, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v3, :cond_0

    .line 1499
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v2, v0

    .line 1500
    .local v2, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v2, p2, p1}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaGet(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1512
    .end local v2           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object v3

    .line 1503
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1504
    .local v1, result:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 1505
    const/16 v3, 0xb

    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1506
    const-string v3, "msg.ref.undefined.prop"

    invoke-static {v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 1509
    :cond_1
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_2
    move-object v3, v1

    .line 1512
    goto :goto_0
.end method

.method public static getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "property"
    .parameter "cx"

    .prologue
    .line 1518
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 1519
    .local v1, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_0

    .line 1520
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1522
    :cond_0
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v2, :cond_1

    .line 1524
    invoke-static {v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 1526
    :cond_1
    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1527
    .local v0, result:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    .line 1528
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1530
    :goto_0
    return-object v2

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public static getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;
    .locals 2
    .parameter "obj"
    .parameter "property"
    .parameter "cx"

    .prologue
    .line 2294
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2295
    .local v0, thisObj:Lorg/mozilla/javascript/Scriptable;
    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThisHelper(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    return-object v1
.end method

.method public static getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .locals 2
    .parameter "obj"
    .parameter "property"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 2309
    invoke-static {p2, p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2310
    .local v0, thisObj:Lorg/mozilla/javascript/Scriptable;
    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThisHelper(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    return-object v1
.end method

.method private static getPropFunctionAndThisHelper(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;
    .locals 6
    .parameter "obj"
    .parameter "property"
    .parameter "cx"
    .parameter "thisObj"

    .prologue
    .line 2316
    if-nez p3, :cond_1

    .line 2317
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 2335
    .local v1, extra:Lorg/mozilla/javascript/Scriptable;
    .local v3, value:Ljava/lang/Object;
    .local v4, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_0
    move-object p3, v1

    .line 2323
    .end local v1           #extra:Lorg/mozilla/javascript/Scriptable;
    .end local v3           #value:Ljava/lang/Object;
    .end local v4           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_1
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2324
    .restart local v3       #value:Ljava/lang/Object;
    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v5, :cond_4

    .line 2338
    :cond_2
    :goto_0
    instance-of v5, v3, Lorg/mozilla/javascript/Callable;

    if-nez v5, :cond_3

    .line 2339
    const-string v5, "__noSuchMethod__"

    invoke-static {p3, v5}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2340
    .local v2, noSuchMethod:Ljava/lang/Object;
    instance-of v5, v2, Lorg/mozilla/javascript/Callable;

    if-eqz v5, :cond_5

    .line 2341
    new-instance v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    .end local v3           #value:Ljava/lang/Object;
    check-cast v2, Lorg/mozilla/javascript/Callable;

    .end local v2           #noSuchMethod:Ljava/lang/Object;
    invoke-direct {v3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;-><init>(Lorg/mozilla/javascript/Callable;Ljava/lang/String;)V

    .line 2346
    :cond_3
    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 2347
    check-cast v3, Lorg/mozilla/javascript/Callable;

    return-object v3

    .line 2327
    .restart local v3       #value:Ljava/lang/Object;
    :cond_4
    instance-of v5, p3, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v5, :cond_2

    .line 2330
    move-object v0, p3

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v4, v0

    .line 2331
    .restart local v4       #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v4, p2}, Lorg/mozilla/javascript/xml/XMLObject;->getExtraMethodSource(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 2332
    .restart local v1       #extra:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_0

    goto :goto_0

    .line 2343
    .end local v1           #extra:Lorg/mozilla/javascript/Scriptable;
    .end local v4           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    .restart local v2       #noSuchMethod:Ljava/lang/Object;
    :cond_5
    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public static getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;
    .locals 1
    .parameter "cx"

    .prologue
    .line 3874
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getRegExpProxy()Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "cx"

    .prologue
    .line 3141
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    .line 3142
    .local v0, scope:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 3143
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3145
    :cond_0
    return-object v0
.end method

.method public static getTopLevelProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "scope"
    .parameter "id"

    .prologue
    .line 1252
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 1253
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;
    .locals 4
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 2359
    instance-of v3, p0, Lorg/mozilla/javascript/Callable;

    if-nez v3, :cond_0

    .line 2360
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2363
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v1, v0

    .line 2364
    .local v1, f:Lorg/mozilla/javascript/Callable;
    const/4 v2, 0x0

    .line 2365
    .local v2, thisObj:Lorg/mozilla/javascript/Scriptable;
    instance-of v3, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_1

    .line 2366
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v3, v0

    invoke-interface {v3}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 2368
    :cond_1
    if-nez v2, :cond_3

    .line 2369
    iget-object v3, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 2370
    :cond_2
    iget-object v2, p1, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    .line 2372
    :cond_3
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2373
    instance-of v3, v2, Lorg/mozilla/javascript/NativeWith;

    if-eqz v3, :cond_5

    .line 2381
    :cond_4
    :goto_0
    invoke-static {p1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 2382
    return-object v1

    .line 2376
    :cond_5
    instance-of v3, v2, Lorg/mozilla/javascript/NativeCall;

    if-eqz v3, :cond_4

    .line 2378
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    goto :goto_0
.end method

.method public static hasObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .locals 6
    .parameter "target"
    .parameter "elem"
    .parameter "cx"

    .prologue
    .line 1687
    instance-of v5, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v5, :cond_0

    .line 1688
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v4, v0

    .line 1689
    .local v4, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v4, p2, p1}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaHas(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v2

    .line 1700
    .end local v4           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    .local v2, result:Z
    :goto_0
    return v2

    .line 1691
    .end local v2           #result:Z
    :cond_0
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1692
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1693
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v1

    .line 1694
    .local v1, index:I
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;I)Z

    move-result v2

    .line 1695
    .restart local v2       #result:Z
    goto :goto_0

    .line 1696
    .end local v1           #index:I
    .end local v2           #result:Z
    :cond_1
    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v2

    .restart local v2       #result:Z
    goto :goto_0
.end method

.method public static hasTopCall(Lorg/mozilla/javascript/Context;)Z
    .locals 1
    .parameter "cx"

    .prologue
    .line 3136
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "cx"

    .prologue
    .line 3063
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    .line 3064
    const-string v0, "msg.instanceof.not.object"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 3067
    :cond_0
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->hasObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result v0

    return v0
.end method

.method private static indexFromString(Ljava/lang/String;)J
    .locals 11
    .parameter "str"

    .prologue
    const/16 v10, 0x9

    const/4 v8, 0x1

    const v9, -0xccccccc

    .line 1280
    const/16 v0, 0xa

    .line 1282
    .local v0, MAX_VALUE_LENGTH:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1283
    .local v4, len:I
    if-lez v4, :cond_6

    .line 1284
    const/4 v2, 0x0

    .line 1285
    .local v2, i:I
    const/4 v5, 0x0

    .line 1286
    .local v5, negate:Z
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1287
    .local v1, c:I
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_0

    .line 1288
    if-le v4, v8, :cond_0

    .line 1289
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1290
    const/4 v2, 0x1

    .line 1291
    const/4 v5, 0x1

    .line 1294
    :cond_0
    add-int/lit8 v1, v1, -0x30

    .line 1295
    if-ltz v1, :cond_6

    if-gt v1, v10, :cond_6

    if-eqz v5, :cond_1

    const/16 v7, 0xb

    :goto_0
    if-gt v4, v7, :cond_6

    .line 1301
    neg-int v3, v1

    .line 1302
    .local v3, index:I
    const/4 v6, 0x0

    .line 1303
    .local v6, oldIndex:I
    add-int/lit8 v2, v2, 0x1

    .line 1304
    if-eqz v3, :cond_2

    .line 1306
    :goto_1
    if-eq v2, v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    sub-int v1, v7, v8

    if-ltz v1, :cond_2

    if-gt v1, v10, :cond_2

    .line 1308
    move v6, v3

    .line 1309
    mul-int/lit8 v7, v3, 0xa

    sub-int v3, v7, v1

    .line 1310
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1295
    .end local v3           #index:I
    .end local v6           #oldIndex:I
    :cond_1
    const/16 v7, 0xa

    goto :goto_0

    .line 1315
    .restart local v3       #index:I
    .restart local v6       #oldIndex:I
    :cond_2
    if-ne v2, v4, :cond_6

    if-gt v6, v9, :cond_3

    if-ne v6, v9, :cond_6

    if-eqz v5, :cond_4

    const/16 v7, 0x8

    :goto_2
    if-gt v1, v7, :cond_6

    .line 1321
    :cond_3
    const-wide v7, 0xffffffffL

    if-eqz v5, :cond_5

    move v9, v3

    :goto_3
    int-to-long v9, v9

    and-long/2addr v7, v9

    .line 1325
    .end local v1           #c:I
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #negate:Z
    .end local v6           #oldIndex:I
    :goto_4
    return-wide v7

    .line 1315
    .restart local v1       #c:I
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v5       #negate:Z
    .restart local v6       #oldIndex:I
    :cond_4
    const/4 v7, 0x7

    goto :goto_2

    .line 1321
    :cond_5
    neg-int v9, v3

    goto :goto_3

    .line 1325
    .end local v1           #c:I
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #negate:Z
    .end local v6           #oldIndex:I
    :cond_6
    const-wide/16 v7, -0x1

    goto :goto_4
.end method

.method public static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "function"
    .parameter "type"
    .parameter "fromEvalCode"

    .prologue
    .line 3473
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 3474
    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 3475
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3476
    if-nez p4, :cond_1

    .line 3479
    const/4 v1, 0x4

    invoke-static {p1, v0, p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 3499
    :cond_0
    :goto_0
    return-void

    .line 3482
    :cond_1
    invoke-interface {p1, v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    .line 3485
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    .line 3486
    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 3487
    .restart local v0       #name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3491
    :goto_1
    instance-of v1, p1, Lorg/mozilla/javascript/NativeWith;

    if-eqz v1, :cond_3

    .line 3492
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    goto :goto_1

    .line 3494
    :cond_3
    invoke-interface {p1, v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    .line 3497
    .end local v0           #name:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 8
    .parameter "funObj"
    .parameter "thisObj"
    .parameter "cx"
    .parameter "scope"
    .parameter "evalScript"

    .prologue
    .line 3215
    iget-object v6, p2, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    if-nez v6, :cond_0

    .line 3216
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 3218
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getParamAndVarCount()I

    move-result v4

    .line 3219
    .local v4, varCount:I
    if-eqz v4, :cond_5

    .line 3221
    move-object v5, p3

    .line 3224
    .local v5, varScope:Lorg/mozilla/javascript/Scriptable;
    :goto_0
    instance-of v6, v5, Lorg/mozilla/javascript/NativeWith;

    if-eqz v6, :cond_1

    .line 3225
    invoke-interface {v5}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    goto :goto_0

    .line 3228
    :cond_1
    move v0, v4

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-eqz v1, :cond_5

    .line 3229
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v3

    .line 3230
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarConst(I)Z

    move-result v2

    .line 3233
    .local v2, isConst:Z
    invoke-static {p3, v3}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3234
    if-nez p4, :cond_3

    .line 3236
    if-eqz v2, :cond_2

    .line 3237
    invoke-static {v5, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    :goto_2
    move v1, v0

    .line 3248
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 3239
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_2
    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-static {v5, v3, v6, v7}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 3243
    :cond_3
    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-interface {v5, v3, v5, v6}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_2

    .line 3246
    :cond_4
    invoke-static {p3, v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->redefineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)V

    goto :goto_2

    .line 3250
    .end local v0           #i:I
    .end local v2           #isConst:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #varScope:Lorg/mozilla/javascript/Scriptable;
    :cond_5
    return-void
.end method

.method public static initStandardObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;
    .locals 11
    .parameter "cx"
    .parameter "scope"
    .parameter "sealed"

    .prologue
    const/4 v5, 0x1

    const-string v10, "(xml)"

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance p1, Lorg/mozilla/javascript/NativeObject;

    .end local p1
    invoke-direct {p1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 210
    .restart local p1
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->LIBRARY_SCOPE_KEY:Ljava/lang/Object;

    invoke-virtual {p1, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v0, Lorg/mozilla/javascript/ClassCache;

    invoke-direct {v0}, Lorg/mozilla/javascript/ClassCache;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ClassCache;->associate(Lorg/mozilla/javascript/ScriptableObject;)Z

    .line 213
    invoke-static {p1, p2}, Lorg/mozilla/javascript/BaseFunction;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 214
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeObject;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 216
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v8

    .line 219
    .local v8, objectProto:Lorg/mozilla/javascript/Scriptable;
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    .line 220
    .local v6, functionProto:Lorg/mozilla/javascript/Scriptable;
    invoke-interface {v6, v8}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 223
    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 227
    :cond_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeError;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 228
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeGlobal;->init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    .line 230
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeArray;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 231
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getOptimizationLevel()I

    move-result v0

    if-lez v0, :cond_2

    .line 235
    const v0, 0x30d40

    invoke-static {v0}, Lorg/mozilla/javascript/NativeArray;->setMaximumInitialCapacity(I)V

    .line 237
    :cond_2
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeString;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 238
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeBoolean;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 239
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeNumber;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 240
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 241
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeMath;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 242
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeJSON;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 244
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeWith;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 245
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeCall;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 246
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeScript;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    .line 248
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeIterator;->init(Lorg/mozilla/javascript/ScriptableObject;Z)V

    .line 250
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    if-eqz v0, :cond_3

    move v9, v5

    .line 253
    .local v9, withXml:Z
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->lazilyNames:[Ljava/lang/String;

    array-length v0, v0

    if-eq v7, v0, :cond_6

    .line 254
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->lazilyNames:[Ljava/lang/String;

    aget-object v2, v0, v7

    .line 255
    .local v2, topProperty:Ljava/lang/String;
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->lazilyNames:[Ljava/lang/String;

    add-int/lit8 v1, v7, 0x1

    aget-object v3, v0, v1

    .line 256
    .local v3, className:Ljava/lang/String;
    if-nez v9, :cond_4

    const-string v0, "(xml)"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    :goto_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 250
    .end local v2           #topProperty:Ljava/lang/String;
    .end local v3           #className:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #withXml:Z
    :cond_3
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 258
    .restart local v2       #topProperty:Ljava/lang/String;
    .restart local v3       #className:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v9       #withXml:Z
    :cond_4
    if-eqz v9, :cond_5

    const-string v0, "(xml)"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xml/XMLLib$Factory;->getImplementationClassName()Ljava/lang/String;

    move-result-object v3

    .line 262
    :cond_5
    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 265
    .end local v2           #topProperty:Ljava/lang/String;
    .end local v3           #className:Ljava/lang/String;
    :cond_6
    return-object p1
.end method

.method public static instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "cx"

    .prologue
    .line 3020
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    .line 3021
    const-string v0, "msg.instanceof.not.object"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 3025
    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_1

    .line 3026
    const/4 v0, 0x0

    .line 3028
    .end local p0
    .end local p1
    :goto_0
    return v0

    .restart local p0
    .restart local p1
    :cond_1
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/Scriptable;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isArrayObject(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 3609
    instance-of v0, p0, Lorg/mozilla/javascript/NativeArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/mozilla/javascript/Arguments;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isGeneratedScript(Ljava/lang/String;)Z
    .locals 1
    .parameter "sourceUrl"

    .prologue
    .line 4020
    const-string v0, "(eval)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "(Function)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJSLineTerminator(I)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 281
    const v0, 0xdfd0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    move v0, v1

    .line 284
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2029

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isJSWhitespaceOrLineTerminator(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 288
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrimitive(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 2919
    if-eqz p0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRhinoRuntimeType(Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    move v0, v2

    .line 197
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static isSpecialProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 1720
    const-string v0, "__proto__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__parent__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isStrWhiteSpaceChar(I)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 308
    sparse-switch p0, :sswitch_data_0

    .line 321
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :sswitch_0
    move v0, v2

    .line 319
    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0xa0 -> :sswitch_0
        0x2028 -> :sswitch_0
        0x2029 -> :sswitch_0
        0xfeff -> :sswitch_0
    .end sparse-switch
.end method

.method static isValidIdentifierName(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 756
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 757
    .local v0, L:I
    if-nez v0, :cond_0

    move v2, v3

    .line 765
    :goto_0
    return v2

    .line 759
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 760
    goto :goto_0

    .line 761
    :cond_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-eq v1, v0, :cond_3

    .line 762
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 763
    goto :goto_0

    .line 761
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 765
    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private static isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
    .locals 2
    .parameter "cx"
    .parameter "obj"

    .prologue
    .line 3404
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getClassShutter()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v0

    .line 3405
    .local v0, shutter:Lorg/mozilla/javascript/ClassShutter;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static jsDelegatesTo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 3037
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 3039
    .local v0, proto:Lorg/mozilla/javascript/Scriptable;
    :goto_0
    if-eqz v0, :cond_1

    .line 3040
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3044
    :goto_1
    return v1

    .line 3041
    :cond_0
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    .line 3044
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static lastIndexResult(Lorg/mozilla/javascript/Context;)I
    .locals 1
    .parameter "cx"

    .prologue
    .line 3974
    iget v0, p0, Lorg/mozilla/javascript/Context;->scratchIndex:I

    return v0
.end method

.method public static lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "cx"

    .prologue
    .line 4002
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->scratchScriptable:Lorg/mozilla/javascript/Scriptable;

    .line 4003
    .local v0, result:Lorg/mozilla/javascript/Scriptable;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/Context;->scratchScriptable:Lorg/mozilla/javascript/Scriptable;

    .line 4004
    return-object v0
.end method

.method public static lastUint32Result(Lorg/mozilla/javascript/Context;)J
    .locals 6
    .parameter "cx"

    .prologue
    .line 3986
    iget-wide v0, p0, Lorg/mozilla/javascript/Context;->scratchUint32:J

    .line 3987
    .local v0, value:J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 3988
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 3989
    :cond_0
    return-wide v0
.end method

.method public static leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 3
    .parameter "scope"

    .prologue
    .line 3447
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/NativeWith;

    move-object v1, v0

    .line 3448
    .local v1, nw:Lorg/mozilla/javascript/NativeWith;
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeWith;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    return-object v2
.end method

.method public static leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 3
    .parameter "scope"

    .prologue
    .line 3425
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/NativeWith;

    move-object v1, v0

    .line 3426
    .local v1, nw:Lorg/mozilla/javascript/NativeWith;
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeWith;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    return-object v2
.end method

.method static makeUrlForGeneratedScript(ZLjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "isEval"
    .parameter "masterScriptUrl"
    .parameter "masterScriptLine"

    .prologue
    const/16 v1, 0x23

    .line 4010
    if-eqz p0, :cond_0

    .line 4011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(eval)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4013
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(Function)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;
    .locals 3
    .parameter "obj"
    .parameter "namespace"
    .parameter "elem"
    .parameter "cx"
    .parameter "memberTypeFlags"

    .prologue
    .line 3946
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-nez v2, :cond_0

    .line 3947
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notXmlError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3949
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v1, v0

    .line 3950
    .local v1, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v1, p3, p1, p2, p4}, Lorg/mozilla/javascript/xml/XMLObject;->memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;

    move-result-object v2

    return-object v2
.end method

.method public static memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;
    .locals 3
    .parameter "obj"
    .parameter "elem"
    .parameter "cx"
    .parameter "memberTypeFlags"

    .prologue
    .line 3936
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-nez v2, :cond_0

    .line 3937
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notXmlError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3939
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v1, v0

    .line 3940
    .local v1, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v1, p2, p1, p3}, Lorg/mozilla/javascript/xml/XMLObject;->memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;

    move-result-object v2

    return-object v2
.end method

.method public static name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "scope"
    .parameter "name"

    .prologue
    .line 1756
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 1757
    .local v0, parent:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_1

    .line 1758
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->topScopeName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1759
    .local v1, result:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 1760
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    move-object v2, v1

    .line 1765
    .end local v1           #result:Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, p2, v2}, Lorg/mozilla/javascript/ScriptRuntime;->nameOrFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter "scopeChain"
    .parameter "id"
    .parameter "incrDecrMask"

    .prologue
    .line 2676
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .locals 3
    .parameter "scopeChain"
    .parameter "id"
    .parameter "cx"
    .parameter "incrDecrMask"

    .prologue
    .line 2686
    :cond_0
    iget-boolean v2, p2, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2687
    iget-object v2, p2, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 2689
    :cond_1
    move-object v0, p0

    .line 2691
    .local v0, target:Lorg/mozilla/javascript/Scriptable;
    :cond_2
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 2692
    .local v1, value:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 2701
    invoke-static {v0, p1, p0, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->doScriptableIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2695
    :cond_3
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2696
    if-nez v0, :cond_2

    .line 2697
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 2698
    if-nez p0, :cond_0

    .line 2699
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static nameOrFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 7
    .parameter "cx"
    .parameter "scope"
    .parameter "parentScope"
    .parameter "name"
    .parameter "asFunctionCall"

    .prologue
    .line 1773
    move-object v3, p1

    .line 1775
    .local v3, thisObj:Lorg/mozilla/javascript/Scriptable;
    const/4 v1, 0x0

    .line 1777
    .local v1, firstXMLObject:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_0
    instance-of v6, p1, Lorg/mozilla/javascript/NativeWith;

    if-eqz v6, :cond_6

    .line 1778
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    .line 1779
    .local v4, withObj:Lorg/mozilla/javascript/Scriptable;
    instance-of v6, v4, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v6, :cond_5

    .line 1780
    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v5, v0

    .line 1781
    .local v5, xmlObj:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v5, p0, p3}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaHas(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1783
    move-object v3, v5

    .line 1784
    invoke-virtual {v5, p0, p3}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaGet(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1840
    .end local v4           #withObj:Lorg/mozilla/javascript/Scriptable;
    .end local v5           #xmlObj:Lorg/mozilla/javascript/xml/XMLObject;
    .local v2, result:Ljava/lang/Object;
    :cond_1
    :goto_0
    if-eqz p4, :cond_b

    .line 1841
    instance-of v6, v2, Lorg/mozilla/javascript/Callable;

    if-nez v6, :cond_a

    .line 1842
    invoke-static {v2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 1787
    .end local v2           #result:Ljava/lang/Object;
    .restart local v4       #withObj:Lorg/mozilla/javascript/Scriptable;
    .restart local v5       #xmlObj:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_2
    if-nez v1, :cond_3

    .line 1788
    move-object v1, v5

    .line 1820
    .end local v4           #withObj:Lorg/mozilla/javascript/Scriptable;
    .end local v5           #xmlObj:Lorg/mozilla/javascript/xml/XMLObject;
    :cond_3
    move-object p1, p2

    .line 1821
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 1822
    if-nez p2, :cond_0

    .line 1823
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->topScopeName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1824
    .restart local v2       #result:Ljava/lang/Object;
    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v6, :cond_9

    .line 1825
    if-eqz v1, :cond_4

    if-eqz p4, :cond_8

    .line 1826
    :cond_4
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 1791
    .end local v2           #result:Ljava/lang/Object;
    .restart local v4       #withObj:Lorg/mozilla/javascript/Scriptable;
    :cond_5
    invoke-static {v4, p3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1792
    .restart local v2       #result:Ljava/lang/Object;
    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v6, :cond_3

    .line 1794
    move-object v3, v4

    .line 1795
    goto :goto_0

    .line 1798
    .end local v2           #result:Ljava/lang/Object;
    .end local v4           #withObj:Lorg/mozilla/javascript/Scriptable;
    :cond_6
    instance-of v6, p1, Lorg/mozilla/javascript/NativeCall;

    if-eqz v6, :cond_7

    .line 1801
    invoke-interface {p1, p3, p1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    .line 1802
    .restart local v2       #result:Ljava/lang/Object;
    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v6, :cond_3

    .line 1803
    if-eqz p4, :cond_1

    .line 1806
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_0

    .line 1814
    .end local v2           #result:Ljava/lang/Object;
    :cond_7
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1815
    .restart local v2       #result:Ljava/lang/Object;
    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v6, :cond_3

    .line 1816
    move-object v3, p1

    .line 1817
    goto :goto_0

    .line 1832
    :cond_8
    invoke-virtual {v1, p0, p3}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaGet(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1835
    :cond_9
    move-object v3, p1

    .line 1836
    goto :goto_0

    .line 1844
    :cond_a
    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 1847
    :cond_b
    return-object v2
.end method

.method public static nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;
    .locals 6
    .parameter "namespace"
    .parameter "name"
    .parameter "cx"
    .parameter "scope"
    .parameter "memberTypeFlags"

    .prologue
    .line 3963
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v0

    .local v0, xmlLib:Lorg/mozilla/javascript/xml/XMLLib;
    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    .line 3964
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/xml/XMLLib;->nameRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    return-object v1
.end method

.method public static nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;
    .locals 2
    .parameter "name"
    .parameter "cx"
    .parameter "scope"
    .parameter "memberTypeFlags"

    .prologue
    .line 3956
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v0

    .line 3957
    .local v0, xmlLib:Lorg/mozilla/javascript/xml/XMLLib;
    invoke-virtual {v0, p1, p0, p2, p3}, Lorg/mozilla/javascript/xml/XMLLib;->nameRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    return-object v1
.end method

.method public static newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 11
    .parameter "objects"
    .parameter "skipIndices"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 3505
    const/4 v0, 0x2

    .line 3506
    .local v0, SKIP_DENSITY:I
    array-length v2, p0

    .line 3507
    .local v2, count:I
    const/4 v7, 0x0

    .line 3508
    .local v7, skipCount:I
    if-eqz p1, :cond_0

    .line 3509
    array-length v7, p1

    .line 3511
    :cond_0
    add-int v5, v2, v7

    .line 3512
    .local v5, length:I
    const/4 v9, 0x1

    if-le v5, v9, :cond_5

    mul-int/lit8 v9, v7, 0x2

    if-ge v9, v5, :cond_5

    .line 3515
    if-nez v7, :cond_3

    .line 3516
    move-object v8, p0

    .line 3530
    .local v8, sparse:[Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    .line 3531
    .local v1, array:Lorg/mozilla/javascript/NativeArray;
    invoke-static {v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 3547
    .end local v8           #sparse:[Ljava/lang/Object;
    :cond_2
    return-object v1

    .line 3518
    .end local v1           #array:Lorg/mozilla/javascript/NativeArray;
    :cond_3
    new-array v8, v5, [Ljava/lang/Object;

    .line 3519
    .restart local v8       #sparse:[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 3520
    .local v6, skip:I
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-eq v3, v5, :cond_1

    .line 3521
    if-eq v6, v7, :cond_4

    aget v9, p1, v6

    if-ne v9, v3, :cond_4

    .line 3522
    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object v9, v8, v3

    .line 3523
    add-int/lit8 v6, v6, 0x1

    .line 3520
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3526
    :cond_4
    aget-object v9, p0, v4

    aput-object v9, v8, v3

    .line 3527
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3535
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v6           #skip:I
    .end local v8           #sparse:[Ljava/lang/Object;
    :cond_5
    new-instance v1, Lorg/mozilla/javascript/NativeArray;

    int-to-long v9, v5

    invoke-direct {v1, v9, v10}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    .line 3536
    .restart local v1       #array:Lorg/mozilla/javascript/NativeArray;
    invoke-static {v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 3538
    const/4 v6, 0x0

    .line 3539
    .restart local v6       #skip:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_2
    if-eq v3, v5, :cond_2

    .line 3540
    if-eq v6, v7, :cond_6

    aget v9, p1, v6

    if-ne v9, v3, :cond_6

    .line 3541
    add-int/lit8 v6, v6, 0x1

    .line 3539
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3544
    :cond_6
    aget-object v9, p0, v4

    invoke-static {v1, v3, v9}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    .line 3545
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public static newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 9
    .parameter "t"
    .parameter "lastCatchScope"
    .parameter "exceptionName"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 3297
    instance-of v1, p0, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v1, :cond_2

    .line 3298
    const/4 p1, 0x0

    .line 3299
    .local p1, cacheObj:Z
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/JavaScriptException;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, obj:Ljava/lang/Object;
    move-object v2, v1

    .line 3383
    .end local v1           #obj:Ljava/lang/Object;
    .local v2, obj:Ljava/lang/Object;
    :goto_0
    new-instance v1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 3385
    .local v1, catchScopeObject:Lorg/mozilla/javascript/NativeObject;
    const/4 v3, 0x4

    invoke-virtual {v1, p2, v2, v3}, Lorg/mozilla/javascript/NativeObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 3388
    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_0

    .line 3392
    const-string p2, "__exception__"

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    const/4 p4, 0x6

    invoke-virtual {v1, p2, p3, p4}, Lorg/mozilla/javascript/NativeObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 3397
    .end local p4
    :cond_0
    if-eqz p1, :cond_1

    .line 3398
    invoke-virtual {v1, p0, v2}, Lorg/mozilla/javascript/NativeObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3400
    :cond_1
    return-object v1

    .line 3301
    .end local v1           #catchScopeObject:Lorg/mozilla/javascript/NativeObject;
    .end local v2           #obj:Ljava/lang/Object;
    .local p1, lastCatchScope:Lorg/mozilla/javascript/Scriptable;
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_2
    const/4 v1, 0x1

    .line 3306
    .local v1, cacheObj:Z
    if-eqz p1, :cond_3

    .line 3307
    check-cast p1, Lorg/mozilla/javascript/NativeObject;

    .line 3308
    .local p1, last:Lorg/mozilla/javascript/NativeObject;
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/NativeObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3309
    .local p1, obj:Ljava/lang/Object;
    if-nez p1, :cond_d

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-object v2, p1

    .end local p1           #obj:Ljava/lang/Object;
    .restart local v2       #obj:Ljava/lang/Object;
    move p1, v1

    .end local v1           #cacheObj:Z
    .local p1, cacheObj:Z
    goto :goto_0

    .line 3316
    .end local v2           #obj:Ljava/lang/Object;
    .restart local v1       #cacheObj:Z
    .local p1, lastCatchScope:Lorg/mozilla/javascript/Scriptable;
    :cond_3
    const/4 v3, 0x0

    .line 3318
    .local v3, javaException:Ljava/lang/Throwable;
    instance-of p1, p0, Lorg/mozilla/javascript/EcmaError;

    .end local p1           #lastCatchScope:Lorg/mozilla/javascript/Scriptable;
    if-eqz p1, :cond_7

    .line 3319
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/EcmaError;

    move-object p1, v0

    .line 3320
    .local p1, ee:Lorg/mozilla/javascript/EcmaError;
    move-object v4, p1

    .line 3321
    .local v4, re:Lorg/mozilla/javascript/RhinoException;
    invoke-virtual {p1}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3322
    .local v2, errorName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/mozilla/javascript/EcmaError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .local p1, errorMsg:Ljava/lang/String;
    move-object v6, v4

    .end local v4           #re:Lorg/mozilla/javascript/RhinoException;
    .local v6, re:Lorg/mozilla/javascript/RhinoException;
    move-object v4, v3

    .end local v3           #javaException:Ljava/lang/Throwable;
    .local v4, javaException:Ljava/lang/Throwable;
    move-object v3, v2

    .end local v2           #errorName:Ljava/lang/String;
    .local v3, errorName:Ljava/lang/String;
    move-object v2, p1

    .line 3348
    .end local p1           #errorMsg:Ljava/lang/String;
    .local v2, errorMsg:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object p1

    .line 3349
    .local p1, sourceUri:Ljava/lang/String;
    if-nez p1, :cond_c

    .line 3350
    const-string p1, ""

    move-object v7, p1

    .line 3352
    .end local p1           #sourceUri:Ljava/lang/String;
    .local v7, sourceUri:Ljava/lang/String;
    :goto_2
    invoke-virtual {v6}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v5

    .line 3354
    .local v5, line:I
    if-lez v5, :cond_b

    .line 3355
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, p1, v8

    const/4 v2, 0x1

    aput-object v7, p1, v2

    .end local v2           #errorMsg:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .end local v5           #line:I
    aput-object v5, p1, v2

    .line 3360
    .local p1, args:[Ljava/lang/Object;
    :goto_3
    invoke-virtual {p3, p4, v3, p1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 3361
    .local p1, errorObject:Lorg/mozilla/javascript/Scriptable;
    const-string v2, "name"

    invoke-static {p1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3363
    instance-of v2, p1, Lorg/mozilla/javascript/NativeError;

    if-eqz v2, :cond_4

    .line 3364
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeError;

    move-object v2, v0

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/NativeError;->setStackProvider(Lorg/mozilla/javascript/RhinoException;)V

    .line 3367
    :cond_4
    if-eqz v4, :cond_5

    invoke-static {p3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3368
    invoke-virtual {p3}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p4, v4, v3}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .end local v3           #errorName:Ljava/lang/String;
    move-result-object v2

    .line 3370
    .local v2, wrap:Ljava/lang/Object;
    const-string v3, "javaException"

    const/4 v4, 0x5

    invoke-static {p1, v3, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 3374
    .end local v2           #wrap:Ljava/lang/Object;
    .end local v4           #javaException:Ljava/lang/Throwable;
    :cond_5
    invoke-static {p3, v6}, Lorg/mozilla/javascript/ScriptRuntime;->isVisible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3375
    invoke-virtual {p3}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p4, v6, v3}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 3376
    .restart local v2       #wrap:Ljava/lang/Object;
    const-string v3, "rhinoException"

    const/4 v4, 0x5

    invoke-static {p1, v3, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 3380
    .end local v2           #wrap:Ljava/lang/Object;
    :cond_6
    move-object p1, p1

    .local p1, obj:Lorg/mozilla/javascript/Scriptable;
    move-object v2, p1

    .local v2, obj:Ljava/lang/Object;
    move p1, v1

    .end local v1           #cacheObj:Z
    .local p1, cacheObj:Z
    goto/16 :goto_0

    .line 3323
    .end local v2           #obj:Ljava/lang/Object;
    .end local v6           #re:Lorg/mozilla/javascript/RhinoException;
    .end local v7           #sourceUri:Ljava/lang/String;
    .end local p1           #cacheObj:Z
    .restart local v1       #cacheObj:Z
    .local v3, javaException:Ljava/lang/Throwable;
    :cond_7
    instance-of p1, p0, Lorg/mozilla/javascript/WrappedException;

    if-eqz p1, :cond_8

    .line 3324
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/WrappedException;

    move-object p1, v0

    .line 3325
    .local p1, we:Lorg/mozilla/javascript/WrappedException;
    move-object v4, p1

    .line 3326
    .local v4, re:Lorg/mozilla/javascript/RhinoException;
    invoke-virtual {p1}, Lorg/mozilla/javascript/WrappedException;->getWrappedException()Ljava/lang/Throwable;

    move-result-object v3

    .line 3327
    const-string v2, "JavaException"

    .line 3328
    .local v2, errorName:Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #we:Lorg/mozilla/javascript/WrappedException;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, errorMsg:Ljava/lang/String;
    move-object v6, v4

    .end local v4           #re:Lorg/mozilla/javascript/RhinoException;
    .restart local v6       #re:Lorg/mozilla/javascript/RhinoException;
    move-object v4, v3

    .end local v3           #javaException:Ljava/lang/Throwable;
    .local v4, javaException:Ljava/lang/Throwable;
    move-object v3, v2

    .end local v2           #errorName:Ljava/lang/String;
    .local v3, errorName:Ljava/lang/String;
    move-object v2, p1

    .line 3330
    .end local p1           #errorMsg:Ljava/lang/String;
    .local v2, errorMsg:Ljava/lang/String;
    goto/16 :goto_1

    .end local v2           #errorMsg:Ljava/lang/String;
    .end local v4           #javaException:Ljava/lang/Throwable;
    .end local v6           #re:Lorg/mozilla/javascript/RhinoException;
    .local v3, javaException:Ljava/lang/Throwable;
    :cond_8
    instance-of p1, p0, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz p1, :cond_9

    .line 3332
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/EvaluatorException;

    move-object p1, v0

    .line 3333
    .local p1, ee:Lorg/mozilla/javascript/EvaluatorException;
    move-object v4, p1

    .line 3334
    .local v4, re:Lorg/mozilla/javascript/RhinoException;
    const-string v2, "InternalError"

    .line 3335
    .local v2, errorName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/mozilla/javascript/EvaluatorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .local p1, errorMsg:Ljava/lang/String;
    move-object v6, v4

    .end local v4           #re:Lorg/mozilla/javascript/RhinoException;
    .restart local v6       #re:Lorg/mozilla/javascript/RhinoException;
    move-object v4, v3

    .end local v3           #javaException:Ljava/lang/Throwable;
    .local v4, javaException:Ljava/lang/Throwable;
    move-object v3, v2

    .end local v2           #errorName:Ljava/lang/String;
    .local v3, errorName:Ljava/lang/String;
    move-object v2, p1

    .line 3336
    .end local p1           #errorMsg:Ljava/lang/String;
    .local v2, errorMsg:Ljava/lang/String;
    goto/16 :goto_1

    .end local v2           #errorMsg:Ljava/lang/String;
    .end local v4           #javaException:Ljava/lang/Throwable;
    .end local v6           #re:Lorg/mozilla/javascript/RhinoException;
    .local v3, javaException:Ljava/lang/Throwable;
    :cond_9
    const/16 p1, 0xd

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3339
    new-instance v4, Lorg/mozilla/javascript/WrappedException;

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 3340
    .local v4, re:Lorg/mozilla/javascript/RhinoException;
    const-string v2, "JavaException"

    .line 3341
    .local v2, errorName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .restart local p1       #errorMsg:Ljava/lang/String;
    move-object v6, v4

    .end local v4           #re:Lorg/mozilla/javascript/RhinoException;
    .restart local v6       #re:Lorg/mozilla/javascript/RhinoException;
    move-object v4, v3

    .end local v3           #javaException:Ljava/lang/Throwable;
    .local v4, javaException:Ljava/lang/Throwable;
    move-object v3, v2

    .end local v2           #errorName:Ljava/lang/String;
    .local v3, errorName:Ljava/lang/String;
    move-object v2, p1

    .end local p1           #errorMsg:Ljava/lang/String;
    .local v2, errorMsg:Ljava/lang/String;
    goto/16 :goto_1

    .line 3345
    .end local v2           #errorMsg:Ljava/lang/String;
    .end local v4           #javaException:Ljava/lang/Throwable;
    .end local v6           #re:Lorg/mozilla/javascript/RhinoException;
    .local v3, javaException:Ljava/lang/Throwable;
    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    .end local p0
    throw p0

    .line 3357
    .restart local v2       #errorMsg:Ljava/lang/String;
    .local v3, errorName:Ljava/lang/String;
    .restart local v4       #javaException:Ljava/lang/Throwable;
    .restart local v5       #line:I
    .restart local v6       #re:Lorg/mozilla/javascript/RhinoException;
    .restart local v7       #sourceUri:Ljava/lang/String;
    .restart local p0
    :cond_b
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, p1, v5

    .end local v5           #line:I
    const/4 v2, 0x1

    aput-object v7, p1, v2

    .end local v2           #errorMsg:Ljava/lang/String;
    .local p1, args:[Ljava/lang/Object;
    goto/16 :goto_3

    .end local v7           #sourceUri:Ljava/lang/String;
    .restart local v2       #errorMsg:Ljava/lang/String;
    .local p1, sourceUri:Ljava/lang/String;
    :cond_c
    move-object v7, p1

    .end local p1           #sourceUri:Ljava/lang/String;
    .restart local v7       #sourceUri:Ljava/lang/String;
    goto/16 :goto_2

    .end local v2           #errorMsg:Ljava/lang/String;
    .end local v3           #errorName:Ljava/lang/String;
    .end local v4           #javaException:Ljava/lang/Throwable;
    .end local v6           #re:Lorg/mozilla/javascript/RhinoException;
    .end local v7           #sourceUri:Ljava/lang/String;
    .local p1, obj:Ljava/lang/Object;
    :cond_d
    move-object v2, p1

    .end local p1           #obj:Ljava/lang/Object;
    .local v2, obj:Ljava/lang/Object;
    move p1, v1

    .end local v1           #cacheObj:Z
    .local p1, cacheObj:Z
    goto/16 :goto_0
.end method

.method public static newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 3
    .parameter "fun"
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 2419
    instance-of v2, p0, Lorg/mozilla/javascript/Function;

    if-nez v2, :cond_0

    .line 2420
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2422
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v1, v0

    .line 2423
    .local v1, function:Lorg/mozilla/javascript/Function;
    invoke-interface {v1, p1, p2, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    return-object v2
.end method

.method public static newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "constructorName"
    .parameter "args"

    .prologue
    .line 1063
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1064
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    .line 1065
    .local v0, ctor:Lorg/mozilla/javascript/Function;
    if-nez p3, :cond_0

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 1066
    :cond_0
    invoke-interface {v0, p0, p1, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    return-object v1
.end method

.method public static newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "propertyIds"
    .parameter "propertyValues"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 3562
    array-length v1, p0

    new-array v0, v1, [I

    .line 3563
    .local v0, getterSetters:[I
    invoke-static {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    return-object v1
.end method

.method public static newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 16
    .parameter "propertyIds"
    .parameter "propertyValues"
    .parameter "getterSetters"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 3572
    invoke-virtual/range {p3 .. p4}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v12

    .line 3573
    .local v12, object:Lorg/mozilla/javascript/Scriptable;
    const/4 v9, 0x0

    .local v9, i:I
    move-object/from16 v0, p0

    array-length v0, v0

    move v6, v0

    .local v6, end:I
    :goto_0
    if-eq v9, v6, :cond_4

    .line 3574
    aget-object v10, p0, v9

    .line 3575
    .local v10, id:Ljava/lang/Object;
    aget v8, p2, v9

    .line 3576
    .local v8, getterSetter:I
    aget-object v14, p1, v9

    .line 3577
    .local v14, value:Ljava/lang/Object;
    instance-of v15, v10, Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 3578
    if-nez v8, :cond_1

    .line 3579
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Lorg/mozilla/javascript/ScriptRuntime;->isSpecialProperty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3580
    check-cast v10, Ljava/lang/String;

    .end local v10           #id:Ljava/lang/Object;
    move-object v0, v12

    move-object v1, v10

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Ref;->set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3573
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3582
    .restart local v10       #id:Ljava/lang/Object;
    :cond_0
    check-cast v10, Ljava/lang/String;

    .end local v10           #id:Ljava/lang/Object;
    invoke-static {v12, v10, v14}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 3587
    .restart local v10       #id:Ljava/lang/Object;
    :cond_1
    if-gez v8, :cond_2

    .line 3588
    const-string v5, "__defineGetter__"

    .line 3591
    .local v5, definer:Ljava/lang/String;
    :goto_2
    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v7

    .line 3593
    .local v7, fun:Lorg/mozilla/javascript/Callable;
    invoke-static/range {p3 .. p3}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    .line 3594
    const/4 v15, 0x2

    new-array v13, v15, [Ljava/lang/Object;

    .line 3595
    .local v13, outArgs:[Ljava/lang/Object;
    const/4 v15, 0x0

    aput-object v10, v13, v15

    .line 3596
    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 3597
    move-object v0, v7

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v12

    move-object v4, v13

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3590
    .end local v5           #definer:Ljava/lang/String;
    .end local v7           #fun:Lorg/mozilla/javascript/Callable;
    .end local v13           #outArgs:[Ljava/lang/Object;
    :cond_2
    const-string v5, "__defineSetter__"

    .restart local v5       #definer:Ljava/lang/String;
    goto :goto_2

    .line 3600
    .end local v5           #definer:Ljava/lang/String;
    :cond_3
    check-cast v10, Ljava/lang/Integer;

    .end local v10           #id:Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3601
    .local v11, index:I
    invoke-static {v12, v11, v14}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    goto :goto_1

    .line 3604
    .end local v8           #getterSetter:I
    .end local v11           #index:I
    .end local v14           #value:Ljava/lang/Object;
    :cond_4
    return-object v12
.end method

.method public static newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .locals 2
    .parameter "cx"
    .parameter "fun"
    .parameter "args"
    .parameter "scope"
    .parameter "callType"

    .prologue
    .line 2453
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 2454
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->isEvalFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2455
    const-string v0, "msg.not.ctor"

    const-string v1, "eval"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 2457
    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 2458
    invoke-static {p1}, Lorg/mozilla/javascript/NativeWith;->isWithFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2459
    invoke-static {p0, p3, p2}, Lorg/mozilla/javascript/NativeWith;->newWithSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2465
    :goto_0
    return-object v0

    .line 2462
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2465
    :cond_2
    invoke-static {p1, p0, p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0
.end method

.method public static notFoundError(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 2
    .parameter "object"
    .parameter "property"

    .prologue
    .line 3823
    const-string v1, "msg.is.not.defined"

    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3824
    .local v0, msg:Ljava/lang/String;
    const-string v1, "ReferenceError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    throw v1
.end method

.method public static notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter "value"

    .prologue
    .line 3829
    invoke-static {p0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .parameter "value"
    .parameter "messageHelper"

    .prologue
    .line 3836
    if-nez p1, :cond_0

    const-string v1, "null"

    move-object v0, v1

    .line 3838
    .local v0, msg:Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    .line 3839
    const-string v1, "msg.function.not.found"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    .line 3841
    :goto_1
    return-object v1

    .line 3836
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 3841
    .restart local v0       #msg:Ljava/lang/String;
    :cond_1
    const-string v1, "msg.isnt.function"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    goto :goto_1
.end method

.method public static notFunctionError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3
    .parameter "obj"
    .parameter "value"
    .parameter "propertyName"

    .prologue
    .line 3848
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3849
    .local v0, objString:Ljava/lang/String;
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    .line 3850
    const-string v1, "msg.function.not.found.in"

    invoke-static {v1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    .line 3853
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "msg.isnt.function.in"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    goto :goto_0
.end method

.method private static notXmlError(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .parameter "value"

    .prologue
    .line 3859
    const-string v0, "msg.isnt.xml.object"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method public static numberToString(DI)Ljava/lang/String;
    .locals 4
    .parameter "d"
    .parameter "base"

    .prologue
    const/4 v3, 0x0

    .line 818
    cmpl-double v1, p0, p0

    if-eqz v1, :cond_0

    .line 819
    const-string v1, "NaN"

    .line 837
    :goto_0
    return-object v1

    .line 820
    :cond_0
    const-wide/high16 v1, 0x7ff0

    cmpl-double v1, p0, v1

    if-nez v1, :cond_1

    .line 821
    const-string v1, "Infinity"

    goto :goto_0

    .line 822
    :cond_1
    const-wide/high16 v1, -0x10

    cmpl-double v1, p0, v1

    if-nez v1, :cond_2

    .line 823
    const-string v1, "-Infinity"

    goto :goto_0

    .line 824
    :cond_2
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-nez v1, :cond_3

    .line 825
    const-string v1, "0"

    goto :goto_0

    .line 827
    :cond_3
    const/4 v1, 0x2

    if-lt p2, v1, :cond_4

    const/16 v1, 0x24

    if-le p2, v1, :cond_5

    .line 828
    :cond_4
    const-string v1, "msg.bad.radix"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1

    .line 832
    :cond_5
    const/16 v1, 0xa

    if-eq p2, v1, :cond_6

    .line 833
    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/DToA;->JS_dtobasestr(ID)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 835
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 836
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {v0, v3, v3, p0, p1}, Lorg/mozilla/javascript/DToA;->JS_dtostr(Ljava/lang/StringBuffer;IID)V

    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .parameter "args"
    .parameter "count"

    .prologue
    .line 664
    array-length v2, p0

    if-ge p1, v2, :cond_0

    move-object v2, p0

    .line 677
    :goto_0
    return-object v2

    .line 668
    :cond_0
    new-array v1, p1, [Ljava/lang/Object;

    .line 669
    .local v1, result:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 670
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 673
    :cond_1
    :goto_2
    if-ge v0, p1, :cond_2

    .line 674
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 677
    goto :goto_0
.end method

.method public static propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .locals 4
    .parameter "obj"
    .parameter "id"
    .parameter "cx"
    .parameter "incrDecrMask"

    .prologue
    .line 2708
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2709
    .local v0, start:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 2710
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2713
    :cond_0
    move-object v1, v0

    .line 2717
    .local v1, target:Lorg/mozilla/javascript/Scriptable;
    :cond_1
    invoke-interface {v1, p1, v0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    .line 2718
    .local v2, value:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    .line 2726
    invoke-static {v1, p1, v0, v2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->doScriptableIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3

    .line 2721
    :cond_2
    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 2722
    if-nez v1, :cond_1

    .line 2723
    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-interface {v0, p1, v0, v3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 2724
    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto :goto_0
.end method

.method public static refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "ref"
    .parameter "cx"

    .prologue
    .line 1715
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Ref;->delete(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "ref"
    .parameter "cx"

    .prologue
    .line 1705
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Ref;->get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .locals 9
    .parameter "ref"
    .parameter "cx"
    .parameter "incrDecrMask"

    .prologue
    const-wide/high16 v7, 0x3ff0

    .line 2792
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Ref;->get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v5

    .line 2793
    .local v5, value:Ljava/lang/Object;
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    move v3, v6

    .line 2795
    .local v3, post:Z
    :goto_0
    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_2

    .line 2796
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 2804
    .end local v5           #value:Ljava/lang/Object;
    .local v1, number:D
    :cond_0
    :goto_1
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_3

    .line 2805
    add-double/2addr v1, v7

    .line 2809
    :goto_2
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    .line 2810
    .local v4, result:Ljava/lang/Number;
    invoke-virtual {p0, p1, v4}, Lorg/mozilla/javascript/Ref;->set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2811
    if-eqz v3, :cond_4

    move-object v6, v5

    .line 2814
    :goto_3
    return-object v6

    .line 2793
    .end local v1           #number:D
    .end local v3           #post:Z
    .end local v4           #result:Ljava/lang/Number;
    .restart local v5       #value:Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 2798
    .restart local v3       #post:Z
    :cond_2
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    .line 2799
    .restart local v1       #number:D
    if-eqz v3, :cond_0

    .line 2801
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    .local v5, value:Ljava/lang/Number;
    goto :goto_1

    .line 2807
    .end local v5           #value:Ljava/lang/Number;
    :cond_3
    sub-double/2addr v1, v7

    goto :goto_2

    .restart local v4       #result:Ljava/lang/Number;
    :cond_4
    move-object v6, v4

    .line 2814
    goto :goto_3
.end method

.method public static refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "ref"
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 1710
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Ref;->set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static searchDefaultNamespace(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "cx"

    .prologue
    const-string v4, "__default_namespace__"

    .line 1228
    iget-object v2, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 1229
    .local v2, scope:Lorg/mozilla/javascript/Scriptable;
    if-nez v2, :cond_0

    .line 1230
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1234
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 1235
    .local v1, parent:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_1

    .line 1236
    const-string v3, "__default_namespace__"

    invoke-static {v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1237
    .local v0, nsObject:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v3, :cond_2

    .line 1238
    const/4 v3, 0x0

    .line 1248
    :goto_1
    return-object v3

    .line 1242
    .end local v0           #nsObject:Ljava/lang/Object;
    :cond_1
    const-string v3, "__default_namespace__"

    invoke-interface {v2, v4, v2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 1243
    .restart local v0       #nsObject:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v3, :cond_3

    :cond_2
    move-object v3, v0

    .line 1248
    goto :goto_1

    .line 1246
    :cond_3
    move-object v2, v1

    .line 1247
    goto :goto_0
.end method

.method public static setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "bound"
    .parameter "value"
    .parameter "cx"
    .parameter "id"

    .prologue
    .line 1983
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v2, :cond_0

    .line 1984
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v1, v0

    .line 1985
    .local v1, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v1, p2, p3, p1}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaPut(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1989
    .end local v1           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object p1

    .line 1987
    :cond_0
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "namespace"
    .parameter "cx"

    .prologue
    const-string v4, "__default_namespace__"

    .line 1205
    iget-object v1, p1, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 1206
    .local v1, scope:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_0

    .line 1207
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 1210
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->currentXMLLib(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v2

    .line 1211
    .local v2, xmlLib:Lorg/mozilla/javascript/xml/XMLLib;
    invoke-virtual {v2, p1, p0}, Lorg/mozilla/javascript/xml/XMLLib;->toDefaultXmlNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1214
    .local v0, ns:Ljava/lang/Object;
    const-string v3, "__default_namespace__"

    invoke-interface {v1, v4, v1}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1216
    const-string v3, "__default_namespace__"

    const/4 v3, 0x6

    invoke-static {v1, v4, v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1223
    :goto_0
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v3

    .line 1220
    :cond_1
    const-string v3, "__default_namespace__"

    invoke-interface {v1, v4, v1, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setEnumNumbers(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "enumObj"
    .parameter "enumNumbers"

    .prologue
    .line 2089
    check-cast p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;

    .end local p0
    iput-boolean p1, p0, Lorg/mozilla/javascript/ScriptRuntime$IdEnumeration;->enumNumbers:Z

    .line 2090
    return-void
.end method

.method public static setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .parameter "fn"
    .parameter "scope"

    .prologue
    .line 3454
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 3455
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/BaseFunction;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 3456
    return-void
.end method

.method public static setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "bound"
    .parameter "value"
    .parameter "cx"
    .parameter "scope"
    .parameter "id"

    .prologue
    .line 1926
    if-eqz p0, :cond_1

    .line 1927
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v2, :cond_0

    .line 1928
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v1, v0

    .line 1929
    .local v1, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v1, p2, p4, p1}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaPut(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1950
    .end local v1           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object p1

    .line 1931
    :cond_0
    invoke-static {p0, p4, p1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1937
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1940
    :cond_2
    const-string v2, "msg.assn.create.strict"

    invoke-static {v2, p4}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 1944
    :cond_3
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 1945
    iget-boolean v2, p2, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    if-eqz v2, :cond_4

    .line 1946
    iget-object v2, p2, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 1948
    :cond_4
    invoke-interface {p0, p4, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "elem"
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 1576
    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 1577
    .local v0, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 1578
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1580
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static setObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "obj"
    .parameter "elem"
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 1586
    instance-of v4, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v4, :cond_0

    .line 1587
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v3, v0

    .line 1588
    .local v3, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v3, p3, p1, p2}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaPut(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1600
    .end local v3           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object p2

    .line 1592
    :cond_0
    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1593
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1594
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v1

    .line 1595
    .local v1, index:I
    invoke-static {p0, v1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    goto :goto_0

    .line 1597
    .end local v1           #index:I
    :cond_1
    invoke-static {p0, v2, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "obj"
    .parameter "dblIndex"
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 1635
    invoke-static {p4, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 1636
    .local v2, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v2, :cond_0

    .line 1637
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p3}, Lorg/mozilla/javascript/ScriptRuntime;->undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1640
    :cond_0
    double-to-int v0, p1

    .line 1641
    .local v0, index:I
    int-to-double v3, v0

    cmpl-double v3, v3, p1

    if-nez v3, :cond_1

    .line 1642
    invoke-static {v2, v0, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    .line 1645
    :goto_0
    return-object v3

    .line 1644
    :cond_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 1645
    .local v1, s:Ljava/lang/String;
    invoke-static {v2, v1, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public static setObjectIndex(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "index"
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 1652
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v2, :cond_0

    .line 1653
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v1, v0

    .line 1654
    .local v1, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2, p2}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaPut(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1658
    .end local v1           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object p2

    .line 1656
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "property"
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 1609
    invoke-static {p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 1610
    .local v0, sobj:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 1611
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1613
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "property"
    .parameter "value"
    .parameter "cx"

    .prologue
    .line 1619
    instance-of v2, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v2, :cond_0

    .line 1620
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v1, v0

    .line 1621
    .local v1, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v1, p3, p1, p2}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaPut(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1625
    .end local v1           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object p2

    .line 1623
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V
    .locals 2
    .parameter "object"
    .parameter "scope"

    .prologue
    .line 3462
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 3463
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 3464
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 3466
    .local v0, proto:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 3467
    return-void
.end method

.method public static setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V
    .locals 1
    .parameter "cx"
    .parameter "proxy"

    .prologue
    .line 3879
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3880
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

    .line 3881
    return-void
.end method

.method public static shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2979
    if-ne p0, p1, :cond_2

    .line 2980
    instance-of v2, p0, Ljava/lang/Number;

    if-nez v2, :cond_0

    move v2, v7

    .line 3009
    .end local p0
    .end local p1
    :goto_0
    return v2

    .line 2984
    .restart local p0
    .restart local p1
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2985
    .local v0, d:D
    cmpl-double v2, v0, v0

    if-nez v2, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0

    .line 2987
    .end local v0           #d:D
    .restart local p0
    :cond_2
    if-eqz p0, :cond_3

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v2, :cond_4

    :cond_3
    move v2, v6

    .line 2988
    goto :goto_0

    .line 2989
    :cond_4
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_6

    .line 2990
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_c

    .line 2991
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    move v2, v7

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_0

    .line 2993
    .restart local p0
    .restart local p1
    :cond_6
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 2994
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 2995
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2997
    :cond_7
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 2998
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    .line 2999
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 3001
    :cond_8
    instance-of v2, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_a

    .line 3002
    instance-of v2, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_c

    instance-of v2, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_c

    .line 3003
    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    .end local p0
    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v2

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .end local p1
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_9

    move v2, v7

    goto :goto_0

    :cond_9
    move v2, v6

    goto :goto_0

    .line 3006
    .restart local p0
    .restart local p1
    :cond_a
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    .line 3007
    if-ne p0, p1, :cond_b

    move v2, v7

    goto :goto_0

    :cond_b
    move v2, v6

    goto :goto_0

    :cond_c
    move v2, v6

    .line 3009
    goto :goto_0
.end method

.method public static specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;
    .locals 1
    .parameter "obj"
    .parameter "specialProperty"
    .parameter "cx"

    .prologue
    .line 1726
    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/SpecialRef;->createSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Ref;

    move-result-object v0

    return-object v0
.end method

.method private static storeIndexResult(Lorg/mozilla/javascript/Context;I)V
    .locals 0
    .parameter "cx"
    .parameter "index"

    .prologue
    .line 3969
    iput p1, p0, Lorg/mozilla/javascript/Context;->scratchIndex:I

    .line 3970
    return-void
.end method

.method private static storeScriptable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .parameter "cx"
    .parameter "value"

    .prologue
    .line 3995
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->scratchScriptable:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 3996
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3997
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->scratchScriptable:Lorg/mozilla/javascript/Scriptable;

    .line 3998
    return-void
.end method

.method public static storeUint32Result(Lorg/mozilla/javascript/Context;J)V
    .locals 4
    .parameter "cx"
    .parameter "value"

    .prologue
    .line 3979
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3980
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3981
    :cond_0
    iput-wide p1, p0, Lorg/mozilla/javascript/Context;->scratchUint32:J

    .line 3982
    return-void
.end method

.method public static strictSetName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "bound"
    .parameter "value"
    .parameter "cx"
    .parameter "scope"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1955
    if-eqz p0, :cond_1

    .line 1962
    instance-of v4, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v4, :cond_0

    .line 1963
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/xml/XMLObject;

    move-object v3, v0

    .line 1964
    .local v3, xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    invoke-virtual {v3, p2, p4, p1}, Lorg/mozilla/javascript/xml/XMLObject;->ecmaPut(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1977
    .end local v3           #xmlObject:Lorg/mozilla/javascript/xml/XMLObject;
    :goto_0
    return-object p1

    .line 1966
    :cond_0
    invoke-static {p0, p4, p1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1970
    :cond_1
    new-array v2, v6, [I

    .line 1971
    .local v2, linep:[I
    invoke-static {v2}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v1

    .line 1972
    .local v1, filename:Ljava/lang/String;
    new-instance v4, Lorg/mozilla/javascript/JavaScriptException;

    const-string v5, "ReferenceError"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p4, v6, v7

    invoke-virtual {p2, p3, v5, v6}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    aget v6, v2, v7

    invoke-direct {v4, v5, v1, v6}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw v4
.end method

.method static stringToNumber(Ljava/lang/String;II)D
    .locals 24
    .parameter "s"
    .parameter "start"
    .parameter "radix"

    .prologue
    .line 432
    const/16 v3, 0x39

    .line 433
    .local v3, digitMax:C
    const/16 v6, 0x61

    .line 434
    .local v6, lowerCaseBound:C
    const/16 v7, 0x41

    .line 435
    .local v7, upperCaseBound:C
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 436
    .local v5, len:I
    const/16 v4, 0xa

    move/from16 v0, p2

    move v1, v4

    if-ge v0, v1, :cond_12

    .line 437
    add-int/lit8 v3, p2, 0x30

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-char v3, v3

    move v4, v3

    .line 439
    .end local v3           #digitMax:C
    .local v4, digitMax:C
    :goto_0
    const/16 v3, 0xa

    move/from16 v0, p2

    move v1, v3

    if-le v0, v1, :cond_11

    .line 440
    add-int/lit8 v3, p2, 0x61

    const/16 v6, 0xa

    sub-int/2addr v3, v6

    int-to-char v3, v3

    .line 441
    .end local v6           #lowerCaseBound:C
    .local v3, lowerCaseBound:C
    add-int/lit8 v6, p2, 0x41

    const/16 v7, 0xa

    sub-int/2addr v6, v7

    int-to-char v6, v6

    .end local v7           #upperCaseBound:C
    .local v6, upperCaseBound:C
    move v11, v6

    .end local v6           #upperCaseBound:C
    .local v11, upperCaseBound:C
    move v6, v3

    .line 444
    .end local v3           #lowerCaseBound:C
    .local v6, lowerCaseBound:C
    :goto_1
    const-wide/16 v7, 0x0

    .line 445
    .local v7, sum:D
    move/from16 v3, p1

    .local v3, end:I
    move-wide v12, v7

    .end local v7           #sum:D
    .local v12, sum:D
    move v8, v3

    .end local v3           #end:I
    .local v8, end:I
    :goto_2
    if-ge v8, v5, :cond_2

    .line 446
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 448
    .local v3, c:C
    const/16 v7, 0x30

    if-gt v7, v3, :cond_0

    if-gt v3, v4, :cond_0

    .line 449
    const/16 v7, 0x30

    sub-int/2addr v3, v7

    .line 456
    .local v3, newDigit:I
    :goto_3
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v9, v0

    mul-double/2addr v9, v12

    int-to-double v12, v3

    add-double/2addr v9, v12

    .line 445
    .end local v12           #sum:D
    .local v9, sum:D
    add-int/lit8 v3, v8, 0x1

    .end local v8           #end:I
    .local v3, end:I
    move-wide v12, v9

    .end local v9           #sum:D
    .restart local v12       #sum:D
    move v8, v3

    .end local v3           #end:I
    .restart local v8       #end:I
    goto :goto_2

    .line 450
    .local v3, c:C
    :cond_0
    const/16 v7, 0x61

    if-gt v7, v3, :cond_1

    if-ge v3, v6, :cond_1

    .line 451
    const/16 v7, 0x61

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, 0xa

    .local v3, newDigit:I
    goto :goto_3

    .line 452
    .local v3, c:C
    :cond_1
    const/16 v7, 0x41

    if-gt v7, v3, :cond_2

    if-ge v3, v11, :cond_2

    .line 453
    const/16 v7, 0x41

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, 0xa

    .local v3, newDigit:I
    goto :goto_3

    .line 458
    .end local v3           #newDigit:I
    :cond_2
    move/from16 v0, p1

    move v1, v8

    if-ne v0, v1, :cond_3

    .line 459
    sget-wide v3, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    move-wide v5, v3

    move-wide v3, v12

    .line 577
    .end local v4           #digitMax:C
    .end local v5           #len:I
    .end local v6           #lowerCaseBound:C
    .end local v11           #upperCaseBound:C
    .end local v12           #sum:D
    .end local p0
    .local v3, sum:D
    :goto_4
    return-wide v5

    .line 461
    .end local v3           #sum:D
    .restart local v4       #digitMax:C
    .restart local v5       #len:I
    .restart local v6       #lowerCaseBound:C
    .restart local v11       #upperCaseBound:C
    .restart local v12       #sum:D
    .restart local p0
    :cond_3
    const-wide/high16 v3, 0x4340

    cmpl-double v3, v12, v3

    if-ltz v3, :cond_10

    .line 462
    const/16 v3, 0xa

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_4

    .line 469
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    move-wide v5, v3

    move-wide v3, v12

    .end local v4           #digitMax:C
    .end local v12           #sum:D
    .restart local v3       #sum:D
    goto :goto_4

    .line 470
    .end local v3           #sum:D
    .restart local v4       #digitMax:C
    .restart local v12       #sum:D
    :catch_0
    move-exception p0

    .line 471
    .local p0, nfe:Ljava/lang/NumberFormatException;
    sget-wide v3, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    move-wide v5, v3

    move-wide v3, v12

    .end local v4           #digitMax:C
    .end local v12           #sum:D
    .restart local v3       #sum:D
    goto :goto_4

    .line 473
    .end local v3           #sum:D
    .restart local v4       #digitMax:C
    .restart local v12       #sum:D
    .local p0, s:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x2

    move/from16 v0, p2

    move v1, v3

    if-eq v0, v1, :cond_5

    const/4 v3, 0x4

    move/from16 v0, p2

    move v1, v3

    if-eq v0, v1, :cond_5

    const/16 v3, 0x8

    move/from16 v0, p2

    move v1, v3

    if-eq v0, v1, :cond_5

    const/16 v3, 0x10

    move/from16 v0, p2

    move v1, v3

    if-eq v0, v1, :cond_5

    const/16 v3, 0x20

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_10

    .line 486
    :cond_5
    const/4 v5, 0x1

    .line 487
    .local v5, bitShiftInChar:I
    const/4 v6, 0x0

    .line 489
    .local v6, digit:I
    const/4 v3, 0x0

    .line 490
    .local v3, SKIP_LEADING_ZEROS:I
    const/4 v3, 0x1

    .line 491
    .local v3, FIRST_EXACT_53_BITS:I
    const/4 v3, 0x2

    .line 492
    .local v3, AFTER_BIT_53:I
    const/4 v3, 0x3

    .line 493
    .local v3, ZEROS_AFTER_54:I
    const/4 v3, 0x4

    .line 495
    .local v3, MIXED_AFTER_54:I
    const/4 v11, 0x0

    .line 496
    .local v11, state:I
    const/16 v7, 0x35

    .line 497
    .local v7, exactBitsLimit:I
    const-wide/16 v9, 0x0

    .line 498
    .local v9, factor:D
    const/4 v3, 0x0

    .line 500
    .local v3, bit53:Z
    const/4 v4, 0x0

    .local v4, bit54:Z
    move/from16 v17, v4

    .end local v4           #bit54:Z
    .local v17, bit54:Z
    move v4, v3

    .end local v3           #bit53:Z
    .local v4, bit53:Z
    move v3, v6

    .end local v6           #digit:I
    .local v3, digit:I
    move/from16 v6, p1

    .end local p1
    .local v6, start:I
    move/from16 p1, v5

    .end local v5           #bitShiftInChar:I
    .local p1, bitShiftInChar:I
    move/from16 v5, v17

    .end local v17           #bit54:Z
    .local v5, bit54:Z
    move/from16 v18, v11

    .end local v11           #state:I
    .local v18, state:I
    move-wide/from16 v19, v12

    .end local v12           #sum:D
    .local v19, sum:D
    move-wide/from16 v13, v19

    .end local v19           #sum:D
    .local v13, sum:D
    move/from16 v12, v18

    .end local v18           #state:I
    .local v12, state:I
    move-wide/from16 v21, v9

    .end local v9           #factor:D
    .local v21, factor:D
    move-wide/from16 v10, v21

    .end local v21           #factor:D
    .local v10, factor:D
    move v9, v7

    .line 503
    .end local v7           #exactBitsLimit:I
    .local v9, exactBitsLimit:I
    :goto_5
    const/4 v7, 0x1

    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_f

    .line 504
    if-ne v6, v8, :cond_6

    .line 551
    packed-switch v12, :pswitch_data_0

    move-wide v3, v13

    .end local v4           #bit53:Z
    .end local v13           #sum:D
    .local v3, sum:D
    move/from16 p1, v6

    .end local v5           #bit54:Z
    .end local v6           #start:I
    .end local v9           #exactBitsLimit:I
    .end local v10           #factor:D
    .end local v12           #state:I
    .end local p0           #s:Ljava/lang/String;
    .local p1, start:I
    :goto_6
    move-wide v5, v3

    .line 577
    goto :goto_4

    .line 506
    .local v3, digit:I
    .restart local v4       #bit53:Z
    .restart local v5       #bit54:Z
    .restart local v6       #start:I
    .restart local v9       #exactBitsLimit:I
    .restart local v10       #factor:D
    .restart local v12       #state:I
    .restart local v13       #sum:D
    .restart local p0       #s:Ljava/lang/String;
    .local p1, bitShiftInChar:I
    :cond_6
    add-int/lit8 p1, v6, 0x1

    .end local v6           #start:I
    .local p1, start:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 507
    const/16 v6, 0x30

    if-gt v6, v3, :cond_8

    const/16 v6, 0x39

    if-gt v3, v6, :cond_8

    .line 508
    add-int/lit8 v3, v3, -0x30

    move v6, v3

    .line 513
    .end local v3           #digit:I
    .local v6, digit:I
    :goto_7
    move/from16 v3, p2

    .local v3, bitShiftInChar:I
    move v7, v6

    .line 515
    .end local v6           #digit:I
    .local v7, digit:I
    :goto_8
    shr-int/lit8 v6, v3, 0x1

    .line 516
    .end local v3           #bitShiftInChar:I
    .local v6, bitShiftInChar:I
    and-int v3, v7, v6

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    .line 518
    .local v3, bit:Z
    :goto_9
    packed-switch v12, :pswitch_data_1

    :cond_7
    move v3, v4

    .end local v4           #bit53:Z
    .local v3, bit53:Z
    move v4, v5

    .end local v5           #bit54:Z
    .local v4, bit54:Z
    move v5, v9

    .end local v9           #exactBitsLimit:I
    .local v5, exactBitsLimit:I
    move-wide/from16 v17, v10

    .end local v10           #factor:D
    .local v17, factor:D
    move-wide/from16 v9, v17

    .end local v17           #factor:D
    .local v9, factor:D
    move v11, v12

    .end local v12           #state:I
    .restart local v11       #state:I
    move-wide/from16 v19, v13

    .end local v13           #sum:D
    .restart local v19       #sum:D
    move-wide/from16 v12, v19

    .end local v19           #sum:D
    .local v12, sum:D
    :goto_a
    move/from16 v17, v4

    .end local v4           #bit54:Z
    .local v17, bit54:Z
    move v4, v3

    .end local v3           #bit53:Z
    .local v4, bit53:Z
    move v3, v7

    .end local v7           #digit:I
    .local v3, digit:I
    move-wide/from16 v18, v9

    .end local v9           #factor:D
    .local v18, factor:D
    move v9, v5

    .end local v5           #exactBitsLimit:I
    .local v9, exactBitsLimit:I
    move/from16 v5, v17

    .end local v17           #bit54:Z
    .local v5, bit54:Z
    move/from16 v20, v11

    .end local v11           #state:I
    .local v20, state:I
    move-wide/from16 v10, v18

    .end local v18           #factor:D
    .restart local v10       #factor:D
    move/from16 v21, v6

    .end local v6           #bitShiftInChar:I
    .local v21, bitShiftInChar:I
    move/from16 v6, p1

    .end local p1           #start:I
    .local v6, start:I
    move/from16 p1, v21

    .end local v21           #bitShiftInChar:I
    .local p1, bitShiftInChar:I
    move-wide/from16 v22, v12

    .end local v12           #sum:D
    .local v22, sum:D
    move-wide/from16 v13, v22

    .end local v22           #sum:D
    .restart local v13       #sum:D
    move/from16 v12, v20

    .line 550
    .end local v20           #state:I
    .local v12, state:I
    goto :goto_5

    .line 509
    .end local v6           #start:I
    .local p1, start:I
    :cond_8
    const/16 v6, 0x61

    if-gt v6, v3, :cond_9

    const/16 v6, 0x7a

    if-gt v3, v6, :cond_9

    .line 510
    add-int/lit8 v3, v3, -0x57

    move v6, v3

    .end local v3           #digit:I
    .local v6, digit:I
    goto :goto_7

    .line 512
    .end local v6           #digit:I
    .restart local v3       #digit:I
    :cond_9
    add-int/lit8 v3, v3, -0x37

    move v6, v3

    .end local v3           #digit:I
    .restart local v6       #digit:I
    goto :goto_7

    .line 516
    .local v6, bitShiftInChar:I
    .restart local v7       #digit:I
    :cond_a
    const/4 v3, 0x0

    goto :goto_9

    .line 520
    .local v3, bit:Z
    :pswitch_0
    if-eqz v3, :cond_7

    .line 521
    add-int/lit8 v3, v9, -0x1

    .line 522
    .end local v9           #exactBitsLimit:I
    .local v3, exactBitsLimit:I
    const-wide/high16 v12, 0x3ff0

    .line 523
    .end local v13           #sum:D
    .local v12, sum:D
    const/4 v9, 0x1

    .local v9, state:I
    move/from16 v17, v5

    .end local v5           #bit54:Z
    .restart local v17       #bit54:Z
    move v5, v3

    .end local v3           #exactBitsLimit:I
    .local v5, exactBitsLimit:I
    move v3, v4

    .end local v4           #bit53:Z
    .local v3, bit53:Z
    move/from16 v4, v17

    .end local v17           #bit54:Z
    .local v4, bit54:Z
    move-wide/from16 v18, v10

    .end local v10           #factor:D
    .restart local v18       #factor:D
    move v11, v9

    .end local v9           #state:I
    .restart local v11       #state:I
    move-wide/from16 v9, v18

    .end local v18           #factor:D
    .local v9, factor:D
    goto :goto_a

    .line 527
    .end local v11           #state:I
    .local v3, bit:Z
    .local v4, bit53:Z
    .local v5, bit54:Z
    .local v9, exactBitsLimit:I
    .restart local v10       #factor:D
    .local v12, state:I
    .restart local v13       #sum:D
    :pswitch_1
    const-wide/high16 v15, 0x4000

    mul-double/2addr v13, v15

    .line 528
    if-eqz v3, :cond_b

    .line 529
    const-wide/high16 v15, 0x3ff0

    add-double/2addr v13, v15

    .line 530
    :cond_b
    add-int/lit8 v9, v9, -0x1

    .line 531
    if-nez v9, :cond_7

    .line 532
    move v3, v3

    .line 533
    .end local v4           #bit53:Z
    .local v3, bit53:Z
    const/4 v4, 0x2

    .end local v12           #state:I
    .local v4, state:I
    move/from16 v17, v5

    .end local v5           #bit54:Z
    .restart local v17       #bit54:Z
    move v5, v9

    .end local v9           #exactBitsLimit:I
    .local v5, exactBitsLimit:I
    move-wide/from16 v18, v10

    .end local v10           #factor:D
    .restart local v18       #factor:D
    move-wide/from16 v9, v18

    .end local v18           #factor:D
    .local v9, factor:D
    move v11, v4

    .end local v4           #state:I
    .restart local v11       #state:I
    move/from16 v4, v17

    .end local v17           #bit54:Z
    .local v4, bit54:Z
    move-wide/from16 v20, v13

    .end local v13           #sum:D
    .local v20, sum:D
    move-wide/from16 v12, v20

    .end local v20           #sum:D
    .local v12, sum:D
    goto :goto_a

    .line 537
    .end local v11           #state:I
    .local v3, bit:Z
    .local v4, bit53:Z
    .local v5, bit54:Z
    .local v9, exactBitsLimit:I
    .restart local v10       #factor:D
    .local v12, state:I
    .restart local v13       #sum:D
    :pswitch_2
    move v3, v3

    .line 538
    .end local v5           #bit54:Z
    .local v3, bit54:Z
    const-wide/high16 v10, 0x4000

    .line 539
    const/4 v5, 0x3

    .end local v12           #state:I
    .local v5, state:I
    move/from16 v17, v3

    .end local v3           #bit54:Z
    .restart local v17       #bit54:Z
    move v3, v4

    .end local v4           #bit53:Z
    .local v3, bit53:Z
    move/from16 v4, v17

    .end local v17           #bit54:Z
    .local v4, bit54:Z
    move-wide/from16 v18, v10

    .end local v10           #factor:D
    .restart local v18       #factor:D
    move v11, v5

    .end local v5           #state:I
    .restart local v11       #state:I
    move v5, v9

    .end local v9           #exactBitsLimit:I
    .local v5, exactBitsLimit:I
    move-wide/from16 v9, v18

    .end local v18           #factor:D
    .local v9, factor:D
    move-wide/from16 v20, v13

    .end local v13           #sum:D
    .restart local v20       #sum:D
    move-wide/from16 v12, v20

    .line 540
    .end local v20           #sum:D
    .local v12, sum:D
    goto :goto_a

    .line 542
    .end local v11           #state:I
    .local v3, bit:Z
    .local v4, bit53:Z
    .local v5, bit54:Z
    .local v9, exactBitsLimit:I
    .restart local v10       #factor:D
    .local v12, state:I
    .restart local v13       #sum:D
    :pswitch_3
    if-eqz v3, :cond_e

    .line 543
    const/4 v3, 0x4

    .line 547
    .end local v12           #state:I
    .local v3, state:I
    :goto_b
    const-wide/high16 v15, 0x4000

    mul-double/2addr v10, v15

    move/from16 v17, v5

    .end local v5           #bit54:Z
    .restart local v17       #bit54:Z
    move v5, v9

    .end local v9           #exactBitsLimit:I
    .local v5, exactBitsLimit:I
    move/from16 v18, v4

    .end local v4           #bit53:Z
    .local v18, bit53:Z
    move/from16 v4, v17

    .end local v17           #bit54:Z
    .local v4, bit54:Z
    move-wide/from16 v19, v10

    .end local v10           #factor:D
    .local v19, factor:D
    move-wide/from16 v9, v19

    .end local v19           #factor:D
    .local v9, factor:D
    move v11, v3

    .end local v3           #state:I
    .restart local v11       #state:I
    move/from16 v3, v18

    .end local v18           #bit53:Z
    .local v3, bit53:Z
    move-wide/from16 v21, v13

    .end local v13           #sum:D
    .local v21, sum:D
    move-wide/from16 v12, v21

    .end local v21           #sum:D
    .local v12, sum:D
    goto/16 :goto_a

    .line 553
    .end local v7           #digit:I
    .end local v11           #state:I
    .local v3, digit:I
    .local v4, bit53:Z
    .local v5, bit54:Z
    .local v6, start:I
    .local v9, exactBitsLimit:I
    .restart local v10       #factor:D
    .local v12, state:I
    .restart local v13       #sum:D
    .local p1, bitShiftInChar:I
    :pswitch_4
    const-wide/16 p0, 0x0

    .end local v13           #sum:D
    .end local p1           #bitShiftInChar:I
    .local p0, sum:D
    move-wide/from16 v3, p0

    .end local v4           #bit53:Z
    .end local p0           #sum:D
    .local v3, sum:D
    move/from16 p1, v6

    .line 554
    .end local v6           #start:I
    .local p1, start:I
    goto/16 :goto_6

    .local v3, digit:I
    .restart local v4       #bit53:Z
    .restart local v6       #start:I
    .restart local v13       #sum:D
    .local p0, s:Ljava/lang/String;
    .local p1, bitShiftInChar:I
    :pswitch_5
    move-wide v3, v13

    .end local v4           #bit53:Z
    .end local v13           #sum:D
    .local v3, sum:D
    move/from16 p1, v6

    .line 558
    .end local v6           #start:I
    .local p1, start:I
    goto/16 :goto_6

    .line 562
    .local v3, digit:I
    .restart local v4       #bit53:Z
    .restart local v6       #start:I
    .restart local v13       #sum:D
    .local p1, bitShiftInChar:I
    :pswitch_6
    and-int p0, v5, v4

    if-eqz p0, :cond_d

    .line 563
    .end local p0           #s:Ljava/lang/String;
    const-wide/high16 p0, 0x3ff0

    add-double p0, p0, v13

    .line 564
    .end local v13           #sum:D
    .end local p1           #bitShiftInChar:I
    .local p0, sum:D
    :goto_c
    mul-double p0, p0, v10

    move-wide/from16 v3, p0

    .end local v4           #bit53:Z
    .end local p0           #sum:D
    .local v3, sum:D
    move/from16 p1, v6

    .line 565
    .end local v6           #start:I
    .local p1, start:I
    goto/16 :goto_6

    .line 569
    .local v3, digit:I
    .restart local v4       #bit53:Z
    .restart local v6       #start:I
    .restart local v13       #sum:D
    .local p0, s:Ljava/lang/String;
    .local p1, bitShiftInChar:I
    :pswitch_7
    if-eqz v5, :cond_c

    .line 570
    const-wide/high16 p0, 0x3ff0

    add-double p0, p0, v13

    .line 571
    .end local v13           #sum:D
    .end local p1           #bitShiftInChar:I
    .local p0, sum:D
    :goto_d
    mul-double p0, p0, v10

    move-wide/from16 v3, p0

    .end local v4           #bit53:Z
    .end local p0           #sum:D
    .local v3, sum:D
    move/from16 p1, v6

    .end local v6           #start:I
    .local p1, start:I
    goto/16 :goto_6

    .local v3, digit:I
    .restart local v4       #bit53:Z
    .restart local v6       #start:I
    .restart local v13       #sum:D
    .local p0, s:Ljava/lang/String;
    .local p1, bitShiftInChar:I
    :cond_c
    move-wide/from16 p0, v13

    .end local v13           #sum:D
    .end local p1           #bitShiftInChar:I
    .local p0, sum:D
    goto :goto_d

    .end local p0           #sum:D
    .restart local v13       #sum:D
    .restart local p1       #bitShiftInChar:I
    :cond_d
    move-wide/from16 p0, v13

    .end local v13           #sum:D
    .end local p1           #bitShiftInChar:I
    .restart local p0       #sum:D
    goto :goto_c

    .local v3, bit:Z
    .local v6, bitShiftInChar:I
    .restart local v7       #digit:I
    .restart local v13       #sum:D
    .local p0, s:Ljava/lang/String;
    .local p1, start:I
    :cond_e
    :pswitch_8
    move v3, v12

    .end local v12           #state:I
    .local v3, state:I
    goto :goto_b

    .end local v7           #digit:I
    .local v3, digit:I
    .local v6, start:I
    .restart local v12       #state:I
    .local p1, bitShiftInChar:I
    :cond_f
    move v7, v3

    .end local v3           #digit:I
    .restart local v7       #digit:I
    move/from16 v3, p1

    .end local p1           #bitShiftInChar:I
    .local v3, bitShiftInChar:I
    move/from16 p1, v6

    .end local v6           #start:I
    .local p1, start:I
    goto/16 :goto_8

    .end local v3           #bitShiftInChar:I
    .end local v7           #digit:I
    .end local v9           #exactBitsLimit:I
    .end local v10           #factor:D
    .end local v13           #sum:D
    .local v4, digitMax:C
    .local v5, len:I
    .local v6, lowerCaseBound:C
    .local v11, upperCaseBound:C
    .local v12, sum:D
    :cond_10
    move-wide v3, v12

    .end local v4           #digitMax:C
    .end local v12           #sum:D
    .local v3, sum:D
    goto/16 :goto_6

    .end local v3           #sum:D
    .end local v8           #end:I
    .end local v11           #upperCaseBound:C
    .restart local v4       #digitMax:C
    .local v7, upperCaseBound:C
    :cond_11
    move v11, v7

    .end local v7           #upperCaseBound:C
    .restart local v11       #upperCaseBound:C
    goto/16 :goto_1

    .end local v4           #digitMax:C
    .end local v11           #upperCaseBound:C
    .local v3, digitMax:C
    .restart local v7       #upperCaseBound:C
    :cond_12
    move v4, v3

    .end local v3           #digitMax:C
    .restart local v4       #digitMax:C
    goto/16 :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 518
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public static testUint32String(Ljava/lang/String;)J
    .locals 15
    .parameter "str"

    .prologue
    const-wide/16 v13, 0x0

    const/16 v12, 0x9

    const-wide/16 v10, -0x1

    const/4 v7, 0x1

    .line 1336
    const/16 v0, 0xa

    .line 1338
    .local v0, MAX_VALUE_LENGTH:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1339
    .local v3, len:I
    if-gt v7, v3, :cond_5

    const/16 v6, 0xa

    if-gt v3, v6, :cond_5

    .line 1340
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1341
    .local v1, c:I
    add-int/lit8 v1, v1, -0x30

    .line 1342
    if-nez v1, :cond_1

    .line 1344
    if-ne v3, v7, :cond_0

    move-wide v6, v13

    .line 1361
    .end local v1           #c:I
    :goto_0
    return-wide v6

    .restart local v1       #c:I
    :cond_0
    move-wide v6, v10

    .line 1344
    goto :goto_0

    .line 1346
    :cond_1
    if-gt v7, v1, :cond_5

    if-gt v1, v12, :cond_5

    .line 1347
    int-to-long v4, v1

    .line 1348
    .local v4, v:J
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-eq v2, v3, :cond_4

    .line 1349
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    sub-int v1, v6, v7

    .line 1350
    if-ltz v1, :cond_2

    if-le v1, v12, :cond_3

    :cond_2
    move-wide v6, v10

    .line 1351
    goto :goto_0

    .line 1353
    :cond_3
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    int-to-long v8, v1

    add-long v4, v6, v8

    .line 1348
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1356
    :cond_4
    const/16 v6, 0x20

    ushr-long v6, v4, v6

    cmp-long v6, v6, v13

    if-nez v6, :cond_5

    move-wide v6, v4

    .line 1357
    goto :goto_0

    .end local v1           #c:I
    .end local v2           #i:I
    .end local v4           #v:J
    :cond_5
    move-wide v6, v10

    .line 1361
    goto :goto_0
.end method

.method public static throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;
    .locals 4
    .parameter "cx"
    .parameter "scope"
    .parameter "message"

    .prologue
    .line 4038
    const-string v1, "Error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 4040
    .local v0, error:Lorg/mozilla/javascript/Scriptable;
    new-instance v2, Lorg/mozilla/javascript/JavaScriptException;

    const-string v1, "fileName"

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->getTypedProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v1, "lineNumber"

    const-class v3, Ljava/lang/Number;

    invoke-static {v0, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->getTypedProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v2, v0, p0, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object v2
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 7
    .parameter "val"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 351
    :cond_0
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 352
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 378
    :goto_0
    return v3

    .line 353
    .restart local p0
    :cond_1
    if-eqz p0, :cond_2

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v3, :cond_3

    :cond_2
    move v3, v5

    .line 354
    goto :goto_0

    .line 355
    :cond_3
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 356
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_0

    .line 357
    .restart local p0
    :cond_5
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_7

    .line 358
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 359
    .local v1, d:D
    cmpl-double v3, v1, v1

    if-nez v3, :cond_6

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_0

    :cond_6
    move v3, v5

    goto :goto_0

    .line 361
    .end local v1           #d:D
    .restart local p0
    :cond_7
    instance-of v3, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_a

    .line 362
    instance-of v3, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v3, :cond_8

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v5

    .line 365
    goto :goto_0

    .line 367
    :cond_8
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/Context;->isVersionECMA1()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v6

    .line 369
    goto :goto_0

    .line 372
    :cond_9
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    invoke-interface {p0, v3}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 373
    .restart local p0
    instance-of v3, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_0

    .line 374
    const-string v3, "msg.primitive.expected"

    invoke-static {v3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 377
    :cond_a
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    move v3, v6

    .line 378
    goto :goto_0
.end method

.method public static toInt32(D)I
    .locals 7
    .parameter "d"

    .prologue
    .line 1116
    double-to-int v0, p0

    .line 1117
    .local v0, id:I
    int-to-double v5, v0

    cmpl-double v5, v5, p0

    if-nez v5, :cond_0

    move v5, v0

    .line 1138
    :goto_0
    return v5

    .line 1122
    :cond_0
    cmpl-double v5, p0, p0

    if-nez v5, :cond_1

    const-wide/high16 v5, 0x7ff0

    cmpl-double v5, p0, v5

    if-eqz v5, :cond_1

    const-wide/high16 v5, -0x10

    cmpl-double v5, p0, v5

    if-nez v5, :cond_2

    .line 1126
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1129
    :cond_2
    const-wide/16 v5, 0x0

    cmpl-double v5, p0, v5

    if-ltz v5, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    move-wide p0, v5

    .line 1131
    :goto_1
    const-wide/high16 v3, 0x41f0

    .line 1132
    .local v3, two32:D
    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide p0

    .line 1135
    double-to-long v1, p0

    .line 1138
    .local v1, l:J
    long-to-int v5, v1

    goto :goto_0

    .line 1129
    .end local v1           #l:J
    .end local v3           #two32:D
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    move-wide p0, v5

    goto :goto_1
.end method

.method public static toInt32(Ljava/lang/Object;)I
    .locals 2
    .parameter "val"

    .prologue
    .line 1105
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1106
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1108
    :goto_0
    return v0

    .restart local p0
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v0

    goto :goto_0
.end method

.method public static toInt32([Ljava/lang/Object;I)I
    .locals 1
    .parameter "args"
    .parameter "index"

    .prologue
    .line 1112
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toInteger(D)D
    .locals 4
    .parameter "d"

    .prologue
    const-wide/16 v2, 0x0

    .line 1080
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    move-wide v0, v2

    .line 1091
    :goto_0
    return-wide v0

    .line 1083
    :cond_0
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x10

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    :cond_1
    move-wide v0, p0

    .line 1086
    goto :goto_0

    .line 1088
    :cond_2
    cmpl-double v0, p0, v2

    if-lez v0, :cond_3

    .line 1089
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    .line 1091
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static toInteger(Ljava/lang/Object;)D
    .locals 2
    .parameter "val"

    .prologue
    .line 1074
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toInteger([Ljava/lang/Object;I)D
    .locals 2
    .parameter "args"
    .parameter "index"

    .prologue
    .line 1095
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static toIterator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/Scriptable;
    .locals 6
    .parameter "cx"
    .parameter "scope"
    .parameter "obj"
    .parameter "keyOnly"

    .prologue
    const-string v5, "__iterator__"

    .line 2027
    const-string v4, "__iterator__"

    invoke-static {p2, v5}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2030
    const-string v4, "__iterator__"

    invoke-static {p2, v5}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2032
    .local v3, v:Ljava/lang/Object;
    instance-of v4, v3, Lorg/mozilla/javascript/Callable;

    if-nez v4, :cond_0

    .line 2033
    const-string v4, "msg.invalid.iterator"

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 2035
    :cond_0
    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v2, v0

    .line 2036
    .local v2, f:Lorg/mozilla/javascript/Callable;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v5, v1, v4

    .line 2038
    .local v1, args:[Ljava/lang/Object;
    invoke-interface {v2, p0, p1, p2, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2039
    instance-of v4, v3, Lorg/mozilla/javascript/Scriptable;

    if-nez v4, :cond_2

    .line 2040
    const-string v4, "msg.iterator.primitive"

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 2036
    .end local v1           #args:[Ljava/lang/Object;
    :cond_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2042
    .restart local v1       #args:[Ljava/lang/Object;
    :cond_2
    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    .end local v3           #v:Ljava/lang/Object;
    move-object v4, v3

    .line 2044
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #f:Lorg/mozilla/javascript/Callable;
    :goto_1
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static toNumber(Ljava/lang/Object;)D
    .locals 3
    .parameter "val"

    .prologue
    const-wide/16 v1, 0x0

    .line 390
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 391
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 407
    :goto_0
    return-wide v0

    .line 392
    .restart local p0
    :cond_1
    if-nez p0, :cond_2

    move-wide v0, v1

    .line 393
    goto :goto_0

    .line 394
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v0, :cond_3

    .line 395
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto :goto_0

    .line 396
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 397
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 398
    .restart local p0
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 399
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/high16 v0, 0x3ff0

    goto :goto_0

    :cond_5
    move-wide v0, v1

    goto :goto_0

    .line 400
    .restart local p0
    :cond_6
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_7

    .line 401
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 402
    .restart local p0
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "msg.primitive.expected"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 406
    :cond_7
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    .line 407
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto :goto_0
.end method

.method public static toNumber(Ljava/lang/String;)D
    .locals 5
    .parameter "s"

    .prologue
    .line 587
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 588
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, start:I
    move v2, v0

    .line 591
    .end local v0           #start:I
    .local v2, start:I
    :goto_0
    if-ne v2, v1, :cond_0

    .line 593
    const-wide/16 v0, 0x0

    move p0, v2

    .line 653
    .end local v1           #len:I
    .end local v2           #start:I
    .local p0, start:I
    :goto_1
    return-wide v0

    .line 595
    .restart local v1       #len:I
    .restart local v2       #start:I
    .local p0, s:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 596
    .local v3, startChar:C
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 601
    const/16 v0, 0x30

    if-ne v3, v0, :cond_3

    .line 602
    add-int/lit8 v0, v2, 0x2

    if-ge v0, v1, :cond_7

    .line 603
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 604
    .local v0, c1:I
    const/16 v4, 0x78

    if-eq v0, v4, :cond_1

    const/16 v4, 0x58

    if-ne v0, v4, :cond_7

    .line 606
    :cond_1
    add-int/lit8 v0, v2, 0x2

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;II)D

    .end local v0           #c1:I
    .end local v1           #len:I
    move-result-wide v0

    move p0, v2

    .end local v2           #start:I
    .local p0, start:I
    goto :goto_1

    .line 598
    .restart local v1       #len:I
    .restart local v2       #start:I
    .local p0, s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .end local v2           #start:I
    .local v0, start:I
    move v2, v0

    .end local v0           #start:I
    .restart local v2       #start:I
    goto :goto_0

    .line 609
    :cond_3
    const/16 v0, 0x2b

    if-eq v3, v0, :cond_4

    const/16 v0, 0x2d

    if-ne v3, v0, :cond_7

    .line 610
    :cond_4
    add-int/lit8 v0, v2, 0x3

    if-ge v0, v1, :cond_7

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-ne v0, v4, :cond_7

    .line 611
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 612
    .local v0, c2:I
    const/16 v4, 0x78

    if-eq v0, v4, :cond_5

    const/16 v4, 0x58

    if-ne v0, v4, :cond_7

    .line 614
    :cond_5
    add-int/lit8 v0, v2, 0x3

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;II)D

    .end local v0           #c2:I
    .end local v1           #len:I
    move-result-wide v0

    .line 615
    .local v0, val:D
    const/16 p0, 0x2d

    if-ne v3, p0, :cond_6

    .end local p0           #s:Ljava/lang/String;
    neg-double v0, v0

    .end local v0           #val:D
    :cond_6
    move p0, v2

    .end local v2           #start:I
    .local p0, start:I
    goto :goto_1

    .line 620
    .restart local v1       #len:I
    .restart local v2       #start:I
    .local p0, s:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    sub-int v0, v1, v0

    .line 622
    .end local v1           #len:I
    .local v0, end:I
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, endChar:C
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 623
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 624
    :cond_8
    const/16 v4, 0x79

    if-ne v1, v4, :cond_c

    .line 626
    const/16 v1, 0x2b

    if-eq v3, v1, :cond_9

    .end local v1           #endChar:C
    const/16 v1, 0x2d

    if-ne v3, v1, :cond_11

    .line 627
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .line 628
    .end local v2           #start:I
    .local v1, start:I
    :goto_3
    add-int/lit8 v2, v1, 0x7

    if-ne v2, v0, :cond_b

    const-string v0, "Infinity"

    .end local v0           #end:I
    const/4 v2, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0, v1, v0, v2, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    .end local p0           #s:Ljava/lang/String;
    if-eqz p0, :cond_b

    .line 629
    const/16 p0, 0x2d

    if-ne v3, p0, :cond_a

    const-wide/high16 v2, -0x10

    :goto_4
    move p0, v1

    .end local v1           #start:I
    .local p0, start:I
    move-wide v0, v2

    goto/16 :goto_1

    .end local p0           #start:I
    .restart local v1       #start:I
    :cond_a
    const-wide/high16 v2, 0x7ff0

    goto :goto_4

    .line 632
    :cond_b
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    move p0, v1

    .end local v1           #start:I
    .restart local p0       #start:I
    move-wide v0, v2

    goto/16 :goto_1

    .line 636
    .restart local v0       #end:I
    .local v1, endChar:C
    .restart local v2       #start:I
    .local p0, s:Ljava/lang/String;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #end:I
    move-result-object v1

    .line 641
    .local v1, sub:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #s:Ljava/lang/String;
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .local p0, i:I
    move v0, p0

    .end local v3           #startChar:C
    .end local p0           #i:I
    .local v0, i:I
    :goto_5
    if-ltz v0, :cond_10

    .line 642
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 643
    .local p0, c:C
    const/16 v3, 0x30

    if-gt v3, p0, :cond_d

    const/16 v3, 0x39

    if-le p0, v3, :cond_e

    :cond_d
    const/16 v3, 0x2e

    if-eq p0, v3, :cond_e

    const/16 v3, 0x65

    if-eq p0, v3, :cond_e

    const/16 v3, 0x45

    if-eq p0, v3, :cond_e

    const/16 v3, 0x2b

    if-eq p0, v3, :cond_e

    const/16 v3, 0x2d

    if-ne p0, v3, :cond_f

    .line 641
    :cond_e
    add-int/lit8 p0, v0, -0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto :goto_5

    .line 647
    .local p0, c:C
    :cond_f
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    .end local v0           #i:I
    move p0, v2

    .end local v2           #start:I
    .local p0, start:I
    goto/16 :goto_1

    .line 651
    .end local p0           #start:I
    .restart local v0       #i:I
    .restart local v2       #start:I
    :cond_10
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .end local v0           #i:I
    move p0, v2

    .end local v2           #start:I
    .restart local p0       #start:I
    goto/16 :goto_1

    .line 652
    .end local p0           #start:I
    .restart local v0       #i:I
    .restart local v2       #start:I
    :catch_0
    move-exception p0

    .line 653
    .local p0, ex:Ljava/lang/NumberFormatException;
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    .end local v0           #i:I
    move p0, v2

    .end local v2           #start:I
    .local p0, start:I
    goto/16 :goto_1

    .end local v1           #sub:Ljava/lang/String;
    .local v0, end:I
    .restart local v2       #start:I
    .restart local v3       #startChar:C
    .local p0, s:Ljava/lang/String;
    :cond_11
    move v1, v2

    .end local v2           #start:I
    .local v1, start:I
    goto :goto_3
.end method

.method public static toNumber([Ljava/lang/Object;I)D
    .locals 2
    .parameter "args"
    .parameter "index"

    .prologue
    .line 412
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto :goto_0
.end method

.method public static toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 5
    .parameter "cx"
    .parameter "scope"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    .line 1008
    instance-of v3, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_0

    .line 1009
    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    .end local p2
    move-object v3, p2

    .line 1030
    :goto_0
    return-object v3

    .line 1011
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 1012
    const-string v3, "msg.null.to.object"

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3

    .line 1014
    :cond_1
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, v3, :cond_2

    .line 1015
    const-string v3, "msg.undef.to.object"

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3

    .line 1017
    :cond_2
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, "String"

    move-object v1, v3

    .line 1021
    .local v1, className:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_6

    .line 1022
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    .line 1023
    .local v0, args:[Ljava/lang/Object;
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1024
    invoke-static {p0, p1, v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_0

    .line 1017
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #className:Ljava/lang/String;
    :cond_3
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_4

    const-string v3, "Number"

    move-object v1, v3

    goto :goto_1

    :cond_4
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    const-string v3, "Boolean"

    move-object v1, v3

    goto :goto_1

    :cond_5
    move-object v1, v4

    goto :goto_1

    .line 1028
    .restart local v1       #className:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2, v4}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 1029
    .local v2, wrapped:Ljava/lang/Object;
    instance-of v3, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_7

    .line 1030
    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    .end local v2           #wrapped:Ljava/lang/Object;
    move-object v3, v2

    goto :goto_0

    .line 1031
    .restart local v2       #wrapped:Ljava/lang/Object;
    :cond_7
    const-string v3, "msg.invalid.type"

    invoke-static {v3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "val"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/mozilla/javascript/Scriptable;"
        }
    .end annotation

    .prologue
    .line 1040
    .local p3, staticClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public static toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "scope"
    .parameter "val"

    .prologue
    .line 956
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 957
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    move-object v0, p1

    .line 959
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0
.end method

.method public static toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "scope"
    .parameter "val"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/mozilla/javascript/Scriptable;"
        }
    .end annotation

    .prologue
    .line 995
    .local p2, staticClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 996
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    move-object v0, p1

    .line 998
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0
.end method

.method public static toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "obj"

    .prologue
    .line 967
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 968
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    move-object v0, p1

    .line 972
    :goto_0
    return-object v0

    .line 969
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    .line 970
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    .line 972
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "obj"
    .parameter "scope"

    .prologue
    .line 981
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 982
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    move-object v0, p1

    .line 986
    :goto_0
    return-object v0

    .line 983
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    .line 984
    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    .line 986
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "val"

    .prologue
    .line 2819
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "val"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 2824
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    instance-of v3, p0, Lorg/mozilla/javascript/Scriptable;

    if-nez v3, :cond_0

    move-object v3, p0

    .line 2831
    :goto_0
    return-object v3

    .line 2827
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v2, v0

    .line 2828
    .local v2, s:Lorg/mozilla/javascript/Scriptable;
    invoke-interface {v2, p1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 2829
    .local v1, result:Ljava/lang/Object;
    instance-of v3, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_1

    .line 2830
    const-string v3, "msg.bad.default.value"

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3

    :cond_1
    move-object v3, v1

    .line 2831
    goto :goto_0
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 1
    .parameter "val"

    .prologue
    .line 814
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "val"

    .prologue
    .line 775
    :cond_0
    if-nez p0, :cond_1

    .line 776
    const-string v0, "null"

    .line 796
    .end local p0
    :goto_0
    return-object v0

    .line 778
    .restart local p0
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v0, :cond_2

    .line 779
    const-string v0, "undefined"

    goto :goto_0

    .line 781
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 782
    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 784
    .restart local p0
    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 787
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 789
    .restart local p0
    :cond_4
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_5

    .line 790
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 791
    .restart local p0
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 792
    const-string v0, "msg.primitive.expected"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 796
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .parameter "args"
    .parameter "index"

    .prologue
    .line 807
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "undefined"

    goto :goto_0
.end method

.method static toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .parameter "cx"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 1397
    instance-of v7, p1, Ljava/lang/Number;

    if-eqz v7, :cond_1

    .line 1398
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 1399
    .local v1, d:D
    double-to-int v3, v1

    .line 1400
    .local v3, index:I
    int-to-double v7, v3

    cmpl-double v7, v7, v1

    if-nez v7, :cond_0

    .line 1401
    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->storeIndexResult(Lorg/mozilla/javascript/Context;I)V

    move-object v7, v9

    .line 1417
    .end local v1           #d:D
    .end local v3           #index:I
    :goto_0
    return-object v7

    .line 1404
    .restart local v1       #d:D
    .restart local v3       #index:I
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1407
    .end local v1           #d:D
    .end local v3           #index:I
    :cond_1
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1408
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1412
    .local v6, s:Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->indexFromString(Ljava/lang/String;)J

    move-result-wide v4

    .line 1413
    .local v4, indexTest:J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-ltz v7, :cond_3

    .line 1414
    long-to-int v7, v4

    invoke-static {p0, v7}, Lorg/mozilla/javascript/ScriptRuntime;->storeIndexResult(Lorg/mozilla/javascript/Context;I)V

    move-object v7, v9

    .line 1415
    goto :goto_0

    .line 1410
    .end local v4           #indexTest:J
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #s:Ljava/lang/String;
    goto :goto_1

    .restart local v4       #indexTest:J
    :cond_3
    move-object v7, v6

    .line 1417
    goto :goto_0
.end method

.method public static toUint16(Ljava/lang/Object;)C
    .locals 6
    .parameter "val"

    .prologue
    .line 1177
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 1179
    .local v0, d:D
    double-to-int v2, v0

    .line 1180
    .local v2, i:I
    int-to-double v4, v2

    cmpl-double v4, v4, v0

    if-nez v4, :cond_0

    .line 1181
    int-to-char v4, v2

    .line 1196
    :goto_0
    return v4

    .line 1184
    :cond_0
    cmpl-double v4, v0, v0

    if-nez v4, :cond_1

    const-wide/high16 v4, 0x7ff0

    cmpl-double v4, v0, v4

    if-eqz v4, :cond_1

    const-wide/high16 v4, -0x10

    cmpl-double v4, v0, v4

    if-nez v4, :cond_2

    .line 1188
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1191
    :cond_2
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    move-wide v0, v4

    .line 1193
    :goto_1
    const/high16 v3, 0x1

    .line 1194
    .local v3, int16:I
    int-to-double v4, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1196
    int-to-char v4, v2

    goto :goto_0

    .line 1191
    .end local v3           #int16:I
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_1
.end method

.method public static toUint32(D)J
    .locals 8
    .parameter "d"

    .prologue
    const-wide v6, 0xffffffffL

    .line 1146
    double-to-long v0, p0

    .line 1147
    .local v0, l:J
    long-to-double v4, v0

    cmpl-double v4, v4, p0

    if-nez v4, :cond_0

    .line 1149
    and-long v4, v0, v6

    .line 1165
    :goto_0
    return-wide v4

    .line 1152
    :cond_0
    cmpl-double v4, p0, p0

    if-nez v4, :cond_1

    const-wide/high16 v4, 0x7ff0

    cmpl-double v4, p0, v4

    if-eqz v4, :cond_1

    const-wide/high16 v4, -0x10

    cmpl-double v4, p0, v4

    if-nez v4, :cond_2

    .line 1156
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 1159
    :cond_2
    const-wide/16 v4, 0x0

    cmpl-double v4, p0, v4

    if-ltz v4, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    move-wide p0, v4

    .line 1162
    :goto_1
    const-wide/high16 v2, 0x41f0

    .line 1163
    .local v2, two32:D
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v4

    double-to-long v0, v4

    .line 1165
    and-long v4, v0, v6

    goto :goto_0

    .line 1159
    .end local v2           #two32:D
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    move-wide p0, v4

    goto :goto_1
.end method

.method public static toUint32(Ljava/lang/Object;)J
    .locals 2
    .parameter "val"

    .prologue
    .line 1169
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static topScopeName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "name"

    .prologue
    .line 1853
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->useDynamicScope:Z

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->topCallScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->checkDynamicScope(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1856
    :cond_0
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 1
    .parameter "message"

    .prologue
    .line 3767
    const-string v0, "TypeError"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    return-object v0
.end method

.method public static typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 3772
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3773
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    return-object v1
.end method

.method public static typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"

    .prologue
    .line 3778
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3779
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    return-object v1
.end method

.method public static typeError2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 3785
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3786
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    return-object v1
.end method

.method public static typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 3792
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3793
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    return-object v1
.end method

.method public static typeErrorThrower()Lorg/mozilla/javascript/BaseFunction;
    .locals 2

    .prologue
    .line 82
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->THROW_TYPE_ERROR:Lorg/mozilla/javascript/BaseFunction;

    if-nez v1, :cond_0

    .line 83
    new-instance v0, Lorg/mozilla/javascript/ScriptRuntime$1;

    invoke-direct {v0}, Lorg/mozilla/javascript/ScriptRuntime$1;-><init>()V

    .line 93
    .local v0, thrower:Lorg/mozilla/javascript/BaseFunction;
    invoke-virtual {v0}, Lorg/mozilla/javascript/BaseFunction;->preventExtensions()V

    .line 94
    sput-object v0, Lorg/mozilla/javascript/ScriptRuntime;->THROW_TYPE_ERROR:Lorg/mozilla/javascript/BaseFunction;

    .line 96
    .end local v0           #thrower:Lorg/mozilla/javascript/BaseFunction;
    :cond_0
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->THROW_TYPE_ERROR:Lorg/mozilla/javascript/BaseFunction;

    return-object v1
.end method

.method public static typeof(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "object"

    .line 2590
    if-nez p0, :cond_0

    .line 2591
    const-string v0, "object"

    move-object v0, v1

    .line 2603
    .end local p0
    :goto_0
    return-object v0

    .line 2592
    .restart local p0
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 2593
    const-string v0, "undefined"

    goto :goto_0

    .line 2594
    :cond_1
    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_2

    .line 2595
    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    .end local p0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTypeOf()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2596
    .restart local p0
    :cond_2
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_4

    .line 2597
    instance-of v0, p0, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_3

    const-string v0, "function"

    goto :goto_0

    :cond_3
    const-string v0, "object"

    move-object v0, v1

    goto :goto_0

    .line 2598
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2599
    const-string v0, "string"

    goto :goto_0

    .line 2600
    :cond_5
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 2601
    const-string v0, "number"

    goto :goto_0

    .line 2602
    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 2603
    const-string v0, "boolean"

    goto :goto_0

    .line 2604
    :cond_7
    const-string v0, "msg.invalid.type"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->errorWithClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "scope"
    .parameter "id"

    .prologue
    .line 2612
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 2613
    .local v0, cx:Lorg/mozilla/javascript/Context;
    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 2614
    .local v1, val:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_0

    .line 2615
    const-string v2, "undefined"

    .line 2616
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static undefCallError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .parameter "object"
    .parameter "id"

    .prologue
    .line 3804
    if-nez p1, :cond_0

    const-string v1, "null"

    move-object v0, v1

    .line 3805
    .local v0, idStr:Ljava/lang/String;
    :goto_0
    const-string v1, "msg.undef.method.call"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    return-object v1

    .line 3804
    .end local v0           #idStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .parameter "object"
    .parameter "id"

    .prologue
    .line 3798
    if-nez p1, :cond_0

    const-string v1, "null"

    move-object v0, v1

    .line 3799
    .local v0, idStr:Ljava/lang/String;
    :goto_0
    const-string v1, "msg.undef.prop.read"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    return-object v1

    .line 3798
    .end local v0           #idStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static undefWriteError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 4
    .parameter "object"
    .parameter "id"
    .parameter "value"

    .prologue
    .line 3812
    if-nez p1, :cond_0

    const-string v2, "null"

    move-object v0, v2

    .line 3813
    .local v0, idStr:Ljava/lang/String;
    :goto_0
    instance-of v2, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3815
    .local v1, valueStr:Ljava/lang/String;
    :goto_1
    const-string v2, "msg.undef.prop.write"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v2

    return-object v2

    .line 3812
    .end local v0           #idStr:Ljava/lang/String;
    .end local v1           #valueStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 3813
    .restart local v0       #idStr:Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method

.method static uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;
    .locals 13
    .parameter "cx"
    .parameter "scope"
    .parameter "value"

    .prologue
    const/16 v9, 0x22

    const-wide/16 v10, 0x0

    const-string v12, "toSource"

    .line 844
    if-nez p2, :cond_0

    .line 845
    const-string v8, "null"

    .line 882
    .end local p2
    :goto_0
    return-object v8

    .line 847
    .restart local p2
    :cond_0
    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, v8, :cond_1

    .line 848
    const-string v8, "undefined"

    goto :goto_0

    .line 850
    :cond_1
    instance-of v8, p2, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 851
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 852
    .local v3, escaped:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 853
    .local v6, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 854
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 856
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 858
    .end local v3           #escaped:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .restart local p2
    :cond_2
    instance-of v8, p2, Ljava/lang/Number;

    if-eqz v8, :cond_4

    .line 859
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 860
    .local v1, d:D
    cmpl-double v8, v1, v10

    if-nez v8, :cond_3

    const-wide/high16 v8, 0x3ff0

    div-double/2addr v8, v1

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 861
    const-string v8, "-0"

    goto :goto_0

    .line 863
    :cond_3
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 865
    .end local v1           #d:D
    .restart local p2
    :cond_4
    instance-of v8, p2, Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    .line 866
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 868
    :cond_5
    instance-of v8, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v8, :cond_7

    .line 869
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    .line 872
    .local v5, obj:Lorg/mozilla/javascript/Scriptable;
    const-string v8, "toSource"

    invoke-static {v5, v12}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 873
    const-string v8, "toSource"

    invoke-static {v5, v12}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 874
    .local v7, v:Ljava/lang/Object;
    instance-of v8, v7, Lorg/mozilla/javascript/Function;

    if-eqz v8, :cond_6

    .line 875
    move-object v0, v7

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v4, v0

    .line 876
    .local v4, f:Lorg/mozilla/javascript/Function;
    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v4, p0, p1, v5, v8}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 879
    .end local v4           #f:Lorg/mozilla/javascript/Function;
    .end local v7           #v:Ljava/lang/Object;
    :cond_6
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 881
    .end local v5           #obj:Lorg/mozilla/javascript/Scriptable;
    :cond_7
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->warnAboutNonJSObject(Ljava/lang/Object;)V

    .line 882
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public static updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3
    .parameter "value"
    .parameter "scope"

    .prologue
    .line 3441
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeWith;

    move-object v1, v0

    .line 3442
    .local v1, nw:Lorg/mozilla/javascript/NativeWith;
    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/NativeWith;->updateDotQuery(Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static warnAboutNonJSObject(Ljava/lang/Object;)V
    .locals 3
    .parameter "nonJSObject"

    .prologue
    .line 3864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RHINO USAGE WARNING: Missed Context.javaToJS() conversion:\nRhino runtime detected object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where it expected String, Number, Boolean or Scriptable instance. Please check your code for missing Context.javaToJS() call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3867
    .local v0, message:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 3869
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3870
    return-void
.end method

.method public static wrapBoolean(Z)Ljava/lang/Boolean;
    .locals 1
    .parameter "b"

    .prologue
    .line 327
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static wrapInt(I)Ljava/lang/Integer;
    .locals 1
    .parameter "i"

    .prologue
    .line 332
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static wrapNumber(D)Ljava/lang/Number;
    .locals 1
    .parameter "x"

    .prologue
    .line 337
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0
.end method
