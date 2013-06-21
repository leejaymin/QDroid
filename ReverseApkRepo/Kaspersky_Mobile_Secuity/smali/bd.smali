.class public final Lbd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LfK;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 7
    move v0, v1

    :goto_0
    iget-object v2, p0, LfK;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 8
    iget-object v2, p0, LfK;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 9
    if-nez v0, :cond_0

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    const/4 v1, 0x1

    .line 14
    :cond_1
    return v1

    .line 7
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
