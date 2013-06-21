.class final enum Lcom/thinkyeah/smartlock/ao;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/thinkyeah/smartlock/ao;

.field public static final enum b:Lcom/thinkyeah/smartlock/ao;

.field public static final enum c:Lcom/thinkyeah/smartlock/ao;

.field private static final synthetic d:[Lcom/thinkyeah/smartlock/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/thinkyeah/smartlock/ao;

    const-string v1, "NeedToUnlock"

    invoke-direct {v0, v1, v2}, Lcom/thinkyeah/smartlock/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thinkyeah/smartlock/ao;->a:Lcom/thinkyeah/smartlock/ao;

    new-instance v0, Lcom/thinkyeah/smartlock/ao;

    const-string v1, "NeedToUnlockWrong"

    invoke-direct {v0, v1, v3}, Lcom/thinkyeah/smartlock/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thinkyeah/smartlock/ao;->b:Lcom/thinkyeah/smartlock/ao;

    new-instance v0, Lcom/thinkyeah/smartlock/ao;

    const-string v1, "LockedOut"

    invoke-direct {v0, v1, v4}, Lcom/thinkyeah/smartlock/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thinkyeah/smartlock/ao;->c:Lcom/thinkyeah/smartlock/ao;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/thinkyeah/smartlock/ao;

    sget-object v1, Lcom/thinkyeah/smartlock/ao;->a:Lcom/thinkyeah/smartlock/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/thinkyeah/smartlock/ao;->b:Lcom/thinkyeah/smartlock/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/thinkyeah/smartlock/ao;->c:Lcom/thinkyeah/smartlock/ao;

    aput-object v1, v0, v4

    sput-object v0, Lcom/thinkyeah/smartlock/ao;->d:[Lcom/thinkyeah/smartlock/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thinkyeah/smartlock/ao;
    .locals 1

    const-class v0, Lcom/thinkyeah/smartlock/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/ao;

    return-object v0
.end method

.method public static values()[Lcom/thinkyeah/smartlock/ao;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/thinkyeah/smartlock/ao;->d:[Lcom/thinkyeah/smartlock/ao;

    array-length v1, v0

    new-array v2, v1, [Lcom/thinkyeah/smartlock/ao;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
