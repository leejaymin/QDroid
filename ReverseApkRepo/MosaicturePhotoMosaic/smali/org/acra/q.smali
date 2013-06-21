.class public final enum Lorg/acra/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/acra/q;

.field public static final enum b:Lorg/acra/q;

.field public static final enum c:Lorg/acra/q;

.field private static final synthetic d:[Lorg/acra/q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/acra/q;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->a:Lorg/acra/q;

    new-instance v0, Lorg/acra/q;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->b:Lorg/acra/q;

    new-instance v0, Lorg/acra/q;

    const-string v1, "TOAST"

    invoke-direct {v0, v1, v4}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->c:Lorg/acra/q;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/acra/q;

    sget-object v1, Lorg/acra/q;->a:Lorg/acra/q;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/q;->b:Lorg/acra/q;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/q;->c:Lorg/acra/q;

    aput-object v1, v0, v4

    sput-object v0, Lorg/acra/q;->d:[Lorg/acra/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/q;
    .locals 1

    const-class v0, Lorg/acra/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/q;

    return-object v0
.end method

.method public static values()[Lorg/acra/q;
    .locals 1

    sget-object v0, Lorg/acra/q;->d:[Lorg/acra/q;

    invoke-virtual {v0}, [Lorg/acra/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/q;

    return-object v0
.end method
