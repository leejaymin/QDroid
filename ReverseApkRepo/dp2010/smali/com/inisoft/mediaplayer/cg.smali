.class public final enum Lcom/inisoft/mediaplayer/cg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/inisoft/mediaplayer/cg;

.field public static final enum b:Lcom/inisoft/mediaplayer/cg;

.field public static final enum c:Lcom/inisoft/mediaplayer/cg;

.field private static final synthetic d:[Lcom/inisoft/mediaplayer/cg;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/cg;

    const-string v1, "FileExtensionType_Subtitle"

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/cg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/cg;->a:Lcom/inisoft/mediaplayer/cg;

    new-instance v0, Lcom/inisoft/mediaplayer/cg;

    const-string v1, "FileExtensionType_Font"

    invoke-direct {v0, v1, v3}, Lcom/inisoft/mediaplayer/cg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/cg;->b:Lcom/inisoft/mediaplayer/cg;

    new-instance v0, Lcom/inisoft/mediaplayer/cg;

    const-string v1, "FileExtensionType_Directory"

    invoke-direct {v0, v1, v4}, Lcom/inisoft/mediaplayer/cg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inisoft/mediaplayer/cg;->c:Lcom/inisoft/mediaplayer/cg;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inisoft/mediaplayer/cg;

    sget-object v1, Lcom/inisoft/mediaplayer/cg;->a:Lcom/inisoft/mediaplayer/cg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inisoft/mediaplayer/cg;->b:Lcom/inisoft/mediaplayer/cg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inisoft/mediaplayer/cg;->c:Lcom/inisoft/mediaplayer/cg;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inisoft/mediaplayer/cg;->d:[Lcom/inisoft/mediaplayer/cg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inisoft/mediaplayer/cg;
    .locals 1

    const-class v0, Lcom/inisoft/mediaplayer/cg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cg;

    return-object v0
.end method

.method public static values()[Lcom/inisoft/mediaplayer/cg;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/cg;->d:[Lcom/inisoft/mediaplayer/cg;

    array-length v1, v0

    new-array v2, v1, [Lcom/inisoft/mediaplayer/cg;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
