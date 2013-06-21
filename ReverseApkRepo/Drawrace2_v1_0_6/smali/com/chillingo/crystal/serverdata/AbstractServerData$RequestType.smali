.class public enum Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/serverdata/AbstractServerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

.field public static final enum ApplicationJson:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

.field public static final enum UrlEncoded:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType$1;

    const-string v1, "ApplicationJson"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->ApplicationJson:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType$2;

    const-string v1, "UrlEncoded"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->UrlEncoded:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->ApplicationJson:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->UrlEncoded:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->$VALUES:[Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/chillingo/crystal/serverdata/AbstractServerData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->$VALUES:[Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    return-object v0
.end method
