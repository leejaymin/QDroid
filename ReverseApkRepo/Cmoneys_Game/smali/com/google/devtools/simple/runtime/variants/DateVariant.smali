.class public final Lcom/google/devtools/simple/runtime/variants/DateVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "DateVariant.java"


# instance fields
.field private value:Ljava/util/Calendar;


# direct methods
.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 32
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/variants/DateVariant;->value:Ljava/util/Calendar;

    .line 33
    return-void
.end method

.method public static final getDateVariant(Ljava/util/Calendar;)Lcom/google/devtools/simple/runtime/variants/DateVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/DateVariant;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/variants/DateVariant;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method


# virtual methods
.method public cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 49
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/DateVariant;->value:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    goto :goto_0
.end method

.method public getDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/DateVariant;->value:Ljava/util/Calendar;

    return-object v0
.end method

.method public identical(Lcom/google/devtools/simple/runtime/variants/Variant;)Z
    .locals 1
    .parameter "rightOp"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/variants/DateVariant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 57
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/DateVariant;->value:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
