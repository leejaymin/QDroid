.class final Lccc71/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/r;


# instance fields
.field final synthetic a:Lccc71/utils/n;


# direct methods
.method constructor <init>(Lccc71/utils/n;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/q;->a:Lccc71/utils/n;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lccc71/utils/q;->a:Lccc71/utils/n;

    invoke-static {v0}, Lccc71/utils/n;->c(Lccc71/utils/n;)Lccc71/utils/ccc71_color_gradient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_color_gradient;->setInitialColor(I)V

    .line 56
    return-void
.end method