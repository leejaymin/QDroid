.class public Lbu;
.super Ldr;


# static fields
.field private static final 궗:Lbu;


# instance fields
.field public final 癤욱븳援:Ldu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbu;

    invoke-direct {v0}, Lbu;-><init>()V

    sput-object v0, Lbu;->궗:Lbu;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ldr;-><init>()V

    new-instance v0, Ldu;

    const-string v1, "constants"

    new-instance v2, Lbv;

    invoke-direct {v2}, Lbv;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Ldu;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbu;->癤욱븳援:Ldu;

    return-void
.end method

.method public static 癤욱븳援()Lbu;
    .locals 1

    sget-object v0, Lbu;->궗:Lbu;

    return-object v0
.end method
