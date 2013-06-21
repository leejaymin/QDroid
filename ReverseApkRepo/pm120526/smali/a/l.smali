.class final La/l;
.super La/t;

# interfaces
.implements La/k;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/Date;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:La/d;

.field private k:La/e;

.field private l:J

.field private m:Z

.field private n:[Ljava/lang/String;

.field private o:La/b;

.field private p:La/k;

.field private q:[La/u;

.field private r:[Ljava/net/URL;

.field private s:[Ljava/lang/String;

.field private t:La/u;


# direct methods
.method constructor <init>(La/c/a/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, La/t;-><init>(La/c/a/l;)V

    iput-object v0, p0, La/l;->j:La/d;

    iput-object v0, p0, La/l;->k:La/e;

    iput-object v0, p0, La/l;->o:La/b;

    iput-object v0, p0, La/l;->t:La/u;

    invoke-virtual {p1}, La/c/a/l;->c()La/c/c/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, La/l;->a(La/c/c/a/c;)V

    return-void
.end method

.method constructor <init>(La/c/c/a/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, La/t;-><init>()V

    iput-object v0, p0, La/l;->j:La/d;

    iput-object v0, p0, La/l;->k:La/e;

    iput-object v0, p0, La/l;->o:La/b;

    iput-object v0, p0, La/l;->t:La/u;

    invoke-direct {p0, p1}, La/l;->a(La/c/c/a/c;)V

    return-void
.end method

.method private a(La/c/c/a/c;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v0, "id"

    invoke-static {v0, p1}, La/c/d/a;->e(Ljava/lang/String;La/c/c/a/c;)J

    move-result-wide v0

    iput-wide v0, p0, La/l;->b:J

    const-string v0, "text"

    invoke-static {v0, p1}, La/c/d/a;->a(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/l;->c:Ljava/lang/String;

    const-string v0, "source"

    invoke-static {v0, p1}, La/c/d/a;->a(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/l;->d:Ljava/lang/String;

    const-string v0, "created_at"

    invoke-static {v0, p1}, La/c/d/a;->c(Ljava/lang/String;La/c/c/a/c;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, La/l;->a:Ljava/util/Date;

    const-string v0, "truncated"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/l;->e:Z

    const-string v0, "in_reply_to_status_id"

    invoke-static {v0, p1}, La/c/d/a;->e(Ljava/lang/String;La/c/c/a/c;)J

    move-result-wide v0

    iput-wide v0, p0, La/l;->f:J

    const-string v0, "in_reply_to_user_id"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/l;->g:I

    const-string v0, "favorited"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/l;->h:Z

    const-string v0, "in_reply_to_screen_name"

    invoke-static {v0, p1}, La/c/d/a;->a(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/l;->i:Ljava/lang/String;

    const-string v0, "retweet_count"

    invoke-static {v0, p1}, La/c/d/a;->e(Ljava/lang/String;La/c/c/a/c;)J

    move-result-wide v0

    iput-wide v0, p0, La/l;->l:J

    const-string v0, "retweeted"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/l;->m:Z

    :try_start_0
    const-string v0, "user"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, La/v;

    const-string v1, "user"

    invoke-virtual {p1, v1}, La/c/c/a/c;->b(Ljava/lang/String;)La/c/c/a/c;

    move-result-object v1

    invoke-direct {v0, v1}, La/v;-><init>(La/c/c/a/c;)V

    iput-object v0, p0, La/l;->t:La/u;
    :try_end_0
    .catch La/c/c/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {p1}, La/d;->a(La/c/c/a/c;)La/d;

    move-result-object v0

    iput-object v0, p0, La/l;->j:La/d;

    const-string v0, "place"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, La/f;

    const-string v1, "place"

    invoke-virtual {p1, v1}, La/c/c/a/c;->b(Ljava/lang/String;)La/c/c/a/c;

    move-result-object v1

    invoke-direct {v0, v1}, La/f;-><init>(La/c/c/a/c;)V

    iput-object v0, p0, La/l;->k:La/e;
    :try_end_1
    .catch La/c/c/a/b; {:try_start_1 .. :try_end_1} :catch_6

    :cond_1
    :goto_0
    const-string v0, "retweeted_status"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    new-instance v0, La/l;

    const-string v1, "retweeted_status"

    invoke-virtual {p1, v1}, La/c/c/a/c;->b(Ljava/lang/String;)La/c/c/a/c;

    move-result-object v1

    invoke-direct {v0, v1}, La/l;-><init>(La/c/c/a/c;)V

    iput-object v0, p0, La/l;->p:La/k;
    :try_end_2
    .catch La/c/c/a/b; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_1
    const-string v0, "contributors"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_3
    const-string v0, "contributors"

    invoke-virtual {p1, v0}, La/c/c/a/c;->a(Ljava/lang/String;)La/c/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/c/c/a/a;->a()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, La/l;->n:[Ljava/lang/String;

    move v1, v7

    :goto_2
    invoke-virtual {v0}, La/c/c/a/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, La/l;->n:[Ljava/lang/String;

    invoke-virtual {v0, v1}, La/c/c/a/a;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_3
    .catch La/c/c/a/b; {:try_start_3 .. :try_end_3} :catch_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, La/o;

    invoke-direct {v1, v0}, La/o;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_3
    iput-object v2, p0, La/l;->n:[Ljava/lang/String;

    :cond_4
    :goto_3
    const-string v0, "entities"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_4
    const-string v0, "entities"

    invoke-virtual {p1, v0}, La/c/c/a/c;->b(Ljava/lang/String;)La/c/c/a/c;

    move-result-object v0

    const-string v1, "user_mentions"

    invoke-virtual {v0, v1}, La/c/c/a/c;->a(Ljava/lang/String;)La/c/c/a/a;

    move-result-object v1

    invoke-virtual {v1}, La/c/c/a/a;->a()I

    move-result v2

    new-array v2, v2, [La/u;

    iput-object v2, p0, La/l;->q:[La/u;

    move v2, v7

    :goto_4
    invoke-virtual {v1}, La/c/c/a/a;->a()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, La/l;->q:[La/u;

    new-instance v4, La/v;

    invoke-virtual {v1, v2}, La/c/c/a/a;->d(I)La/c/c/a/c;

    move-result-object v5

    invoke-direct {v4, v5}, La/v;-><init>(La/c/c/a/c;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    const-string v1, "urls"

    invoke-virtual {v0, v1}, La/c/c/a/c;->a(Ljava/lang/String;)La/c/c/a/a;

    move-result-object v1

    invoke-virtual {v1}, La/c/c/a/a;->a()I

    move-result v2

    new-array v2, v2, [Ljava/net/URL;

    iput-object v2, p0, La/l;->r:[Ljava/net/URL;

    move v2, v7

    :goto_5
    invoke-virtual {v1}, La/c/c/a/a;->a()I
    :try_end_4
    .catch La/c/c/a/b; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    if-ge v2, v3, :cond_8

    :try_start_5
    iget-object v3, p0, La/l;->r:[Ljava/net/URL;

    new-instance v4, Ljava/net/URL;

    invoke-virtual {v1, v2}, La/c/c/a/a;->d(I)La/c/c/a/c;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, La/c/c/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch La/c/c/a/b; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_6
    iget-object v3, p0, La/l;->r:[Ljava/net/URL;

    const/4 v4, 0x0

    aput-object v4, v3, v2
    :try_end_6
    .catch La/c/c/a/b; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    :cond_6
    const-string v0, "annotations"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_7
    const-string v0, "annotations"

    invoke-virtual {p1, v0}, La/c/c/a/c;->a(Ljava/lang/String;)La/c/c/a/a;

    move-result-object v0

    new-instance v1, La/b;

    invoke-direct {v1, v0}, La/b;-><init>(La/c/c/a/a;)V

    iput-object v1, p0, La/l;->o:La/b;
    :try_end_7
    .catch La/c/c/a/b; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_7
    return-void

    :cond_8
    :try_start_8
    const-string v1, "hashtags"

    invoke-virtual {v0, v1}, La/c/c/a/c;->a(Ljava/lang/String;)La/c/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/c/c/a/a;->a()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, La/l;->s:[Ljava/lang/String;

    move v1, v7

    :goto_8
    invoke-virtual {v0}, La/c/c/a/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, La/l;->s:[Ljava/lang/String;

    invoke-virtual {v0, v1}, La/c/c/a/a;->d(I)La/c/c/a/c;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v3, v4}, La/c/c/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_8
    .catch La/c/c/a/b; {:try_start_8 .. :try_end_8} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, La/l;->b:J

    return-wide v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, La/k;

    iget-wide v0, p0, La/l;->b:J

    invoke-interface {p1}, La/k;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/high16 v0, -0x8000

    :goto_0
    return v0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    instance-of v0, p1, La/k;

    if-eqz v0, :cond_2

    check-cast p1, La/k;

    invoke-interface {p1}, La/k;->a()J

    move-result-wide v0

    iget-wide v2, p0, La/l;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, La/l;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "StatusJSONImpl{createdAt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/l;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, La/l;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, La/l;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, La/l;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/l;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isFavorited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, La/l;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->j:La/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->k:La/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", contributors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->n:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->o:La/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retweetedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->p:La/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/l;->t:La/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, La/l;->n:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
