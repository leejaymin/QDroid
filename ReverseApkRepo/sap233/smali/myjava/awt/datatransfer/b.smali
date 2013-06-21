.class final Lmyjava/awt/datatransfer/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/Hashtable;

.field private d:Ljava/util/Hashtable;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    iput-object v0, p0, Lmyjava/awt/datatransfer/b;->d:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lmyjava/awt/datatransfer/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/b;->d:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a(Lmyjava/awt/datatransfer/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lmyjava/awt/datatransfer/b;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic b(Lmyjava/awt/datatransfer/b;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic b(Lmyjava/awt/datatransfer/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmyjava/awt/datatransfer/b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lmyjava/awt/datatransfer/b;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lmyjava/awt/datatransfer/b;->d:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyjava/awt/datatransfer/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x22

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final a(Lmyjava/awt/datatransfer/b;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmyjava/awt/datatransfer/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v1, Lmyjava/awt/datatransfer/b;

    iget-object v0, p0, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lmyjava/awt/datatransfer/b;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lmyjava/awt/datatransfer/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, v1, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    iget-object v0, p0, Lmyjava/awt/datatransfer/b;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, v1, Lmyjava/awt/datatransfer/b;->d:Ljava/util/Hashtable;

    return-object v1
.end method
