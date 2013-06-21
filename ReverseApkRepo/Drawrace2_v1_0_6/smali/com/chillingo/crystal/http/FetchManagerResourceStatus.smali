.class public final enum Lcom/chillingo/crystal/http/FetchManagerResourceStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/http/FetchManagerResourceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

.field public static final enum BadRequest:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

.field public static final enum ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

.field public static final enum ResourceUnavailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

.field public static final enum ResourceUpdating:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    const-string v1, "ResourceUnavailable"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUnavailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    new-instance v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    const-string v1, "ResourceAvailable"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    new-instance v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    const-string v1, "ResourceUpdating"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUpdating:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    new-instance v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    const-string v1, "BadRequest"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->BadRequest:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUnavailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUpdating:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->BadRequest:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->$VALUES:[Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/http/FetchManagerResourceStatus;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->$VALUES:[Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    return-object v0
.end method
