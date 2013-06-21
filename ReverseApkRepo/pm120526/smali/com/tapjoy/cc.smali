.class public final Lcom/tapjoy/cc;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field c:Ljava/util/ArrayList;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/cc;->a:I

    sput v0, Lcom/tapjoy/cc;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->e:Ljava/lang/String;

    iput v1, p0, Lcom/tapjoy/cc;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->i:Ljava/lang/String;

    iput v1, p0, Lcom/tapjoy/cc;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/cc;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/tapjoy/cc;->o:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/cc;->p:Z

    iput-object v2, p0, Lcom/tapjoy/cc;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tapjoy/cc;->f:I

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->o:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/cc;->q:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tapjoy/cc;->j:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/cc;->f:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->g:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->h:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->i:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->k:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->l:Ljava/lang/String;

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/cc;->j:I

    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->m:Ljava/lang/String;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->n:Ljava/lang/String;

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cc;->r:Ljava/lang/String;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/cc;->p:Z

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/cc;->p:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/cc;->q:Z

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/cc;->r:Ljava/lang/String;

    return-object v0
.end method
