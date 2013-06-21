.class final Lccc71/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/m;


# instance fields
.field final synthetic a:Lccc71/utils/i;


# direct methods
.method constructor <init>(Lccc71/utils/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/l;->a:Lccc71/utils/i;

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
    iget-object v0, p0, Lccc71/utils/l;->a:Lccc71/utils/i;

    invoke-static {v0}, Lccc71/utils/i;->c(Lccc71/utils/i;)Lccc71/utils/ccc71_color_gradient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_color_gradient;->setInitialColor(I)V

    .line 56
    return-void
.end method
