.class public final enum Lcom/ui/OAuth/OAuthManager$APIs;
.super Ljava/lang/Enum;
.source "OAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/OAuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APIs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/OAuth/OAuthManager$APIs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ui/OAuth/OAuthManager$APIs;

.field public static final enum FACEBOOK:Lcom/ui/OAuth/OAuthManager$APIs;

.field public static final enum TWITTER:Lcom/ui/OAuth/OAuthManager$APIs;

.field public static final enum VIMEO:Lcom/ui/OAuth/OAuthManager$APIs;

.field public static final enum YOUTUBE:Lcom/ui/OAuth/OAuthManager$APIs;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/ui/OAuth/OAuthManager$APIs;

    const-string v1, "TWITTER"

    invoke-direct {v0, v1, v2}, Lcom/ui/OAuth/OAuthManager$APIs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/OAuth/OAuthManager$APIs;->TWITTER:Lcom/ui/OAuth/OAuthManager$APIs;

    new-instance v0, Lcom/ui/OAuth/OAuthManager$APIs;

    const-string v1, "YOUTUBE"

    invoke-direct {v0, v1, v3}, Lcom/ui/OAuth/OAuthManager$APIs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/OAuth/OAuthManager$APIs;->YOUTUBE:Lcom/ui/OAuth/OAuthManager$APIs;

    new-instance v0, Lcom/ui/OAuth/OAuthManager$APIs;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v4}, Lcom/ui/OAuth/OAuthManager$APIs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/OAuth/OAuthManager$APIs;->FACEBOOK:Lcom/ui/OAuth/OAuthManager$APIs;

    new-instance v0, Lcom/ui/OAuth/OAuthManager$APIs;

    const-string v1, "VIMEO"

    invoke-direct {v0, v1, v5}, Lcom/ui/OAuth/OAuthManager$APIs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/OAuth/OAuthManager$APIs;->VIMEO:Lcom/ui/OAuth/OAuthManager$APIs;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ui/OAuth/OAuthManager$APIs;

    sget-object v1, Lcom/ui/OAuth/OAuthManager$APIs;->TWITTER:Lcom/ui/OAuth/OAuthManager$APIs;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ui/OAuth/OAuthManager$APIs;->YOUTUBE:Lcom/ui/OAuth/OAuthManager$APIs;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ui/OAuth/OAuthManager$APIs;->FACEBOOK:Lcom/ui/OAuth/OAuthManager$APIs;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ui/OAuth/OAuthManager$APIs;->VIMEO:Lcom/ui/OAuth/OAuthManager$APIs;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ui/OAuth/OAuthManager$APIs;->ENUM$VALUES:[Lcom/ui/OAuth/OAuthManager$APIs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/OAuth/OAuthManager$APIs;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/OAuth/OAuthManager$APIs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/OAuth/OAuthManager$APIs;

    return-object v0
.end method

.method public static values()[Lcom/ui/OAuth/OAuthManager$APIs;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/OAuth/OAuthManager$APIs;->ENUM$VALUES:[Lcom/ui/OAuth/OAuthManager$APIs;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/OAuth/OAuthManager$APIs;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
