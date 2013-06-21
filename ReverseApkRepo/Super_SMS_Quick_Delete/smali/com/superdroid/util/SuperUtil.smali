.class public Lcom/superdroid/util/SuperUtil;
.super Ljava/lang/Object;
.source "SuperUtil.java"


# static fields
.field public static IS_MODEL_TATTOO:I = 0x0

.field public static final IS_MODEL_TATTOO_UNDEFINED:I = 0x0

.field public static final IS_MODEL_TATTOO_YES:I = 0x1

.field public static final IS_MODEL_TATTO_NO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/superdroid/util/SuperUtil;->IS_MODEL_TATTOO:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 16
    if-ne p0, p1, :cond_0

    move v3, v6

    .line 32
    :goto_0
    return v3

    .line 19
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v3, v5

    .line 20
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v3, v5

    .line 23
    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 26
    .local v0, declaredFields1:[Ljava/lang/reflect/Field;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 27
    .local v1, declaredFields2:[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_4

    move v3, v6

    .line 32
    goto :goto_0

    .line 28
    :cond_4
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-static {v3, v4}, Lcom/superdroid/util/SuperUtil;->fieldEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v5

    .line 29
    goto :goto_0

    .line 27
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static fieldEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 36
    if-ne p0, p1, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    .line 39
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 46
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static isTattoo()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 56
    sget v2, Lcom/superdroid/util/SuperUtil;->IS_MODEL_TATTOO:I

    if-ne v2, v4, :cond_0

    move v2, v4

    .line 74
    :goto_0
    return v2

    .line 58
    :cond_0
    sget v2, Lcom/superdroid/util/SuperUtil;->IS_MODEL_TATTOO:I

    if-ne v2, v6, :cond_1

    move v2, v5

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 62
    .local v0, model:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, modelLowerCase:Ljava/lang/String;
    invoke-static {v1}, Lcom/superdroid/util/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    const-string v2, "tattoo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 66
    sput v4, Lcom/superdroid/util/SuperUtil;->IS_MODEL_TATTOO:I

    move v2, v4

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    sput v6, Lcom/superdroid/util/SuperUtil;->IS_MODEL_TATTOO:I

    move v2, v5

    .line 70
    goto :goto_0

    .line 73
    :cond_3
    sput v6, Lcom/superdroid/util/SuperUtil;->IS_MODEL_TATTOO:I

    move v2, v5

    .line 74
    goto :goto_0
.end method

.method public static processCellphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cellphone"

    .prologue
    const-string v2, ""

    .line 9
    if-nez p0, :cond_0

    .line 10
    const-string v0, ""

    move-object v0, v2

    .line 12
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[^\\d\\+]"

    const-string v1, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
