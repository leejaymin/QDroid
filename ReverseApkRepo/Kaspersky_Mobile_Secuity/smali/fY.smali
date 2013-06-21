.class public final LfY;
.super LfT;
.source "SourceFile"


# static fields
.field private static final a:[LfU;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [LfU;

    new-instance v1, LfU;

    const-string v2, "checkContacts"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, LfU;

    const-string v2, "blockNonNumeric"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, LfU;

    const-string v3, "blackWhiteFlags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, LfU;

    const-string v3, "asStartDate"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, LfY;->a:[LfU;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, LfY;->a:[LfU;

    invoke-direct {p0, v0}, LfT;-><init>([LfU;)V

    .line 105
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, LfY;->a(Lgi;)V

    .line 106
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, LfY;->b(Lgi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
