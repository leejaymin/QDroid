.class public final Lgh;
.super LfT;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:I

.field private static c:J

.field private static final d:[LfU;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v4, 0xb

    const/4 v6, 0x1

    const/4 v3, 0x7

    const/4 v5, 0x0

    .line 187
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 188
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    sput-wide v1, Lgh;->c:J

    .line 189
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sput v1, Lgh;->b:I

    .line 190
    invoke-virtual {v0, v4, v6}, Ljava/util/GregorianCalendar;->add(II)V

    .line 191
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sput v1, Lgh;->b:I

    .line 192
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 193
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 194
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    sput-wide v0, Lgh;->a:J

    .line 199
    new-array v0, v3, [LfU;

    new-instance v1, LfU;

    const-string v2, "upd_update_roaming"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, LfU;

    const-string v2, "upd_time"

    sget-wide v3, Lgh;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, LfU;

    const-string v3, "upd_day"

    sget v4, Lgh;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, LfU;

    const-string v3, "upd_freq"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, LfU;

    const-string v3, "upd_last_time"

    sget-wide v4, Lgh;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, LfU;

    const-string v3, "upd_last_ak_ver_loaded"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, LfU;

    const-string v3, "upd_last_ak_ver_canceled"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lgh;->d:[LfU;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lgh;->d:[LfU;

    invoke-direct {p0, v0}, LfT;-><init>([LfU;)V

    .line 213
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgh;->a(Lgi;)V

    .line 214
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgh;->b(Lgi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
