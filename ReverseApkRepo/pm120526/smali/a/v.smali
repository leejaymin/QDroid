.class final La/v;
.super La/t;

# interfaces
.implements La/u;
.implements Ljava/io/Serializable;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:La/k;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/util/Date;

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Z


# direct methods
.method constructor <init>(La/c/c/a/c;)V
    .locals 4

    invoke-direct {p0}, La/t;-><init>()V

    :try_start_0
    const-string v0, "id"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/v;->a:I

    const-string v0, "name"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->b:Ljava/lang/String;

    const-string v0, "screen_name"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->c:Ljava/lang/String;

    const-string v0, "location"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->d:Ljava/lang/String;

    const-string v0, "description"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->e:Ljava/lang/String;

    const-string v0, "contributors_enabled"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/v;->f:Z

    const-string v0, "profile_image_url"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->g:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->h:Ljava/lang/String;

    const-string v0, "protected"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/v;->i:Z

    const-string v0, "geo_enabled"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/v;->z:Z

    const-string v0, "verified"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/v;->A:Z

    const-string v0, "followers_count"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/v;->j:I

    const-string v0, "listed_count"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/v;->B:I

    const-string v0, "profile_background_color"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->l:Ljava/lang/String;

    const-string v0, "profile_text_color"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->m:Ljava/lang/String;

    const-string v0, "profile_link_color"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->n:Ljava/lang/String;

    const-string v0, "profile_sidebar_fill_color"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->o:Ljava/lang/String;

    const-string v0, "profile_sidebar_border_color"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->p:Ljava/lang/String;

    const-string v0, "friends_count"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/v;->q:I

    const-string v0, "created_at"

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, p1, v1}, La/c/d/a;->a(Ljava/lang/String;La/c/c/a/c;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, La/v;->r:Ljava/util/Date;

    const-string v0, "favourites_count"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/v;->s:I

    const-string v0, "utc_offset"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/v;->t:I

    const-string v0, "time_zone"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->u:Ljava/lang/String;

    const-string v0, "profile_background_image_url"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->v:Ljava/lang/String;

    const-string v0, "profile_background_tile"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/v;->w:Z

    const-string v0, "lang"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/v;->x:Ljava/lang/String;

    const-string v0, "statuses_count"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/v;->y:I

    const-string v0, "listed_count"

    invoke-static {v0, p1}, La/c/d/a;->d(Ljava/lang/String;La/c/c/a/c;)I

    move-result v0

    iput v0, p0, La/v;->B:I

    const-string v0, "follow_request_sent"

    invoke-static {v0, p1}, La/c/d/a;->f(Ljava/lang/String;La/c/c/a/c;)Z

    move-result v0

    iput-boolean v0, p0, La/v;->C:Z

    const-string v0, "status"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "status"

    invoke-virtual {p1, v0}, La/c/c/a/c;->b(Ljava/lang/String;)La/c/c/a/c;

    move-result-object v0

    new-instance v1, La/l;

    invoke-direct {v1, v0}, La/l;-><init>(La/c/c/a/c;)V

    iput-object v1, p0, La/v;->k:La/k;
    :try_end_0
    .catch La/c/c/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, La/o;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, La/c/c/a/b;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, La/c/c/a/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/v;->a:I

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, La/u;

    iget v0, p0, La/v;->a:I

    invoke-interface {p1}, La/u;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    instance-of v0, p1, La/u;

    if-eqz v0, :cond_2

    check-cast p1, La/u;

    invoke-interface {p1}, La/u;->a()I

    move-result v0

    iget v1, p0, La/v;->a:I

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, La/v;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "UserJSONImpl{, id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, La/v;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, La/v;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", followersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/v;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->k:La/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileTextColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileLinkColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileSidebarFillColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileSidebarBorderColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", friendsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/v;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->r:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", favouritesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/v;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", utcOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/v;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", timeZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/v;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileBackgroundTile=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, La/v;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", statusesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/v;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, La/v;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, La/v;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
