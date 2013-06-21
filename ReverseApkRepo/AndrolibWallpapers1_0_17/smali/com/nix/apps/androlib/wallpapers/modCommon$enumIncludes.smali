.class public final enum Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;
.super Ljava/lang/Enum;
.source "modCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/modCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "enumIncludes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

.field public static final enum categories:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

.field public static final enum downloaded:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

.field public static final enum wallpaperDetail:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

.field public static final enum wallpapersList:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    const-string v1, "wallpapersList"

    invoke-direct {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpapersList:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    .line 118
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    const-string v1, "wallpaperDetail"

    invoke-direct {v0, v1, v3}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpaperDetail:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    .line 119
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    const-string v1, "categories"

    invoke-direct {v0, v1, v4}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->categories:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    .line 120
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    const-string v1, "downloaded"

    invoke-direct {v0, v1, v5}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->downloaded:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpapersList:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpaperDetail:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->categories:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->downloaded:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    return-object p0
.end method

.method public static values()[Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->ENUM$VALUES:[Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    array-length v1, v0

    new-array v2, v1, [Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
