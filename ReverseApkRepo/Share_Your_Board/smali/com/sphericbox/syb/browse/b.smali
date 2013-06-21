.class Lcom/sphericbox/syb/browse/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic V:[Lcom/sphericbox/syb/b;

.field final synthetic W:Lcom/sphericbox/syb/browse/d;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/browse/d;[Lcom/sphericbox/syb/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sphericbox/syb/browse/b;->W:Lcom/sphericbox/syb/browse/d;

    iput-object p2, p0, Lcom/sphericbox/syb/browse/b;->V:[Lcom/sphericbox/syb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sphericbox/syb/browse/b;->V:[Lcom/sphericbox/syb/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/sphericbox/syb/browse/b;->W:Lcom/sphericbox/syb/browse/d;

    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/browse/d;->b(I)Landroid/graphics/Bitmap;

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
