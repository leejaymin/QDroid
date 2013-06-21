.class public final Lcom/thinkyeah/smartlock/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/k;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/thinkyeah/smartlock/k;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/thinkyeah/smartlock/l;->a:Lcom/thinkyeah/smartlock/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/l;->b:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/thinkyeah/smartlock/l;->c:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/thinkyeah/smartlock/l;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/thinkyeah/smartlock/l;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/common/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/l;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->a:Lcom/thinkyeah/smartlock/k;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Lcom/thinkyeah/smartlock/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/l;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/l;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/l;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/thinkyeah/smartlock/l;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/thinkyeah/smartlock/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/l;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
