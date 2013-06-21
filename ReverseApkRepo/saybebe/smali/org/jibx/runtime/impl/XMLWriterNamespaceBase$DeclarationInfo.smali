.class Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;
.super Ljava/lang/Object;
.source "XMLWriterNamespaceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclarationInfo"
.end annotation


# instance fields
.field public final m_deltas:[I

.field public final m_depth:I

.field public final m_priors:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[I[Ljava/lang/String;)V
    .locals 0
    .parameter "depth"
    .parameter "deltas"
    .parameter "priors"

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput p1, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;->m_depth:I

    .line 613
    iput-object p2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;->m_deltas:[I

    .line 614
    iput-object p3, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;->m_priors:[Ljava/lang/String;

    .line 615
    return-void
.end method
