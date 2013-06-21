.class public final enum Lcom/paypal/android/c/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/paypal/android/c/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/paypal/android/c/h$a;

.field public static final enum b:Lcom/paypal/android/c/h$a;

.field public static final enum c:Lcom/paypal/android/c/h$a;

.field public static final enum d:Lcom/paypal/android/c/h$a;

.field private static final synthetic e:[Lcom/paypal/android/c/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/c/h$a;

    const-string v1, "RED_ALERT"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/c/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/c/h$a;->a:Lcom/paypal/android/c/h$a;

    new-instance v0, Lcom/paypal/android/c/h$a;

    const-string v1, "YELLOW_ALERT"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/c/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/c/h$a;->b:Lcom/paypal/android/c/h$a;

    new-instance v0, Lcom/paypal/android/c/h$a;

    const-string v1, "GREEN_ALERT"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/c/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/c/h$a;->c:Lcom/paypal/android/c/h$a;

    new-instance v0, Lcom/paypal/android/c/h$a;

    const-string v1, "BLUE_ALERT"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/c/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/c/h$a;->d:Lcom/paypal/android/c/h$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/paypal/android/c/h$a;

    sget-object v1, Lcom/paypal/android/c/h$a;->a:Lcom/paypal/android/c/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/c/h$a;->b:Lcom/paypal/android/c/h$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/c/h$a;->c:Lcom/paypal/android/c/h$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/c/h$a;->d:Lcom/paypal/android/c/h$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/paypal/android/c/h$a;->e:[Lcom/paypal/android/c/h$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/c/h$a;
    .locals 1

    const-class v0, Lcom/paypal/android/c/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/paypal/android/c/h$a;

    return-object p0
.end method

.method public static final values()[Lcom/paypal/android/c/h$a;
    .locals 1

    sget-object v0, Lcom/paypal/android/c/h$a;->e:[Lcom/paypal/android/c/h$a;

    invoke-virtual {v0}, [Lcom/paypal/android/c/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/c/h$a;

    return-object v0
.end method
