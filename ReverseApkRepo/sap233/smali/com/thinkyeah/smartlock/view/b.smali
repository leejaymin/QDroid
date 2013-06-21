.class public final enum Lcom/thinkyeah/smartlock/view/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/thinkyeah/smartlock/view/b;

.field public static final enum b:Lcom/thinkyeah/smartlock/view/b;

.field public static final enum c:Lcom/thinkyeah/smartlock/view/b;

.field private static final synthetic d:[Lcom/thinkyeah/smartlock/view/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/thinkyeah/smartlock/view/b;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/thinkyeah/smartlock/view/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    new-instance v0, Lcom/thinkyeah/smartlock/view/b;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/thinkyeah/smartlock/view/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thinkyeah/smartlock/view/b;->b:Lcom/thinkyeah/smartlock/view/b;

    new-instance v0, Lcom/thinkyeah/smartlock/view/b;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/thinkyeah/smartlock/view/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/thinkyeah/smartlock/view/b;

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->b:Lcom/thinkyeah/smartlock/view/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/thinkyeah/smartlock/view/b;->d:[Lcom/thinkyeah/smartlock/view/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thinkyeah/smartlock/view/b;
    .locals 1

    const-class v0, Lcom/thinkyeah/smartlock/view/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/b;

    return-object v0
.end method

.method public static values()[Lcom/thinkyeah/smartlock/view/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/thinkyeah/smartlock/view/b;->d:[Lcom/thinkyeah/smartlock/view/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/thinkyeah/smartlock/view/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
