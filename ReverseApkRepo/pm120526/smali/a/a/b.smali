.class La/a/b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a;
.implements Ljava/io/Serializable;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field b:Ljava/util/Map;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "true"

    sput-object v0, La/a/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "false"

    sput-object v0, La/a/b;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, La/a/b;->c:Z

    const-string v0, "Twitter4J"

    invoke-virtual {p0, v0}, La/a/b;->b(Ljava/lang/String;)V

    iput-object v1, p0, La/a/b;->f:Ljava/lang/String;

    iput-object v1, p0, La/a/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v2}, La/a/b;->b(Z)V

    iput-object v1, p0, La/a/b;->i:Ljava/lang/String;

    iput-object v1, p0, La/a/b;->j:Ljava/lang/String;

    iput-object v1, p0, La/a/b;->k:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, La/a/b;->l:I

    const/16 v0, 0x4e20

    iput v0, p0, La/a/b;->m:I

    const v0, 0x1d4c0

    iput v0, p0, La/a/b;->n:I

    const v0, 0x493e0

    iput v0, p0, La/a/b;->o:I

    iput v2, p0, La/a/b;->p:I

    const/4 v0, 0x5

    iput v0, p0, La/a/b;->q:I

    const/16 v0, 0x14

    iput v0, p0, La/a/b;->r:I

    const/4 v0, 0x2

    iput v0, p0, La/a/b;->s:I

    invoke-virtual {p0, v1}, La/a/b;->h(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, La/a/b;->i(Ljava/lang/String;)V

    iput-object v1, p0, La/a/b;->v:Ljava/lang/String;

    iput-object v1, p0, La/a/b;->w:Ljava/lang/String;

    iput v3, p0, La/a/b;->G:I

    const-string v0, "2.1.6"

    invoke-virtual {p0, v0}, La/a/b;->l(Ljava/lang/String;)V

    const-string v0, "http://twitter4j.org/en/twitter4j-2.1.6.xml"

    invoke-virtual {p0, v0}, La/a/b;->m(Ljava/lang/String;)V

    const-string v0, "twitter4j http://twitter4j.org/ /2.1.6"

    invoke-virtual {p0, v0}, La/a/b;->a(Ljava/lang/String;)V

    iput-boolean v3, p0, La/a/b;->H:Z

    const-string v0, "http://api.twitter.com/oauth/request_token"

    invoke-virtual {p0, v0}, La/a/b;->r(Ljava/lang/String;)V

    const-string v0, "http://api.twitter.com/oauth/authorize"

    invoke-virtual {p0, v0}, La/a/b;->s(Ljava/lang/String;)V

    const-string v0, "http://api.twitter.com/oauth/access_token"

    invoke-virtual {p0, v0}, La/a/b;->t(Ljava/lang/String;)V

    const-string v0, "http://api.twitter.com/oauth/authenticate"

    invoke-virtual {p0, v0}, La/a/b;->u(Ljava/lang/String;)V

    const-string v0, "http://api.twitter.com/1/"

    invoke-virtual {p0, v0}, La/a/b;->n(Ljava/lang/String;)V

    const-string v0, "http://search.twitter.com/"

    iput-object v0, p0, La/a/b;->C:Ljava/lang/String;

    const-string v0, "http://stream.twitter.com/1/"

    iput-object v0, p0, La/a/b;->D:Ljava/lang/String;

    const-string v0, "https://userstream.twitter.com/2/"

    iput-object v0, p0, La/a/b;->E:Ljava/lang/String;

    const-string v0, "twitter4j.internal.async.DispatcherImpl"

    iput-object v0, p0, La/a/b;->F:Ljava/lang/String;

    iput-boolean v3, p0, La/a/b;->H:Z

    const-string v0, "twitter4j.dalvik"

    sget-object v1, La/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, La/a/b;->K:Z

    return-void
.end method

.method private static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url should contain \'://\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private o()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/b;->b:Ljava/util/Map;

    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-Version"

    iget-object v2, p0, La/a/b;->I:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-URL"

    iget-object v2, p0, La/a/b;->J:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    const-string v1, "X-Twitter-Client"

    iget-object v2, p0, La/a/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    const-string v1, "User-Agent"

    iget-object v2, p0, La/a/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "http://api.twitter.com/1/"

    iget-object v1, p0, La/a/b;->B:Ljava/lang/String;

    invoke-static {v2, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/b;->B:Ljava/lang/String;

    invoke-static {v2, v0}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/b;->B:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v0, "http://api.twitter.com/oauth/access_token"

    iget-object v1, p0, La/a/b;->z:Ljava/lang/String;

    invoke-static {v2, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, La/a/b;->h:Z

    iget-object v1, p0, La/a/b;->z:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/b;->z:Ljava/lang/String;

    :cond_1
    const-string v0, "http://api.twitter.com/oauth/authenticate"

    iget-object v1, p0, La/a/b;->A:Ljava/lang/String;

    invoke-static {v2, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, La/a/b;->h:Z

    iget-object v1, p0, La/a/b;->A:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/b;->A:Ljava/lang/String;

    :cond_2
    const-string v0, "http://api.twitter.com/oauth/authorize"

    iget-object v1, p0, La/a/b;->y:Ljava/lang/String;

    invoke-static {v2, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, La/a/b;->h:Z

    iget-object v1, p0, La/a/b;->y:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/b;->y:Ljava/lang/String;

    :cond_3
    const-string v0, "http://api.twitter.com/oauth/request_token"

    iget-object v1, p0, La/a/b;->x:Ljava/lang/String;

    invoke-static {v2, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, La/a/b;->h:Z

    iget-object v1, p0, La/a/b;->x:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/b;->x:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    iget-boolean v0, p0, La/a/b;->h:Z

    iget-object v1, p0, La/a/b;->B:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/b;->B:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 0

    iput p1, p0, La/a/b;->l:I

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->e:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->o()V

    return-void
.end method

.method protected final a(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/b;->c:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, La/a/b;->K:Z

    return v0
.end method

.method protected final b(I)V
    .locals 0

    iput p1, p0, La/a/b;->m:I

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->d:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->o()V

    return-void
.end method

.method protected final b(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/b;->h:Z

    invoke-direct {p0}, La/a/b;->p()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, La/a/b;->c:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final c(I)V
    .locals 0

    iput p1, p0, La/a/b;->n:I

    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->f:Ljava/lang/String;

    return-void
.end method

.method protected final c(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/b;->H:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final d(I)V
    .locals 0

    iput p1, p0, La/a/b;->o:I

    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->g:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final e(I)V
    .locals 0

    iput p1, p0, La/a/b;->p:I

    return-void
.end method

.method protected final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->i:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, La/a/b;

    iget-boolean v0, p0, La/a/b;->K:Z

    iget-boolean v1, p1, La/a/b;->K:Z

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, La/a/b;->G:I

    iget v1, p1, La/a/b;->G:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, La/a/b;->c:Z

    iget-boolean v1, p1, La/a/b;->c:Z

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget v0, p0, La/a/b;->m:I

    iget v1, p1, La/a/b;->m:I

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p0, La/a/b;->l:I

    iget v1, p1, La/a/b;->l:I

    if-eq v0, v1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget v0, p0, La/a/b;->n:I

    iget v1, p1, La/a/b;->n:I

    if-eq v0, v1, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    iget v0, p0, La/a/b;->p:I

    iget v1, p1, La/a/b;->p:I

    if-eq v0, v1, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    iget v0, p0, La/a/b;->q:I

    iget v1, p1, La/a/b;->q:I

    if-eq v0, v1, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    iget v0, p0, La/a/b;->o:I

    iget v1, p1, La/a/b;->o:I

    if-eq v0, v1, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    iget-boolean v0, p0, La/a/b;->h:Z

    iget-boolean v1, p1, La/a/b;->h:Z

    if-eq v0, v1, :cond_c

    move v0, v2

    goto :goto_0

    :cond_c
    iget-object v0, p0, La/a/b;->J:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, La/a/b;->J:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v2

    goto :goto_0

    :cond_e
    iget-object v0, p1, La/a/b;->J:Ljava/lang/String;

    if-nez v0, :cond_d

    :cond_f
    iget-object v0, p0, La/a/b;->I:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, La/a/b;->I:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    move v0, v2

    goto/16 :goto_0

    :cond_11
    iget-object v0, p1, La/a/b;->I:Ljava/lang/String;

    if-nez v0, :cond_10

    :cond_12
    iget-object v0, p0, La/a/b;->F:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, La/a/b;->F:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move v0, v2

    goto/16 :goto_0

    :cond_14
    iget-object v0, p1, La/a/b;->F:Ljava/lang/String;

    if-nez v0, :cond_13

    :cond_15
    iget-object v0, p0, La/a/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, La/a/b;->i:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    move v0, v2

    goto/16 :goto_0

    :cond_17
    iget-object v0, p1, La/a/b;->i:Ljava/lang/String;

    if-nez v0, :cond_16

    :cond_18
    iget-object v0, p0, La/a/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, La/a/b;->k:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_19
    move v0, v2

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p1, La/a/b;->k:Ljava/lang/String;

    if-nez v0, :cond_19

    :cond_1b
    iget-object v0, p0, La/a/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, La/a/b;->j:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    move v0, v2

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p1, La/a/b;->j:Ljava/lang/String;

    if-nez v0, :cond_1c

    :cond_1e
    iget-object v0, p0, La/a/b;->v:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, La/a/b;->v:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1f
    move v0, v2

    goto/16 :goto_0

    :cond_20
    iget-object v0, p1, La/a/b;->v:Ljava/lang/String;

    if-nez v0, :cond_1f

    :cond_21
    iget-object v0, p0, La/a/b;->w:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, La/a/b;->w:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_22
    move v0, v2

    goto/16 :goto_0

    :cond_23
    iget-object v0, p1, La/a/b;->w:Ljava/lang/String;

    if-nez v0, :cond_22

    :cond_24
    iget-object v0, p0, La/a/b;->z:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, La/a/b;->z:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    move v0, v2

    goto/16 :goto_0

    :cond_26
    iget-object v0, p1, La/a/b;->z:Ljava/lang/String;

    if-nez v0, :cond_25

    :cond_27
    iget-object v0, p0, La/a/b;->A:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, La/a/b;->A:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    move v0, v2

    goto/16 :goto_0

    :cond_29
    iget-object v0, p1, La/a/b;->A:Ljava/lang/String;

    if-nez v0, :cond_28

    :cond_2a
    iget-object v0, p0, La/a/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, La/a/b;->y:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_2b
    move v0, v2

    goto/16 :goto_0

    :cond_2c
    iget-object v0, p1, La/a/b;->y:Ljava/lang/String;

    if-nez v0, :cond_2b

    :cond_2d
    iget-object v0, p0, La/a/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, La/a/b;->t:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_2e
    move v0, v2

    goto/16 :goto_0

    :cond_2f
    iget-object v0, p1, La/a/b;->t:Ljava/lang/String;

    if-nez v0, :cond_2e

    :cond_30
    iget-object v0, p0, La/a/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, La/a/b;->u:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_31
    move v0, v2

    goto/16 :goto_0

    :cond_32
    iget-object v0, p1, La/a/b;->u:Ljava/lang/String;

    if-nez v0, :cond_31

    :cond_33
    iget-object v0, p0, La/a/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, La/a/b;->x:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    :cond_34
    move v0, v2

    goto/16 :goto_0

    :cond_35
    iget-object v0, p1, La/a/b;->x:Ljava/lang/String;

    if-nez v0, :cond_34

    :cond_36
    iget-object v0, p0, La/a/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, La/a/b;->g:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_37
    move v0, v2

    goto/16 :goto_0

    :cond_38
    iget-object v0, p1, La/a/b;->g:Ljava/lang/String;

    if-nez v0, :cond_37

    :cond_39
    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_3b

    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    iget-object v1, p1, La/a/b;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_3a
    move v0, v2

    goto/16 :goto_0

    :cond_3b
    iget-object v0, p1, La/a/b;->b:Ljava/util/Map;

    if-nez v0, :cond_3a

    :cond_3c
    iget-object v0, p0, La/a/b;->B:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, La/a/b;->B:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_3d
    move v0, v2

    goto/16 :goto_0

    :cond_3e
    iget-object v0, p1, La/a/b;->B:Ljava/lang/String;

    if-nez v0, :cond_3d

    :cond_3f
    iget-object v0, p0, La/a/b;->C:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, La/a/b;->C:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    :cond_40
    move v0, v2

    goto/16 :goto_0

    :cond_41
    iget-object v0, p1, La/a/b;->C:Ljava/lang/String;

    if-nez v0, :cond_40

    :cond_42
    iget-object v0, p0, La/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p0, La/a/b;->d:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    :cond_43
    move v0, v2

    goto/16 :goto_0

    :cond_44
    iget-object v0, p1, La/a/b;->d:Ljava/lang/String;

    if-nez v0, :cond_43

    :cond_45
    iget-object v0, p0, La/a/b;->D:Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, p0, La/a/b;->D:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_46
    move v0, v2

    goto/16 :goto_0

    :cond_47
    iget-object v0, p1, La/a/b;->D:Ljava/lang/String;

    if-nez v0, :cond_46

    :cond_48
    iget-object v0, p0, La/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, La/a/b;->f:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_49
    move v0, v2

    goto/16 :goto_0

    :cond_4a
    iget-object v0, p1, La/a/b;->f:Ljava/lang/String;

    if-nez v0, :cond_49

    :cond_4b
    iget-object v0, p0, La/a/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_4d

    iget-object v0, p0, La/a/b;->e:Ljava/lang/String;

    iget-object v1, p1, La/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_4c
    move v0, v2

    goto/16 :goto_0

    :cond_4d
    iget-object v0, p1, La/a/b;->e:Ljava/lang/String;

    if-nez v0, :cond_4c

    :cond_4e
    move v0, v3

    goto/16 :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method protected final f(I)V
    .locals 0

    iput p1, p0, La/a/b;->q:I

    return-void
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->j:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method protected final g(I)V
    .locals 0

    iput p1, p0, La/a/b;->r:I

    return-void
.end method

.method protected final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->k:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected final h(I)V
    .locals 0

    iput p1, p0, La/a/b;->s:I

    return-void
.end method

.method protected final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->t:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->p()V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method protected final i(I)V
    .locals 0

    iput p1, p0, La/a/b;->G:I

    return-void
.end method

.method protected final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->u:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->p()V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method protected final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->v:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method protected final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->w:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method protected final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->I:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->o()V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b;->A:Ljava/lang/String;

    return-object v0
.end method

.method protected final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->J:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->o()V

    return-void
.end method

.method public n()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, La/a/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method protected final n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->B:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->p()V

    return-void
.end method

.method protected final o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->C:Ljava/lang/String;

    return-void
.end method

.method protected final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->D:Ljava/lang/String;

    return-void
.end method

.method protected final q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->E:Ljava/lang/String;

    return-void
.end method

.method protected final r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->x:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->p()V

    return-void
.end method

.method protected final s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->y:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->p()V

    return-void
.end method

.method protected final t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->z:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->p()V

    return-void
.end method

.method protected final u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b;->A:Ljava/lang/String;

    invoke-direct {p0}, La/a/b;->p()V

    return-void
.end method
