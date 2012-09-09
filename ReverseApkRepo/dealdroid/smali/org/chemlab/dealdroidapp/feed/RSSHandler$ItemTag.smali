.class final enum Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;
.super Ljava/lang/Enum;
.source "RSSHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chemlab/dealdroidapp/feed/RSSHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ItemTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field private static final synthetic ENUM$VALUES:[Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field public static final enum IMAGE_LINK:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field public static final enum LINK:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field public static final enum PRICE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field public static final enum PUBDATE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field public static final enum SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field public static final enum TITLE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field public static final enum WOOTOFF:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;


# instance fields
.field final tags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    const-string v1, "TITLE"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->TITLE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 29
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    const-string v1, "LINK"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "link"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v6, v2}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->LINK:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 30
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    const-string v1, "DESCRIPTION"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "description"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v7, v2}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 31
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    const-string v1, "PRICE"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "price"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v8, v2}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->PRICE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 32
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    const-string v1, "PUBDATE"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pubdate"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v9, v2}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->PUBDATE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 33
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    const-string v1, "IMAGE_LINK"

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "thumbnailimage"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->IMAGE_LINK:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 34
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    const-string v1, "SHORT_DESCRIPTION"

    const/4 v2, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "subtitle"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 35
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    const-string v1, "WOOTOFF"

    const/4 v2, 0x7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "wootoff"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->WOOTOFF:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->TITLE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->LINK:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->PRICE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    aput-object v1, v0, v8

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->PUBDATE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->IMAGE_LINK:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->WOOTOFF:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "tags"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->tags:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    return-object v0
.end method

.method public static values()[Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    array-length v1, v0

    new-array v2, v1, [Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, ret:Z
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->tags:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 51
    :goto_1
    return v0

    .line 45
    :cond_0
    aget-object v1, v3, v2

    .line 46
    .local v1, tag:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
