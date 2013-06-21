.class public Lorg/tf/util/IniFile$Section;
.super Ljava/lang/Object;
.source "IniFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/util/IniFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/tf/util/IniFile$Section;->name:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/tf/util/IniFile$Section;->values:Ljava/util/HashMap;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/tf/util/IniFile$Section;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/tf/util/IniFile$Section;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lorg/tf/util/IniFile$Section;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lorg/tf/util/IniFile$Section;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/tf/util/IniFile$Section;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lorg/tf/util/IniFile$Section;->values:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getColorValue(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, p2

    .line 93
    :goto_0
    return v2

    .line 90
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v2, p2

    .line 93
    goto :goto_0
.end method

.method public getFloatValue(Ljava/lang/String;F)F
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, p2

    .line 81
    :goto_0
    return v2

    .line 78
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .line 81
    goto :goto_0
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, p2

    .line 69
    :goto_0
    return v2

    .line 66
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .line 69
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/tf/util/IniFile$Section;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/tf/util/IniFile$Section;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
