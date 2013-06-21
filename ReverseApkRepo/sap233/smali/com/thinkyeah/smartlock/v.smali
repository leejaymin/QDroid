.class public final enum Lcom/thinkyeah/smartlock/v;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/thinkyeah/smartlock/v;

.field public static final enum b:Lcom/thinkyeah/smartlock/v;

.field public static final enum c:Lcom/thinkyeah/smartlock/v;

.field private static final synthetic g:[Lcom/thinkyeah/smartlock/v;


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const v5, 0x7f090089

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/thinkyeah/smartlock/v;

    const-string v1, "Introduction"

    const v3, 0x7f09008f

    const v4, 0x7f090090

    invoke-direct/range {v0 .. v5}, Lcom/thinkyeah/smartlock/v;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/thinkyeah/smartlock/v;->a:Lcom/thinkyeah/smartlock/v;

    new-instance v6, Lcom/thinkyeah/smartlock/v;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f09008b

    const v10, 0x7f09008c

    const v11, 0x7f09008a

    invoke-direct/range {v6 .. v11}, Lcom/thinkyeah/smartlock/v;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/thinkyeah/smartlock/v;->b:Lcom/thinkyeah/smartlock/v;

    new-instance v9, Lcom/thinkyeah/smartlock/v;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f09008d

    const v13, 0x7f09008e

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/thinkyeah/smartlock/v;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/thinkyeah/smartlock/v;->c:Lcom/thinkyeah/smartlock/v;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/thinkyeah/smartlock/v;

    sget-object v1, Lcom/thinkyeah/smartlock/v;->a:Lcom/thinkyeah/smartlock/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/thinkyeah/smartlock/v;->b:Lcom/thinkyeah/smartlock/v;

    aput-object v1, v0, v8

    sget-object v1, Lcom/thinkyeah/smartlock/v;->c:Lcom/thinkyeah/smartlock/v;

    aput-object v1, v0, v15

    sput-object v0, Lcom/thinkyeah/smartlock/v;->g:[Lcom/thinkyeah/smartlock/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/thinkyeah/smartlock/v;->d:I

    iput p4, p0, Lcom/thinkyeah/smartlock/v;->e:I

    iput p5, p0, Lcom/thinkyeah/smartlock/v;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thinkyeah/smartlock/v;
    .locals 1

    const-class v0, Lcom/thinkyeah/smartlock/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/v;

    return-object v0
.end method

.method public static values()[Lcom/thinkyeah/smartlock/v;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/thinkyeah/smartlock/v;->g:[Lcom/thinkyeah/smartlock/v;

    array-length v1, v0

    new-array v2, v1, [Lcom/thinkyeah/smartlock/v;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
