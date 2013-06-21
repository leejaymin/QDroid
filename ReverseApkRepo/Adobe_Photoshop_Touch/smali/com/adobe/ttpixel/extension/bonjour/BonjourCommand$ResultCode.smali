.class public final enum Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum ERROR_PUBLISHING_SERVICE:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum ERROR_START_BROWSING:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum ERROR_STOP_BROWSING:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum ERROR_UNPUBLISHING_SERVICE:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum INTERRUPTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum SERVICE_ALREADY_PUBLISHED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum SERVICE_NOT_FOUND:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum UNDEFINED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

.field public static final enum UNHANDLED_EXCEPTION:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;


# instance fields
.field private _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "UNDEFINED"

    const/16 v2, -0x3e9

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->UNDEFINED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "ERROR_PUBLISHING_SERVICE"

    const/16 v2, -0x3ea

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_PUBLISHING_SERVICE:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "ERROR_UNPUBLISHING_SERVICE"

    const/16 v2, -0x3eb

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_UNPUBLISHING_SERVICE:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "SERVICE_NOT_FOUND"

    const/16 v2, -0x3ec

    invoke-direct {v0, v1, v8, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->SERVICE_NOT_FOUND:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "ERROR_START_BROWSING"

    const/4 v2, 0x5

    const/16 v3, -0x3ed

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_START_BROWSING:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "ERROR_STOP_BROWSING"

    const/4 v2, 0x6

    const/16 v3, -0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_STOP_BROWSING:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "SERVICE_ALREADY_PUBLISHED"

    const/4 v2, 0x7

    const/16 v3, -0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->SERVICE_ALREADY_PUBLISHED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "INTERRUPTED"

    const/16 v2, 0x8

    const/16 v3, -0x2329

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->INTERRUPTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const-string v1, "UNHANDLED_EXCEPTION"

    const/16 v2, 0x9

    const/16 v3, -0x270f

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->UNHANDLED_EXCEPTION:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->UNDEFINED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_PUBLISHING_SERVICE:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_UNPUBLISHING_SERVICE:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->SERVICE_NOT_FOUND:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_START_BROWSING:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_STOP_BROWSING:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->SERVICE_ALREADY_PUBLISHED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->INTERRUPTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->UNHANDLED_EXCEPTION:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->$VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    .locals 1

    const-class v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    .locals 1

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->$VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    invoke-virtual {v0}, [Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->_id:I

    return v0
.end method
