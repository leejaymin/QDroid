.class public final Lb/a/a/a/a/a/j;
.super Lb/a/a/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/j;-><init>(Lb/a/a/a/a/e;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/a/e;)V
    .locals 1

    const-string v0, "(d|-){1}\\s+\\[(.*)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)"

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/j;->a(Lb/a/a/a/a/e;)V

    return-void
.end method


# virtual methods
.method protected final a()Lb/a/a/a/a/e;
    .locals 4

    new-instance v0, Lb/a/a/a/a/e;

    const-string v1, "NETWARE"

    const-string v2, "MMM dd yyyy"

    const-string v3, "MMM dd HH:mm"

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/a/a/a/a/h;
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v0, Lb/a/a/a/a/h;

    invoke-direct {v0}, Lb/a/a/a/a/h;-><init>()V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v7}, Lb/a/a/a/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lb/a/a/a/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lb/a/a/a/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-super {p0, v5}, Lb/a/a/a/a/a/b;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v0, v5}, Lb/a/a/a/a/h;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v7}, Lb/a/a/a/a/h;->a(I)V

    :goto_1
    invoke-virtual {v0, v3}, Lb/a/a/a/a/h;->d(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lb/a/a/a/a/h;->a(J)V

    const-string v1, "R"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_0

    invoke-virtual {v0, v8, v8, v7}, Lb/a/a/a/a/h;->a(IIZ)V

    :cond_0
    const-string v1, "W"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_1

    invoke-virtual {v0, v8, v7, v7}, Lb/a/a/a/a/h;->a(IIZ)V

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v0, v8}, Lb/a/a/a/a/h;->a(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_0
.end method
