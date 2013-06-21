.class public abstract Lccc71/utils/phone/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field protected d:Z

.field protected e:I

.field protected f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lccc71/utils/phone/a/i;->f:Landroid/content/Context;

    .line 24
    iput p2, p0, Lccc71/utils/phone/a/i;->b:I

    .line 25
    iput-object p3, p0, Lccc71/utils/phone/a/i;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lccc71/utils/phone/a/i;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method

.method public abstract b(I)I
.end method

.method public abstract b(Landroid/content/Context;)V
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lccc71/utils/phone/a/i;->d:Z

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/phone/a/i;->d:Z

    .line 35
    iget v0, p0, Lccc71/utils/phone/a/i;->e:I

    invoke-virtual {p0, v0}, Lccc71/utils/phone/a/i;->b(I)I

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lccc71/utils/phone/a/i;->e:I

    goto :goto_0
.end method

.method public final d(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lccc71/utils/phone/a/i;->e:I

    if-eq v0, p1, :cond_0

    .line 44
    iput p1, p0, Lccc71/utils/phone/a/i;->e:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/utils/phone/a/i;->d:Z

    .line 48
    :cond_0
    return-void
.end method
