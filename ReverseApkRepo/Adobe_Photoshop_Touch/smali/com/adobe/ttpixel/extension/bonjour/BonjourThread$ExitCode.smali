.class public final enum Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExitCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field public static final enum INTERRUPTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field public static final enum INTERRUPTED_ERROR:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field public static final enum NOT_STARTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field public static final enum NO_WIFI_MANAGER:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field public static final enum OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field public static final enum UNHANDLED_EXCEPTION:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field public static final enum UNRECOVERABLE_IO_ERROR:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;


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

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    const-string v1, "NOT_STARTED"

    const/16 v2, -0x3e9

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->NOT_STARTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    const-string v1, "NO_WIFI_MANAGER"

    const/16 v2, -0x3ea

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->NO_WIFI_MANAGER:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    const-string v1, "UNRECOVERABLE_IO_ERROR"

    const/16 v2, -0x3eb

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->UNRECOVERABLE_IO_ERROR:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    const-string v1, "INTERRUPTED"

    const/16 v2, -0x2329

    invoke-direct {v0, v1, v8, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->INTERRUPTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    const-string v1, "INTERRUPTED_ERROR"

    const/4 v2, 0x5

    const/16 v3, -0x232a

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->INTERRUPTED_ERROR:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    const-string v1, "UNHANDLED_EXCEPTION"

    const/4 v2, 0x6

    const/16 v3, -0x270f

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->UNHANDLED_EXCEPTION:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->NOT_STARTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->NO_WIFI_MANAGER:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->UNRECOVERABLE_IO_ERROR:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->INTERRUPTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->INTERRUPTED_ERROR:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->UNHANDLED_EXCEPTION:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->$VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

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

    iput p3, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
    .locals 1

    const-class v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
    .locals 1

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->$VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    invoke-virtual {v0}, [Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->_id:I

    return v0
.end method
