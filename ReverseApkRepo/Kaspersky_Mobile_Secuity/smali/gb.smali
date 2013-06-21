.class public final Lgb;
.super LfT;
.source "SourceFile"


# static fields
.field private static final a:[LfU;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 708
    const/4 v0, 0x1

    new-array v0, v0, [LfU;

    new-instance v1, LfU;

    const-string v2, "premiumPromoSent"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    sput-object v0, Lgb;->a:[LfU;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 712
    sget-object v0, Lgb;->a:[LfU;

    invoke-direct {p0, v0}, LfT;-><init>([LfU;)V

    .line 713
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgb;->a(Lgi;)V

    .line 714
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 718
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgb;->b(Lgi;)V

    .line 719
    return-void
.end method
