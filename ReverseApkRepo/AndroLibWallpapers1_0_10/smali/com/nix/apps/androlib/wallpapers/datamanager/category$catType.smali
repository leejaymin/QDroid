.class public final enum Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;
.super Ljava/lang/Enum;
.source "category.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/datamanager/category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "catType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

.field public static final enum favs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

.field public static final enum last:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

.field public static final enum normal:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

.field public static final enum random:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

.field public static final enum top:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

.field public static final enum topfavs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

.field public static final enum topinstalls:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

.field public static final enum toprated:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->normal:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 7
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    const-string v1, "favs"

    invoke-direct {v0, v1, v4}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->favs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 8
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    const-string v1, "last"

    invoke-direct {v0, v1, v5}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->last:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 9
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    const-string v1, "top"

    invoke-direct {v0, v1, v6}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->top:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 10
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    const-string v1, "random"

    invoke-direct {v0, v1, v7}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->random:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 11
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    const-string v1, "toprated"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->toprated:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 12
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    const-string v1, "topfavs"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->topfavs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 13
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    const-string v1, "topinstalls"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 4
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->normal:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->favs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->last:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->top:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->random:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->toprated:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->topfavs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    return-object p0
.end method

.method public static values()[Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    array-length v1, v0

    new-array v2, v1, [Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
