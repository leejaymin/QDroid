.class final enum Lcom/thinkyeah/smartlock/y;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/thinkyeah/smartlock/y;

.field public static final enum b:Lcom/thinkyeah/smartlock/y;

.field public static final enum c:Lcom/thinkyeah/smartlock/y;

.field public static final enum d:Lcom/thinkyeah/smartlock/y;

.field public static final enum e:Lcom/thinkyeah/smartlock/y;

.field private static final synthetic h:[Lcom/thinkyeah/smartlock/y;


# instance fields
.field final f:I

.field final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/thinkyeah/smartlock/y;

    const-string v1, "Cancel"

    const v2, 0x7f090004

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/thinkyeah/smartlock/y;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/y;->a:Lcom/thinkyeah/smartlock/y;

    new-instance v0, Lcom/thinkyeah/smartlock/y;

    const-string v1, "CancelDisabled"

    const v2, 0x7f090004

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/thinkyeah/smartlock/y;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/y;->b:Lcom/thinkyeah/smartlock/y;

    new-instance v0, Lcom/thinkyeah/smartlock/y;

    const-string v1, "Retry"

    const v2, 0x7f090005

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/thinkyeah/smartlock/y;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/y;->c:Lcom/thinkyeah/smartlock/y;

    new-instance v0, Lcom/thinkyeah/smartlock/y;

    const-string v1, "RetryDisabled"

    const v2, 0x7f090005

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/thinkyeah/smartlock/y;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/y;->d:Lcom/thinkyeah/smartlock/y;

    new-instance v0, Lcom/thinkyeah/smartlock/y;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/thinkyeah/smartlock/y;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/y;->e:Lcom/thinkyeah/smartlock/y;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/thinkyeah/smartlock/y;

    sget-object v1, Lcom/thinkyeah/smartlock/y;->a:Lcom/thinkyeah/smartlock/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/thinkyeah/smartlock/y;->b:Lcom/thinkyeah/smartlock/y;

    aput-object v1, v0, v4

    sget-object v1, Lcom/thinkyeah/smartlock/y;->c:Lcom/thinkyeah/smartlock/y;

    aput-object v1, v0, v5

    sget-object v1, Lcom/thinkyeah/smartlock/y;->d:Lcom/thinkyeah/smartlock/y;

    aput-object v1, v0, v6

    sget-object v1, Lcom/thinkyeah/smartlock/y;->e:Lcom/thinkyeah/smartlock/y;

    aput-object v1, v0, v7

    sput-object v0, Lcom/thinkyeah/smartlock/y;->h:[Lcom/thinkyeah/smartlock/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/thinkyeah/smartlock/y;->f:I

    iput-boolean p4, p0, Lcom/thinkyeah/smartlock/y;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thinkyeah/smartlock/y;
    .locals 1

    const-class v0, Lcom/thinkyeah/smartlock/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/y;

    return-object v0
.end method

.method public static values()[Lcom/thinkyeah/smartlock/y;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/thinkyeah/smartlock/y;->h:[Lcom/thinkyeah/smartlock/y;

    array-length v1, v0

    new-array v2, v1, [Lcom/thinkyeah/smartlock/y;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
