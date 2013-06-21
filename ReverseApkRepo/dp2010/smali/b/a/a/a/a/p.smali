.class public final Lb/a/a/a/a/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/ListIterator;

.field private final c:Lb/a/a/a/a/i;


# direct methods
.method public constructor <init>(Lb/a/a/a/a/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/p;->a:Ljava/util/List;

    iget-object v0, p0, Lb/a/a/a/a/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/p;->b:Ljava/util/ListIterator;

    iput-object p1, p0, Lb/a/a/a/a/p;->c:Lb/a/a/a/a/i;

    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    iget-object v1, p0, Lb/a/a/a/a/p;->c:Lb/a/a/a/a/i;

    invoke-interface {v1, v0}, Lb/a/a/a/a/i;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lb/a/a/a/a/p;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/p;->a:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lb/a/a/a/a/p;->b(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/a/p;->c:Lb/a/a/a/a/i;

    iget-object v1, p0, Lb/a/a/a/a/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lb/a/a/a/a/i;->a(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lb/a/a/a/a/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/p;->b:Ljava/util/ListIterator;

    return-void
.end method

.method public final a(Lb/a/a/a/a/k;)[Lb/a/a/a/a/h;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lb/a/a/a/a/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lb/a/a/a/a/p;->c:Lb/a/a/a/a/i;

    invoke-interface {v3, v0}, Lb/a/a/a/a/i;->a(Ljava/lang/String;)Lb/a/a/a/a/h;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/a/a/a/a/k;->a(Lb/a/a/a/a/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lb/a/a/a/a/h;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/a/h;

    return-object v0
.end method
