.class public final enum Lcom/paypal/android/a/i$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/paypal/android/a/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/paypal/android/a/i$a;

.field public static final enum b:Lcom/paypal/android/a/i$a;

.field public static final enum c:Lcom/paypal/android/a/i$a;

.field private static final synthetic d:[Lcom/paypal/android/a/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/a/i$a;

    const-string v1, "HELVETICA_16_BOLD"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    new-instance v0, Lcom/paypal/android/a/i$a;

    const-string v1, "HELVETICA_16_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    new-instance v0, Lcom/paypal/android/a/i$a;

    const-string v1, "HELVETICA_12_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/a/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/a/i$a;->c:Lcom/paypal/android/a/i$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/paypal/android/a/i$a;

    sget-object v1, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/a/i$a;->c:Lcom/paypal/android/a/i$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/paypal/android/a/i$a;->d:[Lcom/paypal/android/a/i$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/a/i$a;
    .locals 1

    const-class v0, Lcom/paypal/android/a/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/paypal/android/a/i$a;

    return-object p0
.end method

.method public static final values()[Lcom/paypal/android/a/i$a;
    .locals 1

    sget-object v0, Lcom/paypal/android/a/i$a;->d:[Lcom/paypal/android/a/i$a;

    invoke-virtual {v0}, [Lcom/paypal/android/a/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/a/i$a;

    return-object v0
.end method