.class public abstract LfK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field protected b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Z)V
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18
    iget v1, p0, LfK;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, LfK;->b:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput v0, p0, LfK;->a:I

    .line 30
    return-void
.end method
