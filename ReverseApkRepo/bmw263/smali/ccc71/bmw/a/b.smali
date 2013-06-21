.class final Lccc71/bmw/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/androidpit/a/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lccc71/bmw/a/b;-><init>()V

    return-void
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lccc71/bmw/a/a;->c()Lde/androidpit/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lde/androidpit/a/b;->b()V

    .line 110
    invoke-static {}, Lccc71/bmw/a/a;->d()V

    .line 111
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Lccc71/bmw/a/a;->a(Z)V

    .line 71
    invoke-static {}, Lccc71/bmw/a/b;->c()V

    .line 72
    return-void
.end method

.method public final a(Lde/androidpit/a/a;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    sget-object v0, Lde/androidpit/a/a;->i:Lde/androidpit/a/a;

    if-eq p1, v0, :cond_0

    .line 93
    sget-object v0, Lde/androidpit/a/a;->j:Lde/androidpit/a/a;

    if-eq p1, v0, :cond_0

    .line 94
    invoke-static {}, Lccc71/bmw/a/a;->a()Lcom/android/vending/licensing/u;

    move-result-object v0

    iget-object v0, v0, Lcom/android/vending/licensing/u;->a:Lcom/android/vending/licensing/r;

    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    if-ne v0, v1, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lccc71/bmw/a/a;->a(Z)V

    .line 97
    invoke-static {}, Lccc71/bmw/a/a;->b()V

    .line 104
    :goto_0
    invoke-static {}, Lccc71/bmw/a/b;->c()V

    .line 105
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lccc71/bmw/a/a;->a(Z)V

    .line 102
    invoke-static {}, Lccc71/bmw/a/a;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lccc71/bmw/a/a;->a()Lcom/android/vending/licensing/u;

    move-result-object v0

    iget-object v0, v0, Lcom/android/vending/licensing/u;->a:Lcom/android/vending/licensing/r;

    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    if-ne v0, v1, :cond_0

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Lccc71/bmw/a/a;->a(Z)V

    .line 85
    :goto_0
    invoke-static {}, Lccc71/bmw/a/a;->b()V

    .line 86
    invoke-static {}, Lccc71/bmw/a/b;->c()V

    .line 87
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lccc71/bmw/a/a;->a(Z)V

    goto :goto_0
.end method
