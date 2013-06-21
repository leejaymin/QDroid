.class public Lcom/adfonic/android/ormma/ExpandProperties;
.super Ljava/lang/Object;
.source "ExpandProperties.java"


# static fields
.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final IS_MODAL:Ljava/lang/String; = "isModal"

.field private static final LOCK_ORIENTATION:Ljava/lang/String; = "lockOrientation"

.field private static final USE_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private height:I

.field private isModal:Z

.field private lockOrientation:Z

.field private useCustomClose:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter "json"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_1

    .line 36
    :cond_0
    return-void

    .line 28
    :cond_1
    const-string v7, "{"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "}"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, pairs:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 30
    .local v5, pair:Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, keyValue:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 32
    const/4 v7, 0x0

    aget-object v7, v3, v7

    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, key:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/adfonic/android/ormma/ExpandProperties;->setProperty([Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseBoolean([Ljava/lang/String;)Z
    .locals 3
    .parameter "keyValue"

    .prologue
    .line 87
    const/4 v0, 0x1

    aget-object v0, p1, v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parseInt([Ljava/lang/String;)I
    .locals 3
    .parameter "keyValue"

    .prologue
    .line 91
    const/4 v0, 0x1

    aget-object v0, p1, v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setProperty([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "keyValue"
    .parameter "key"

    .prologue
    .line 95
    const-string v0, "width"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/adfonic/android/ormma/ExpandProperties;->parseInt([Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/ExpandProperties;->setWidth(I)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "height"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-direct {p0, p1}, Lcom/adfonic/android/ormma/ExpandProperties;->parseInt([Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/ExpandProperties;->setHeight(I)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v0, "useCustomClose"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-direct {p0, p1}, Lcom/adfonic/android/ormma/ExpandProperties;->parseBoolean([Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/ExpandProperties;->setUseCustomClose(Z)V

    goto :goto_0

    .line 101
    :cond_3
    const-string v0, "isModal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    invoke-direct {p0, p1}, Lcom/adfonic/android/ormma/ExpandProperties;->parseBoolean([Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/ExpandProperties;->setModal(Z)V

    goto :goto_0

    .line 103
    :cond_4
    const-string v0, "lockOrientation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/adfonic/android/ormma/ExpandProperties;->parseBoolean([Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/ExpandProperties;->setLockOrientation(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/adfonic/android/ormma/ExpandProperties;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/adfonic/android/ormma/ExpandProperties;->width:I

    return v0
.end method

.method public isLockOrientation()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/adfonic/android/ormma/ExpandProperties;->lockOrientation:Z

    return v0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adfonic/android/ormma/ExpandProperties;->isModal:Z

    return v0
.end method

.method public isUseCustomClose()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/adfonic/android/ormma/ExpandProperties;->useCustomClose:Z

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 59
    iput p1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->height:I

    .line 60
    return-void
.end method

.method public setLockOrientation(Z)V
    .locals 0
    .parameter "lockOrientation"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->lockOrientation:Z

    .line 84
    return-void
.end method

.method public setModal(Z)V
    .locals 0
    .parameter "isModal"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->isModal:Z

    .line 76
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 0
    .parameter "useCustomClose"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->useCustomClose:Z

    .line 68
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 51
    iput p1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->width:I

    .line 52
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"width\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"height\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"useCustomClose\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->useCustomClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"isModal\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->isModal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"lockOrientation\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adfonic/android/ormma/ExpandProperties;->lockOrientation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
