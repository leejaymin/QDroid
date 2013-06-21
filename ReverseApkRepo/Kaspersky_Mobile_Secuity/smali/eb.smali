.class public final Leb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lee;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lej;

.field private g:I

.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lej;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Leb;->d:I

    .line 22
    const-string v0, "Wait please..."

    iput-object v0, p0, Leb;->e:Ljava/lang/String;

    .line 24
    const/16 v0, 0x64

    iput v0, p0, Leb;->g:I

    .line 67
    new-instance v0, Led;

    invoke-direct {v0, p0}, Led;-><init>(Leb;)V

    iput-object v0, p0, Leb;->h:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Leb;->c:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Leb;->f:Lej;

    .line 39
    iput v1, p0, Leb;->d:I

    .line 40
    iput-object p4, p0, Leb;->e:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic a(Leb;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Leb;->d:I

    return v0
.end method

.method static synthetic b(Leb;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Leb;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Leb;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Leb;->g:I

    return v0
.end method

.method static synthetic d(Leb;)Lee;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Leb;->a:Lee;

    return-object v0
.end method

.method static synthetic e(Leb;)Lej;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Leb;->f:Lej;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lec;

    iget-object v1, p0, Leb;->c:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lec;-><init>(Leb;Landroid/content/Context;)V

    iput-object v0, p0, Leb;->b:Landroid/app/ProgressDialog;

    .line 58
    iget-object v0, p0, Leb;->b:Landroid/app/ProgressDialog;

    iget v1, p0, Leb;->d:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 59
    iget-object v0, p0, Leb;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leb;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Leb;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 61
    iget-object v0, p0, Leb;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 63
    new-instance v0, Lee;

    iget-object v1, p0, Leb;->h:Landroid/os/Handler;

    iget-object v2, p0, Leb;->f:Lej;

    invoke-direct {v0, p0, v1, v2}, Lee;-><init>(Leb;Landroid/os/Handler;Lej;)V

    iput-object v0, p0, Leb;->a:Lee;

    .line 64
    iget-object v0, p0, Leb;->a:Lee;

    invoke-virtual {v0}, Lee;->start()V

    .line 65
    return-void
.end method
