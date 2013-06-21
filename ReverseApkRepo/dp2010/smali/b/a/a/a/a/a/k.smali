.class public final Lb/a/a/a/a/a/k;
.super Lb/a/a/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/k;-><init>(Lb/a/a/a/a/e;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/a/e;)V
    .locals 1

    const-string v0, "\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)"

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/k;->a(Lb/a/a/a/a/e;)V

    return-void
.end method


# virtual methods
.method protected final a()Lb/a/a/a/a/e;
    .locals 4

    new-instance v0, Lb/a/a/a/a/e;

    const-string v1, "OS/2"

    const-string v2, "MM-dd-yy HH:mm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/a/a/a/a/h;
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Lb/a/a/a/a/h;

    invoke-direct {v0}, Lb/a/a/a/a/h;-><init>()V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/k;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v6}, Lb/a/a/a/a/a/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/k;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/k;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/k;->a(I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-super {p0, v4}, Lb/a/a/a/a/a/b;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v0, v4}, Lb/a/a/a/a/h;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DIR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0, v6}, Lb/a/a/a/a/h;->a(I)V

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/h;->a(J)V

    :goto_2
    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/a/a/a/a/h;->a(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_0
.end method
