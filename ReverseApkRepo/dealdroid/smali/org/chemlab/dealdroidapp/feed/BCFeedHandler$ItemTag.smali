.class final enum Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;
.super Ljava/lang/Enum;
.source "BCFeedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ItemTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

.field private static final synthetic ENUM$VALUES:[Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

.field public static final enum IMAGE_LINK:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

.field public static final enum LINK:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

.field public static final enum RETAIL_PRICE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

.field public static final enum SALE_PRICE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

.field public static final enum TITLE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;


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

    .line 19
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    const-string v1, "TITLE"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "product_name"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->TITLE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 20
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    const-string v1, "LINK"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "buy_url"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v6, v2}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->LINK:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 21
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    const-string v1, "DESCRIPTION"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "long_description"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v7, v2}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 22
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    const-string v1, "RETAIL_PRICE"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "retail_price"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v8, v2}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->RETAIL_PRICE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 23
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    const-string v1, "SALE_PRICE"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sale_price"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v9, v2}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->SALE_PRICE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 24
    new-instance v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    const-string v1, "IMAGE_LINK"

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "small_image_url"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->IMAGE_LINK:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->TITLE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->LINK:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->RETAIL_PRICE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    aput-object v1, v0, v8

    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->SALE_PRICE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->IMAGE_LINK:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "tags"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->tags:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    return-object v0
.end method

.method public static values()[Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    array-length v1, v0

    new-array v2, v1, [Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, ret:Z
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->tags:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 40
    :goto_1
    return v0

    .line 34
    :cond_0
    aget-object v1, v3, v2

    .line 35
    .local v1, tag:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
