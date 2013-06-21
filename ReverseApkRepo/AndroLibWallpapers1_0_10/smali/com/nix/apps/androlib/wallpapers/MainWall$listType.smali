.class public final enum Lcom/nix/apps/androlib/wallpapers/MainWall$listType;
.super Ljava/lang/Enum;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "listType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nix/apps/androlib/wallpapers/MainWall$listType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum byAuthor:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum byCategory:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum last:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum myFavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum random:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum search:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum topfavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum topinstalls:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public static final enum toprated:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "last"

    invoke-direct {v0, v1, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->last:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 76
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "byCategory"

    invoke-direct {v0, v1, v4}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->byCategory:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 77
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "byAuthor"

    invoke-direct {v0, v1, v5}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->byAuthor:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 78
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "search"

    invoke-direct {v0, v1, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->search:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 79
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "myFavs"

    invoke-direct {v0, v1, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->myFavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 80
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "random"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->random:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 81
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "toprated"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->toprated:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 82
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "topfavs"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->topfavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 83
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    const-string v1, "topinstalls"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 73
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->last:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->byCategory:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->byAuthor:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->search:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->myFavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->random:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->toprated:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->topfavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nix/apps/androlib/wallpapers/MainWall$listType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    return-object p0
.end method

.method public static values()[Lcom/nix/apps/androlib/wallpapers/MainWall$listType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    array-length v1, v0

    new-array v2, v1, [Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
