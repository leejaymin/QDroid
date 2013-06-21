.class public Lcom/superdroid/util/StringDecoder$CharacterSet;
.super Ljava/lang/Object;
.source "StringDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superdroid/util/StringDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharacterSet"
.end annotation


# static fields
.field public static final ANY_CHARSET:I = 0x0

.field public static final BIG5:I = 0x7ea

.field private static final CS_IDS:[I = null

.field private static final CS_NAMES:[Ljava/lang/String; = null

.field public static final ISO_8859_1:I = 0x4

.field public static final ISO_8859_2:I = 0x5

.field public static final ISO_8859_3:I = 0x6

.field public static final ISO_8859_4:I = 0x7

.field public static final ISO_8859_5:I = 0x8

.field public static final ISO_8859_6:I = 0x9

.field public static final ISO_8859_7:I = 0xa

.field public static final ISO_8859_8:I = 0xb

.field public static final ISO_8859_9:I = 0xc

.field public static final NAME_ANY_CHARSET:Ljava/lang/String; = "*"

.field public static final NAME_BIG5:Ljava/lang/String; = "big5"

.field public static final NAME_ISO_8859_1:Ljava/lang/String; = "iso-8859-1"

.field public static final NAME_ISO_8859_2:Ljava/lang/String; = "iso-8859-2"

.field public static final NAME_ISO_8859_3:Ljava/lang/String; = "iso-8859-3"

.field public static final NAME_ISO_8859_4:Ljava/lang/String; = "iso-8859-4"

.field public static final NAME_ISO_8859_5:Ljava/lang/String; = "iso-8859-5"

.field public static final NAME_ISO_8859_6:Ljava/lang/String; = "iso-8859-6"

.field public static final NAME_ISO_8859_7:Ljava/lang/String; = "iso-8859-7"

.field public static final NAME_ISO_8859_8:Ljava/lang/String; = "iso-8859-8"

.field public static final NAME_ISO_8859_9:Ljava/lang/String; = "iso-8859-9"

.field public static final NAME_SHIFT_JIS:Ljava/lang/String; = "shift_JIS"

.field public static final NAME_UCS2:Ljava/lang/String; = "iso-10646-ucs-2"

.field public static final NAME_US_ASCII:Ljava/lang/String; = "us-ascii"

.field public static final NAME_UTF_16:Ljava/lang/String; = "utf-16"

.field public static final NAME_UTF_8:Ljava/lang/String; = "utf-8"

.field public static final SHIFT_JIS:I = 0x11

.field public static final UCS2:I = 0x3e8

.field public static final US_ASCII:I = 0x3

.field public static final UTF_16:I = 0x3f7

.field public static final UTF_8:I = 0x6a

.field private static _IdNameMap:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    .line 48
    aput v4, v0, v1

    aput v5, v0, v3

    aput v6, v0, v4

    aput v7, v0, v5

    const/16 v1, 0x8

    aput v1, v0, v6

    .line 49
    const/16 v1, 0x9

    aput v1, v0, v7

    const/16 v1, 0x8

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 50
    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x7ea

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3e8

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x3f7

    aput v2, v0, v1

    .line 47
    sput-object v0, Lcom/superdroid/util/StringDecoder$CharacterSet;->CS_IDS:[I

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 70
    const-string v2, "us-ascii"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso-8859-1"

    aput-object v2, v0, v1

    const-string v1, "iso-8859-2"

    aput-object v1, v0, v3

    .line 71
    const-string v1, "iso-8859-3"

    aput-object v1, v0, v4

    const-string v1, "iso-8859-4"

    aput-object v1, v0, v5

    const-string v1, "iso-8859-5"

    aput-object v1, v0, v6

    .line 72
    const-string v1, "iso-8859-6"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "iso-8859-7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "iso-8859-8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 73
    const-string v2, "iso-8859-9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "shift_JIS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "big5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 74
    const-string v2, "iso-10646-ucs-2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "utf-16"

    aput-object v2, v0, v1

    .line 69
    sput-object v0, Lcom/superdroid/util/StringDecoder$CharacterSet;->CS_NAMES:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharsetName(I)Ljava/lang/String;
    .locals 2
    .parameter "charsetID"

    .prologue
    .line 79
    invoke-static {}, Lcom/superdroid/util/StringDecoder$CharacterSet;->getIdNameMap()Ljava/util/HashMap;

    move-result-object v0

    .line 80
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getIdNameMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v1, Lcom/superdroid/util/StringDecoder$CharacterSet;->_IdNameMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/superdroid/util/StringDecoder$CharacterSet;->_IdNameMap:Ljava/util/HashMap;

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/superdroid/util/StringDecoder$CharacterSet;->CS_IDS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 91
    .end local v0           #i:I
    :cond_0
    sget-object v1, Lcom/superdroid/util/StringDecoder$CharacterSet;->_IdNameMap:Ljava/util/HashMap;

    return-object v1

    .line 87
    .restart local v0       #i:I
    :cond_1
    sget-object v1, Lcom/superdroid/util/StringDecoder$CharacterSet;->_IdNameMap:Ljava/util/HashMap;

    sget-object v2, Lcom/superdroid/util/StringDecoder$CharacterSet;->CS_IDS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/superdroid/util/StringDecoder$CharacterSet;->CS_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
