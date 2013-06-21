.class public Lcom/superdroid/sqd/util/CharacterSets;
.super Ljava/lang/Object;
.source "CharacterSets.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ANY_CHARSET:I = 0x0

.field public static final BIG5:I = 0x7ea

.field public static final DEFAULT_CHARSET:I = 0x6a

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "utf-8"

.field public static final ISO_8859_1:I = 0x4

.field public static final ISO_8859_2:I = 0x5

.field public static final ISO_8859_3:I = 0x6

.field public static final ISO_8859_4:I = 0x7

.field public static final ISO_8859_5:I = 0x8

.field public static final ISO_8859_6:I = 0x9

.field public static final ISO_8859_7:I = 0xa

.field public static final ISO_8859_8:I = 0xb

.field public static final ISO_8859_9:I = 0xc

.field private static final MIBENUM_NUMBERS:[I = null

.field private static final MIBENUM_TO_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIMENAME_ANY_CHARSET:Ljava/lang/String; = "*"

.field public static final MIMENAME_BIG5:Ljava/lang/String; = "big5"

.field public static final MIMENAME_ISO_8859_1:Ljava/lang/String; = "iso-8859-1"

.field public static final MIMENAME_ISO_8859_2:Ljava/lang/String; = "iso-8859-2"

.field public static final MIMENAME_ISO_8859_3:Ljava/lang/String; = "iso-8859-3"

.field public static final MIMENAME_ISO_8859_4:Ljava/lang/String; = "iso-8859-4"

.field public static final MIMENAME_ISO_8859_5:Ljava/lang/String; = "iso-8859-5"

.field public static final MIMENAME_ISO_8859_6:Ljava/lang/String; = "iso-8859-6"

.field public static final MIMENAME_ISO_8859_7:Ljava/lang/String; = "iso-8859-7"

.field public static final MIMENAME_ISO_8859_8:Ljava/lang/String; = "iso-8859-8"

.field public static final MIMENAME_ISO_8859_9:Ljava/lang/String; = "iso-8859-9"

.field public static final MIMENAME_SHIFT_JIS:Ljava/lang/String; = "shift_JIS"

.field public static final MIMENAME_UCS2:Ljava/lang/String; = "iso-10646-ucs-2"

.field public static final MIMENAME_US_ASCII:Ljava/lang/String; = "us-ascii"

.field public static final MIMENAME_UTF_16:Ljava/lang/String; = "utf-16"

.field public static final MIMENAME_UTF_8:Ljava/lang/String; = "utf-8"

.field private static final MIME_NAMES:[Ljava/lang/String; = null

.field private static final NAME_TO_MIBENUM_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHIFT_JIS:I = 0x11

.field public static final UCS2:I = 0x3e8

.field public static final US_ASCII:I = 0x3

.field public static final UTF_16:I = 0x3f7

.field public static final UTF_8:I = 0x6a


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 6
    const-class v2, Lcom/superdroid/sqd/util/CharacterSets;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    :goto_0
    sput-boolean v2, Lcom/superdroid/sqd/util/CharacterSets;->$assertionsDisabled:Z

    .line 39
    const/16 v2, 0x10

    new-array v2, v2, [I

    .line 41
    aput v6, v2, v5

    const/4 v3, 0x2

    .line 42
    aput v7, v2, v3

    .line 43
    aput v8, v2, v6

    .line 44
    aput v9, v2, v7

    .line 45
    const/4 v3, 0x7

    aput v3, v2, v8

    .line 46
    const/16 v3, 0x8

    aput v3, v2, v9

    const/4 v3, 0x7

    .line 47
    const/16 v4, 0x9

    aput v4, v2, v3

    const/16 v3, 0x8

    .line 48
    const/16 v4, 0xa

    aput v4, v2, v3

    const/16 v3, 0x9

    .line 49
    const/16 v4, 0xb

    aput v4, v2, v3

    const/16 v3, 0xa

    .line 50
    const/16 v4, 0xc

    aput v4, v2, v3

    const/16 v3, 0xb

    .line 51
    const/16 v4, 0x11

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 52
    const/16 v4, 0x6a

    aput v4, v2, v3

    const/16 v3, 0xd

    .line 53
    const/16 v4, 0x7ea

    aput v4, v2, v3

    const/16 v3, 0xe

    .line 54
    const/16 v4, 0x3e8

    aput v4, v2, v3

    const/16 v3, 0xf

    .line 55
    const/16 v4, 0x3f7

    aput v4, v2, v3

    .line 39
    sput-object v2, Lcom/superdroid/sqd/util/CharacterSets;->MIBENUM_NUMBERS:[I

    .line 83
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 84
    const-string v4, "*"

    aput-object v4, v2, v3

    .line 85
    const-string v3, "us-ascii"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 86
    const-string v4, "iso-8859-1"

    aput-object v4, v2, v3

    .line 87
    const-string v3, "iso-8859-2"

    aput-object v3, v2, v6

    .line 88
    const-string v3, "iso-8859-3"

    aput-object v3, v2, v7

    .line 89
    const-string v3, "iso-8859-4"

    aput-object v3, v2, v8

    .line 90
    const-string v3, "iso-8859-5"

    aput-object v3, v2, v9

    const/4 v3, 0x7

    .line 91
    const-string v4, "iso-8859-6"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 92
    const-string v4, "iso-8859-7"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 93
    const-string v4, "iso-8859-8"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 94
    const-string v4, "iso-8859-9"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 95
    const-string v4, "shift_JIS"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 96
    const-string v4, "utf-8"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 97
    const-string v4, "big5"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 98
    const-string v4, "iso-10646-ucs-2"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    .line 99
    const-string v4, "utf-16"

    aput-object v4, v2, v3

    .line 83
    sput-object v2, Lcom/superdroid/sqd/util/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/superdroid/sqd/util/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/superdroid/sqd/util/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    .line 109
    sget-boolean v2, Lcom/superdroid/sqd/util/CharacterSets;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/superdroid/sqd/util/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v2, v2

    sget-object v3, Lcom/superdroid/sqd/util/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 6
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 110
    :cond_1
    sget-object v2, Lcom/superdroid/sqd/util/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v2, v2

    sub-int v0, v2, v5

    .line 111
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-le v1, v0, :cond_2

    return-void

    .line 112
    :cond_2
    sget-object v2, Lcom/superdroid/sqd/util/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/superdroid/sqd/util/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/superdroid/sqd/util/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v2, Lcom/superdroid/sqd/util/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/superdroid/sqd/util/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/superdroid/sqd/util/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMibEnumValue(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 v1, -0x1

    .line 153
    :goto_0
    return v1

    .line 149
    :cond_0
    sget-object v1, Lcom/superdroid/sqd/util/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 150
    .local v0, mibEnumValue:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 151
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    .line 153
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getMimeName(I)Ljava/lang/String;
    .locals 3
    .parameter "mibEnumValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v1, Lcom/superdroid/sqd/util/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 131
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    .line 133
    :cond_0
    return-object v0
.end method
