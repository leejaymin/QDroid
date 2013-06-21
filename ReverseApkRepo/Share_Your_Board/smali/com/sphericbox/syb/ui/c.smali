.class Lcom/sphericbox/syb/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bc:Lcom/sphericbox/syb/ui/f;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/ui/f;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sphericbox/syb/ui/c;->bc:Lcom/sphericbox/syb/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sphericbox/syb/ui/c;->bc:Lcom/sphericbox/syb/ui/f;

    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/f;->m()V

    .line 33
    return-void
.end method
