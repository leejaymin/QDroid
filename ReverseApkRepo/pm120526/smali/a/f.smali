.class final La/f;
.super La/t;

# interfaces
.implements La/e;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[[La/d;

.field private k:Ljava/lang/String;

.field private l:[[La/d;

.field private m:[La/e;


# direct methods
.method constructor <init>(La/c/c/a/c;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/t;-><init>(La/c/a/l;)V

    :try_start_0
    const-string v0, "name"

    invoke-static {v0, p1}, La/c/d/a;->a(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->a:Ljava/lang/String;

    const-string v0, "street_address"

    invoke-static {v0, p1}, La/c/d/a;->a(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->b:Ljava/lang/String;

    const-string v0, "country_code"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->c:Ljava/lang/String;

    const-string v0, "id"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->d:Ljava/lang/String;

    const-string v0, "country"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->e:Ljava/lang/String;

    const-string v0, "place_type"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->f:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->g:Ljava/lang/String;

    const-string v0, "full_name"

    invoke-static {v0, p1}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->h:Ljava/lang/String;

    const-string v0, "bounding_box"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bounding_box"

    invoke-virtual {p1, v0}, La/c/c/a/c;->b(Ljava/lang/String;)La/c/c/a/c;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1, v0}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/f;->i:Ljava/lang/String;

    const-string v1, "coordinates"

    invoke-virtual {v0, v1}, La/c/c/a/c;->a(Ljava/lang/String;)La/c/c/a/a;

    move-result-object v0

    invoke-static {v0}, La/d;->a(La/c/c/a/a;)[[La/d;

    move-result-object v0

    iput-object v0, p0, La/f;->j:[[La/d;

    :goto_0
    const-string v0, "geometry"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "geometry"

    invoke-virtual {p1, v0}, La/c/c/a/c;->b(Ljava/lang/String;)La/c/c/a/c;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1, v0}, La/c/d/a;->b(Ljava/lang/String;La/c/c/a/c;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/f;->k:Ljava/lang/String;

    const-string v1, "coordinates"

    invoke-virtual {v0, v1}, La/c/c/a/c;->a(Ljava/lang/String;)La/c/c/a/a;

    move-result-object v1

    iget-object v0, p0, La/f;->k:Ljava/lang/String;

    const-string v2, "Point"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, La/d;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[La/d;

    iput-object v0, p0, La/f;->l:[[La/d;

    iget-object v0, p0, La/f;->l:[[La/d;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    new-instance v3, La/d;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, La/c/c/a/a;->b(I)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, La/c/c/a/a;->b(I)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, La/d;-><init>(DD)V

    aput-object v3, v0, v2

    :goto_1
    const-string v0, "contained_within"

    invoke-virtual {p1, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "contained_within"

    invoke-virtual {p1, v0}, La/c/c/a/c;->a(Ljava/lang/String;)La/c/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/c/c/a/a;->a()I

    move-result v1

    new-array v1, v1, [La/e;

    iput-object v1, p0, La/f;->m:[La/e;

    move v1, v8

    :goto_2
    invoke-virtual {v0}, La/c/c/a/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, La/f;->m:[La/e;

    new-instance v3, La/f;

    invoke-virtual {v0, v1}, La/c/c/a/a;->d(I)La/c/c/a/c;

    move-result-object v4

    invoke-direct {v3, v4}, La/f;-><init>(La/c/c/a/c;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La/f;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->j:[[La/d;
    :try_end_0
    .catch La/c/c/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    :cond_1
    :try_start_1
    iget-object v0, p0, La/f;->k:Ljava/lang/String;

    const-string v2, "Polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, La/d;->a(La/c/c/a/a;)[[La/d;

    move-result-object v0

    iput-object v0, p0, La/f;->l:[[La/d;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, La/f;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->l:[[La/d;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, La/f;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->l:[[La/d;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, La/f;->m:[La/e;
    :try_end_1
    .catch La/c/c/a/b; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, La/e;

    iget-object v0, p0, La/f;->d:Ljava/lang/String;

    invoke-interface {p1}, La/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

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
    instance-of v0, p1, La/e;

    if-eqz v0, :cond_2

    check-cast p1, La/e;

    invoke-interface {p1}, La/e;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, La/f;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PlaceJSONImpl{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", streetAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", country=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", placeType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fullName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", boundingBoxType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", boundingBoxCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->j:[[La/d;

    if-nez v1, :cond_0

    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geometryType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geometryCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->l:[[La/d;

    if-nez v1, :cond_1

    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", containedWithIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/f;->m:[La/e;

    if-nez v1, :cond_2

    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, La/f;->j:[[La/d;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, La/f;->l:[[La/d;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, La/f;->m:[La/e;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2
.end method
