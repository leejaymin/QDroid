.class public final Lcom/google/devtools/simple/runtime/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static InStr(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "str1"
    .parameter "str2"
    .parameter "start"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 66
    const-string v0, "InStr"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/google/devtools/simple/runtime/Strings;->checkIndex(Ljava/lang/String;II)V

    .line 68
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static InStrRev(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "str1"
    .parameter "str2"
    .parameter "start"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 83
    const-string v0, "InStrRev"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/google/devtools/simple/runtime/Strings;->checkIndex(Ljava/lang/String;II)V

    .line 85
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static LCase(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, str:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->set(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static LTrim(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;)V
    .locals 5
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, str:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 179
    .local v0, chars:[C
    const/4 v1, 0x0

    .line 180
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-char v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    if-lez v1, :cond_1

    .line 184
    new-instance v3, Ljava/lang/String;

    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v3}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->set(Ljava/lang/Object;)V

    .line 186
    :cond_1
    return-void
.end method

.method public static Left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "len"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 118
    const-string v0, "Left"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/google/devtools/simple/runtime/Strings;->mid(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Len(Ljava/lang/String;)I
    .locals 1
    .parameter "str"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static Mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "start"
    .parameter "len"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 146
    const-string v0, "Mid"

    invoke-static {v0, p0, p1, p2}, Lcom/google/devtools/simple/runtime/Strings;->mid(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RTrim(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;)V
    .locals 6
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, str:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 196
    .local v0, chars:[C
    const/4 v1, 0x0

    .line 197
    .local v1, count:I
    array-length v3, v0

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    aget-char v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    if-lez v1, :cond_1

    .line 201
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v0

    sub-int/2addr v5, v1

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v3}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->set(Ljava/lang/Object;)V

    .line 203
    :cond_1
    return-void
.end method

.method public static Replace(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .parameter
    .parameter "find"
    .parameter "replace"
    .parameter "start"
    .parameter "count"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, str:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, s:Ljava/lang/String;
    const-string v3, "Replace"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, p3, v4}, Lcom/google/devtools/simple/runtime/Strings;->checkIndex(Ljava/lang/String;II)V

    .line 222
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 224
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 228
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, s1:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, s2:Ljava/lang/String;
    const/4 v3, -0x1

    if-ne p4, v3, :cond_3

    .line 234
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->set(Ljava/lang/Object;)V

    .line 242
    return-void

    .line 236
    :cond_3
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_2

    .line 237
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static Right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "len"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, p1

    .line 132
    .local v0, start:I
    const-string v1, "Right"

    if-gez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, p0, v2, p1}, Lcom/google/devtools/simple/runtime/Strings;->mid(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move v2, v0

    goto :goto_0
.end method

.method public static StrComp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "str1"
    .parameter "str2"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static StrReverse(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, str:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->set(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public static Trim(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, str:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Strings;->LTrim(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;)V

    .line 168
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Strings;->RTrim(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;)V

    .line 169
    return-void
.end method

.method public static UCase(Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, str:Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;,"Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/parameters/ObjectReferenceParameter;->set(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private static checkIndex(Ljava/lang/String;II)V
    .locals 3
    .parameter "function"
    .parameter "index"
    .parameter "max"

    .prologue
    .line 24
    if-ltz p1, :cond_0

    if-le p1, p2, :cond_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Should be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    return-void
.end method

.method private static checkLength(Ljava/lang/String;I)V
    .locals 3
    .parameter "function"
    .parameter "len"

    .prologue
    .line 34
    if-gez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() out of range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Should be greater than 0, but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    return-void
.end method

.method private static mid(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "function"
    .parameter "str"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p2, v1}, Lcom/google/devtools/simple/runtime/Strings;->checkIndex(Ljava/lang/String;II)V

    .line 45
    invoke-static {p0, p3}, Lcom/google/devtools/simple/runtime/Strings;->checkLength(Ljava/lang/String;I)V

    .line 47
    add-int v0, p2, p3

    .line 48
    .local v0, end:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 52
    :cond_0
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
