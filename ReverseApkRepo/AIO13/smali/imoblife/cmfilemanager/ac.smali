.class public final Limoblife/cmfilemanager/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Limoblife/cmfilemanager/ac;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Limoblife/cmfilemanager/ac;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Limoblife/cmfilemanager/ac;->d:Z

    iput-object p3, p0, Limoblife/cmfilemanager/ac;->c:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Limoblife/cmfilemanager/ac;->a:Ljava/lang/String;

    iput-object p2, p0, Limoblife/cmfilemanager/ac;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/ac;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Limoblife/cmfilemanager/ac;->e:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/cmfilemanager/ac;->e:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Limoblife/cmfilemanager/ac;

    iget-object v0, p0, Limoblife/cmfilemanager/ac;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/ac;->a:Ljava/lang/String;

    iget-object v1, p1, Limoblife/cmfilemanager/ac;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/ac;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
