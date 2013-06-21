.class final Lccc71/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/n;


# instance fields
.field final synthetic a:Lccc71/utils/i;


# direct methods
.method constructor <init>(Lccc71/utils/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/j;->a:Lccc71/utils/i;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lccc71/utils/j;->a:Lccc71/utils/i;

    invoke-static {v0}, Lccc71/utils/i;->a(Lccc71/utils/i;)Lccc71/utils/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lccc71/utils/j;->a:Lccc71/utils/i;

    invoke-static {v0}, Lccc71/utils/i;->a(Lccc71/utils/i;)Lccc71/utils/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lccc71/utils/m;->a(I)V

    .line 41
    :cond_0
    iget-object v0, p0, Lccc71/utils/j;->a:Lccc71/utils/i;

    invoke-virtual {v0}, Lccc71/utils/i;->dismiss()V

    .line 42
    return-void
.end method
