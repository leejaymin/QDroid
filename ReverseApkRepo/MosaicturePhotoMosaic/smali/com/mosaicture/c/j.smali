.class public final Lcom/mosaicture/c/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/mosaicture/c/i;

.field public final c:Ljava/lang/Exception;

.field public final d:I

.field public final e:Lcom/mosaicture/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/mosaicture/c/i;ILcom/mosaicture/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mosaicture/c/j;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mosaicture/c/j;->c:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/mosaicture/c/j;->b:Lcom/mosaicture/c/i;

    iput p3, p0, Lcom/mosaicture/c/j;->d:I

    iput-object p4, p0, Lcom/mosaicture/c/j;->e:Lcom/mosaicture/c/a;

    return-void
.end method
