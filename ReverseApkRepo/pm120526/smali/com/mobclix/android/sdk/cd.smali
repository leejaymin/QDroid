.class public final Lcom/mobclix/android/sdk/cd;
.super Ljava/lang/Object;


# static fields
.field static b:Z

.field static e:I


# instance fields
.field a:Z

.field c:Z

.field d:Landroid/app/Activity;

.field f:I

.field g:I

.field h:Ljava/util/HashSet;

.field i:Lcom/mobclix/android/sdk/cq;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobclix/android/sdk/cd;->b:Z

    sput v0, Lcom/mobclix/android/sdk/cd;->e:I

    return-void
.end method

.method private d()V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cd;->m:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cd;->m:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/j;

    new-instance v4, Lcom/mobclix/android/sdk/i;

    invoke-direct {v4}, Lcom/mobclix/android/sdk/i;-><init>()V

    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->d:Landroid/app/Activity;

    return-object v0
.end method

.method final a(Lcom/mobclix/android/sdk/cq;)V
    .locals 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cd;->a:Z

    iput-object p1, p0, Lcom/mobclix/android/sdk/cd;->i:Lcom/mobclix/android/sdk/cq;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cd;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cd;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->i:Lcom/mobclix/android/sdk/cq;

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->j:Ljava/lang/String;

    const-string v1, "FullScreen Ad did not display, ad not yet loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/mobclix/android/sdk/cd;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->j:Ljava/lang/String;

    const-string v1, "FullScreen Ad did not display, a FullScreen ad is already displayed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sput-boolean v2, Lcom/mobclix/android/sdk/cd;->b:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->i:Lcom/mobclix/android/sdk/cq;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->i:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->d()V

    :cond_5
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/mobclix/android/sdk/cd;->i:Lcom/mobclix/android/sdk/cq;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->u:Ljava/lang/ref/SoftReference;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/mobclix/android/sdk/cd;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".type"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "fullscreen"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cd;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/mobclix/android/sdk/cd;->d()V

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2
.end method

.method final b()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v3, p0, Lcom/mobclix/android/sdk/cd;->i:Lcom/mobclix/android/sdk/cq;

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cd;->a:Z

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cd;->c:Z

    iput-object v3, p0, Lcom/mobclix/android/sdk/cd;->k:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/mobclix/android/sdk/cd;->l:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cd;->m:Z

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cd;->n:Z

    sput-boolean v2, Lcom/mobclix/android/sdk/cd;->b:Z

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method

.method final c()V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cd;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cd;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cd;->n:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/j;

    new-instance v4, Lcom/mobclix/android/sdk/i;

    invoke-direct {v4}, Lcom/mobclix/android/sdk/i;-><init>()V

    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
