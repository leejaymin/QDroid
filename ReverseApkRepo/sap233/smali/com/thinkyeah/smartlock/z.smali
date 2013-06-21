.class final enum Lcom/thinkyeah/smartlock/z;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/thinkyeah/smartlock/z;

.field public static final enum b:Lcom/thinkyeah/smartlock/z;

.field public static final enum c:Lcom/thinkyeah/smartlock/z;

.field public static final enum d:Lcom/thinkyeah/smartlock/z;

.field public static final enum e:Lcom/thinkyeah/smartlock/z;

.field private static final synthetic h:[Lcom/thinkyeah/smartlock/z;


# instance fields
.field final f:I

.field final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const v5, 0x7f090007

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/thinkyeah/smartlock/z;

    const-string v1, "Continue"

    const v2, 0x7f090006

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/thinkyeah/smartlock/z;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/z;->a:Lcom/thinkyeah/smartlock/z;

    new-instance v0, Lcom/thinkyeah/smartlock/z;

    const-string v1, "ContinueDisabled"

    const v2, 0x7f090006

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/thinkyeah/smartlock/z;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/z;->b:Lcom/thinkyeah/smartlock/z;

    new-instance v0, Lcom/thinkyeah/smartlock/z;

    const-string v1, "Confirm"

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/thinkyeah/smartlock/z;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/z;->c:Lcom/thinkyeah/smartlock/z;

    new-instance v0, Lcom/thinkyeah/smartlock/z;

    const-string v1, "ConfirmDisabled"

    invoke-direct {v0, v1, v7, v5, v4}, Lcom/thinkyeah/smartlock/z;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/z;->d:Lcom/thinkyeah/smartlock/z;

    new-instance v0, Lcom/thinkyeah/smartlock/z;

    const-string v1, "Ok"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/thinkyeah/smartlock/z;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/thinkyeah/smartlock/z;->e:Lcom/thinkyeah/smartlock/z;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/thinkyeah/smartlock/z;

    sget-object v1, Lcom/thinkyeah/smartlock/z;->a:Lcom/thinkyeah/smartlock/z;

    aput-object v1, v0, v4

    sget-object v1, Lcom/thinkyeah/smartlock/z;->b:Lcom/thinkyeah/smartlock/z;

    aput-object v1, v0, v3

    sget-object v1, Lcom/thinkyeah/smartlock/z;->c:Lcom/thinkyeah/smartlock/z;

    aput-object v1, v0, v6

    sget-object v1, Lcom/thinkyeah/smartlock/z;->d:Lcom/thinkyeah/smartlock/z;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/thinkyeah/smartlock/z;->e:Lcom/thinkyeah/smartlock/z;

    aput-object v2, v0, v1

    sput-object v0, Lcom/thinkyeah/smartlock/z;->h:[Lcom/thinkyeah/smartlock/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/thinkyeah/smartlock/z;->f:I

    iput-boolean p4, p0, Lcom/thinkyeah/smartlock/z;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thinkyeah/smartlock/z;
    .locals 1

    const-class v0, Lcom/thinkyeah/smartlock/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/z;

    return-object v0
.end method

.method public static values()[Lcom/thinkyeah/smartlock/z;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/thinkyeah/smartlock/z;->h:[Lcom/thinkyeah/smartlock/z;

    array-length v1, v0

    new-array v2, v1, [Lcom/thinkyeah/smartlock/z;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
