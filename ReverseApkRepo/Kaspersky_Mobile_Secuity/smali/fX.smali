.class public final LfX;
.super LfT;
.source "SourceFile"


# static fields
.field private static final a:[LfU;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 687
    new-array v0, v4, [LfU;

    const/4 v1, 0x0

    new-instance v2, LfU;

    const-string v3, "apOn"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, LfX;->a:[LfU;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 691
    sget-object v0, LfX;->a:[LfU;

    invoke-direct {p0, v0}, LfT;-><init>([LfU;)V

    .line 692
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, LfX;->a(Lgi;)V

    .line 693
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 697
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, LfX;->b(Lgi;)V

    .line 698
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LfX;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
