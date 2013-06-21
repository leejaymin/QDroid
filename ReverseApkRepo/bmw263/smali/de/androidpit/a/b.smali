.class public final Lde/androidpit/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field e:Lde/androidpit/a/c;

.field f:Lde/androidpit/app/services/a;

.field g:Lde/androidpit/a/f;

.field h:Z

.field i:Z

.field private j:Lcom/android/vending/licensing/h;

.field private k:Lde/androidpit/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/licensing/q;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "mutex"

    iput-object v0, p0, Lde/androidpit/a/b;->b:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lde/androidpit/a/b;->h:Z

    .line 87
    iput-boolean v1, p0, Lde/androidpit/a/b;->i:Z

    .line 142
    iput-object p1, p0, Lde/androidpit/a/b;->a:Landroid/content/Context;

    .line 143
    new-instance v0, Lcom/android/vending/licensing/h;

    .line 146
    invoke-direct {v0, p1, p4, p5}, Lcom/android/vending/licensing/h;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/q;Ljava/lang/String;)V

    .line 143
    iput-object v0, p0, Lde/androidpit/a/b;->j:Lcom/android/vending/licensing/h;

    .line 147
    new-instance v0, Lde/androidpit/a/e;

    invoke-direct {v0, p0}, Lde/androidpit/a/e;-><init>(Lde/androidpit/a/b;)V

    iput-object v0, p0, Lde/androidpit/a/b;->k:Lde/androidpit/a/e;

    .line 148
    iput-object p2, p0, Lde/androidpit/a/b;->c:Ljava/lang/String;

    .line 151
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v1, "\r"

    .line 153
    const-string v2, ""

    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/androidpit/a/b;->d:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lde/androidpit/a/c;

    invoke-direct {v0, p0}, Lde/androidpit/a/c;-><init>(Lde/androidpit/a/b;)V

    iput-object v0, p0, Lde/androidpit/a/b;->e:Lde/androidpit/a/c;

    .line 189
    iget-object v0, p0, Lde/androidpit/a/b;->e:Lde/androidpit/a/c;

    invoke-virtual {v0}, Lde/androidpit/a/c;->start()V

    .line 190
    return-void
.end method

.method final a(Lde/androidpit/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lde/androidpit/a/b;->g:Lde/androidpit/a/f;

    invoke-interface {v0, p1}, Lde/androidpit/a/f;->a(Lde/androidpit/a/a;)V

    .line 263
    iget-boolean v0, p0, Lde/androidpit/a/b;->i:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lde/androidpit/a/b;->b()V

    .line 267
    :cond_0
    return-void
.end method

.method public final a(Lde/androidpit/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lde/androidpit/a/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You\'ve already called onDestroy()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput-object p1, p0, Lde/androidpit/a/b;->g:Lde/androidpit/a/f;

    .line 173
    iget-object v0, p0, Lde/androidpit/a/b;->j:Lcom/android/vending/licensing/h;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lde/androidpit/a/b;->j:Lcom/android/vending/licensing/h;

    iget-object v1, p0, Lde/androidpit/a/b;->k:Lde/androidpit/a/e;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/h;->a(Lcom/android/vending/licensing/l;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lde/androidpit/a/b;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lde/androidpit/a/b;->j:Lcom/android/vending/licensing/h;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lde/androidpit/a/b;->j:Lcom/android/vending/licensing/h;

    invoke-virtual {v0}, Lcom/android/vending/licensing/h;->a()V

    .line 223
    iput-object v1, p0, Lde/androidpit/a/b;->j:Lcom/android/vending/licensing/h;

    .line 226
    :cond_0
    iput-object v1, p0, Lde/androidpit/a/b;->f:Lde/androidpit/app/services/a;

    .line 227
    iput-object v1, p0, Lde/androidpit/a/b;->e:Lde/androidpit/a/c;

    .line 228
    iput-object v1, p0, Lde/androidpit/a/b;->g:Lde/androidpit/a/f;

    .line 229
    iput-object v1, p0, Lde/androidpit/a/b;->a:Landroid/content/Context;

    .line 230
    return-void
.end method
