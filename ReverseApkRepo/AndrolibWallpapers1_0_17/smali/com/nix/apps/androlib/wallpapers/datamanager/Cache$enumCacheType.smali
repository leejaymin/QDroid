.class public final enum Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;
.super Ljava/lang/Enum;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "enumCacheType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Categories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum Downloaded:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field private static final synthetic ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum None:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum Wallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listAuthor:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listCategories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listLast:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listMyFav:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listRandom:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listSearch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listTopFavs:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listTopInstall:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public static final enum listTopRated:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->None:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 9
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listLast"

    invoke-direct {v0, v1, v4}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listLast:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 10
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listTopInstall"

    invoke-direct {v0, v1, v5}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopInstall:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 11
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listTopFavs"

    invoke-direct {v0, v1, v6}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopFavs:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 12
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listTopRated"

    invoke-direct {v0, v1, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopRated:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 13
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listMyFav"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listMyFav:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 14
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listSearch"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listSearch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 15
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listRandom"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listRandom:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 16
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listCategories"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listCategories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 17
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "listAuthor"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listAuthor:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 18
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "Categories"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Categories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 19
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "Wallpaper"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Wallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 20
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    const-string v1, "Downloaded"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Downloaded:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 6
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->None:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listLast:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopInstall:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopFavs:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopRated:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listMyFav:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listSearch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listRandom:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listCategories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listAuthor:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Categories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Wallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Downloaded:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    return-object p0
.end method

.method public static values()[Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    array-length v1, v0

    new-array v2, v1, [Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
