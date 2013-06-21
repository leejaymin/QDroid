.class Lcom/sphericbox/syb/ui/d;
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
    .line 23
    iput-object p1, p0, Lcom/sphericbox/syb/ui/d;->bc:Lcom/sphericbox/syb/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sphericbox/syb/ui/d;->bc:Lcom/sphericbox/syb/ui/f;

    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/f;->onCancel()V

    .line 26
    return-void
.end method
