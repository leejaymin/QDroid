.class public abstract Lcom/google/devtools/simple/runtime/variants/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# static fields
.field protected static final VARIANT_ARRAY:B = 0xat

.field protected static final VARIANT_BOOLEAN:B = 0x1t

.field protected static final VARIANT_BYTE:B = 0x2t

.field protected static final VARIANT_DATE:B = 0xbt

.field protected static final VARIANT_DOUBLE:B = 0x7t

.field protected static final VARIANT_INTEGER:B = 0x4t

.field protected static final VARIANT_LONG:B = 0x5t

.field protected static final VARIANT_OBJECT:B = 0x9t

.field protected static final VARIANT_SHORT:B = 0x3t

.field protected static final VARIANT_SINGLE:B = 0x6t

.field protected static final VARIANT_STRING:B = 0x8t


# instance fields
.field private final kind:B


# direct methods
.method protected constructor <init>(B)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-byte p1, p0, Lcom/google/devtools/simple/runtime/variants/Variant;->kind:B

    .line 45
    return-void
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 162
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 315
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public array([Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "indices"

    .prologue
    .line 376
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public array([Lcom/google/devtools/simple/runtime/variants/Variant;Lcom/google/devtools/simple/runtime/variants/Variant;)V
    .locals 1
    .parameter "indices"
    .parameter "variant"

    .prologue
    .line 386
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 263
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public dataMember(Ljava/lang/String;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "name"

    .prologue
    .line 356
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public dataMember(Ljava/lang/String;Lcom/google/devtools/simple/runtime/variants/Variant;)V
    .locals 1
    .parameter "name"
    .parameter "variant"

    .prologue
    .line 366
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public div(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 192
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public function(Ljava/lang/String;[Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "name"
    .parameter "args"

    .prologue
    .line 346
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getBoolean()Z
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getByte()B
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getDouble()D
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getInteger()I
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method protected final getKind()B
    .locals 1

    .prologue
    .line 53
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/Variant;->kind:B

    return v0
.end method

.method public getLong()J
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getShort()S
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getSingle()F
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public identical(Lcom/google/devtools/simple/runtime/variants/Variant;)Z
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 273
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 202
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public like(Lcom/google/devtools/simple/runtime/variants/Variant;)Z
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 286
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 212
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 182
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public neg()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public not()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 325
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 222
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public shl(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 241
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public shr(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 251
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 172
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public typeof(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 335
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method
