.class public Lorg/connectbot/FrontPage;
.super Landroid/app/Activity;
.source "FrontPage.java"


# static fields
.field public static final ITEM_CAPTION:Ljava/lang/String; = "caption"

.field public static final ITEM_IMAGE:Ljava/lang/String; = "image"

.field public static final ITEM_TITLE:Ljava/lang/String; = "title"


# instance fields
.field public bound:Lorg/connectbot/service/TerminalManager;

.field private connection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/FrontPage;->bound:Lorg/connectbot/service/TerminalManager;

    .line 36
    new-instance v0, Lorg/connectbot/FrontPage$1;

    invoke-direct {v0, p0}, Lorg/connectbot/FrontPage$1;-><init>(Lorg/connectbot/FrontPage;)V

    iput-object v0, p0, Lorg/connectbot/FrontPage;->connection:Landroid/content/ServiceConnection;

    .line 32
    return-void
.end method


# virtual methods
.method public createItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .parameter "title"
    .parameter "caption"
    .parameter "image"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "caption"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "image"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const v3, 0x108006b

    const/4 v8, 0x3

    const/4 v7, 0x1

    const v4, 0x1080069

    const-string v5, "person@192.168.0.1"

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lorg/connectbot/FrontPage;->setContentView(I)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/connectbot/FrontPage;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/connectbot/FrontPage;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v7}, Lorg/connectbot/FrontPage;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 82
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 83
    .local v2, security:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const-string v0, "user@example.org"

    const-string v1, "20 minutes ago, connected"

    invoke-virtual {p0, v0, v1, v3}, Lorg/connectbot/FrontPage;->createItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v0, "root@home.example.com"

    const-string v1, "1 hour ago, connected"

    invoke-virtual {p0, v0, v1, v3}, Lorg/connectbot/FrontPage;->createItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v0, "person@192.168.0.1"

    const-string v0, "12 days ago"

    invoke-virtual {p0, v5, v0, v4}, Lorg/connectbot/FrontPage;->createItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "root@google.com"

    const-string v1, "never"

    invoke-virtual {p0, v0, v1, v4}, Lorg/connectbot/FrontPage;->createItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v0, "nobody@example.net"

    const-string v1, "14 years ago, broken socket"

    const v3, 0x1080068

    invoke-virtual {p0, v0, v1, v3}, Lorg/connectbot/FrontPage;->createItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v0, "root@home.example.com"

    const-string v1, "1 hour ago"

    invoke-virtual {p0, v0, v1, v4}, Lorg/connectbot/FrontPage;->createItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v0, "person@192.168.0.1"

    const-string v0, "12 minutes ago"

    invoke-virtual {p0, v5, v0, v4}, Lorg/connectbot/FrontPage;->createItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lorg/connectbot/FrontPage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 92
    .local v6, list:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030008

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const-string v1, "caption"

    aput-object v1, v4, v7

    const/4 v1, 0x2

    const-string v5, "image"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    new-instance v0, Lorg/connectbot/FrontPage$2;

    invoke-direct {v0, p0}, Lorg/connectbot/FrontPage$2;-><init>(Lorg/connectbot/FrontPage;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-void

    .line 92
    nop

    :array_0
    .array-data 0x4
        0x18t 0x0t 0x9t 0x7ft
        0x19t 0x0t 0x9t 0x7ft
        0x17t 0x0t 0x9t 0x7ft
    .end array-data
.end method
