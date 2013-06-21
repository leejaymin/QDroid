.class public abstract Lccc71/utils/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field protected transient e:Lccc71/utils/b/e;

.field protected f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lccc71/utils/b/d;->a:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lccc71/utils/b/d;->a:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 33
    const-string v0, ""

    .line 35
    iget-object v1, p0, Lccc71/utils/b/d;->e:Lccc71/utils/b/e;

    if-nez v1, :cond_0

    .line 38
    iget v1, p0, Lccc71/utils/b/d;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 40
    iget v1, p0, Lccc71/utils/b/d;->a:I

    invoke-static {p1, v1}, Lccc71/utils/b/e;->a(Landroid/content/Context;I)Lccc71/utils/b/e;

    move-result-object v1

    iput-object v1, p0, Lccc71/utils/b/d;->e:Lccc71/utils/b/e;

    .line 48
    :cond_0
    iget-object v1, p0, Lccc71/utils/b/d;->e:Lccc71/utils/b/e;

    invoke-virtual {v1}, Lccc71/utils/b/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccc71/utils/b/d;->e:Lccc71/utils/b/e;

    invoke-virtual {v1}, Lccc71/utils/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/utils/b/d;->e:Lccc71/utils/b/e;

    invoke-virtual {v0}, Lccc71/utils/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_2
    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lccc71/utils/b/d;->a:I

    .line 19
    return-void
.end method

.method public final b()Lccc71/utils/b/e;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lccc71/utils/b/d;->e:Lccc71/utils/b/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lccc71/utils/b/d;->e:Lccc71/utils/b/e;

    invoke-virtual {v0}, Lccc71/utils/b/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
