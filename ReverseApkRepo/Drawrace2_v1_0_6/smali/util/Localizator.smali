.class public Lutil/Localizator;
.super Ljava/lang/Object;
.source "Localizator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Localizator"

.field private static charset:Ljava/nio/charset/Charset;

.field private static packageName:Ljava/lang/String;

.field private static resources:Landroid/content/res/Resources;

.field private static values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lutil/Localizator;->values:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    .line 35
    const-string v4, ""

    .line 36
    .local v4, res:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-char v1, v0, v2

    .line 37
    .local v1, ch:C
    const/16 v5, 0x41

    if-lt v1, v5, :cond_0

    const/16 v5, 0x5a

    if-le v1, v5, :cond_2

    :cond_0
    const/16 v5, 0x30

    if-lt v1, v5, :cond_1

    const/16 v5, 0x39

    if-le v1, v5, :cond_2

    .line 38
    :cond_1
    const/16 v1, 0x5f

    .line 40
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v1           #ch:C
    :cond_3
    return-object v4
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "idStr"

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, result:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 60
    sget-object v2, Lutil/Localizator;->values:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 61
    .restart local v1       #result:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 62
    sget-object v2, Lutil/Localizator;->resources:Landroid/content/res/Resources;

    invoke-static {p0}, Lutil/Localizator;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    sget-object v5, Lutil/Localizator;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, resId:I
    if-eqz v0, :cond_1

    .line 64
    sget-object v2, Lutil/Localizator;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    const-string v1, ""

    .line 67
    :cond_0
    sget-object v2, Lutil/Localizator;->values:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v0           #resId:I
    :cond_1
    return-object v1
.end method

.method public static getString([BI)[B
    .locals 4
    .parameter "key"
    .parameter "length"

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lutil/Localizator;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 78
    .local v0, keyString:Ljava/lang/String;
    invoke-static {v0}, Lutil/Localizator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lutil/Localizator;->toByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    .end local v0           #keyString:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, ue:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 81
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVersion()[B
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lutil/Localizator;->getVersionString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lutil/Localizator;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getVersionExtraInfo()[B
    .locals 3

    .prologue
    .line 114
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lutil/Localizator;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method static getVersionString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    :try_start_0
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, packageName:Ljava/lang/String;
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-object v2

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 105
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasString([BI)Z
    .locals 5
    .parameter "key"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 87
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lutil/Localizator;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 88
    .local v0, keyString:Ljava/lang/String;
    invoke-static {v0}, Lutil/Localizator;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 91
    .end local v0           #keyString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, ue:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lutil/Localizator;->resources:Landroid/content/res/Resources;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lutil/Localizator;->packageName:Ljava/lang/String;

    .line 31
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lutil/Localizator;->charset:Ljava/nio/charset/Charset;

    .line 32
    return-void
.end method

.method private static toByteArray(Ljava/lang/String;)[B
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 46
    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    sget-object v2, Lutil/Localizator;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :cond_0
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, ue:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
