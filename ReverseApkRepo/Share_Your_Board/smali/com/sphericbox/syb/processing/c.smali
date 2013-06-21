.class Lcom/sphericbox/syb/processing/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic j:Lcom/sphericbox/syb/processing/g;

.field final synthetic l:I

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/processing/g;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sphericbox/syb/processing/c;->j:Lcom/sphericbox/syb/processing/g;

    iput p2, p0, Lcom/sphericbox/syb/processing/c;->l:I

    iput-object p3, p0, Lcom/sphericbox/syb/processing/c;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/sphericbox/syb/e;

    iget-object v1, p0, Lcom/sphericbox/syb/processing/c;->j:Lcom/sphericbox/syb/processing/g;

    iget-object v1, v1, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    iget v2, p0, Lcom/sphericbox/syb/processing/c;->l:I

    iget-object v3, p0, Lcom/sphericbox/syb/processing/c;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/sphericbox/syb/processing/c;->j:Lcom/sphericbox/syb/processing/g;

    iget-object v1, v1, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->showDialog(Landroid/app/Dialog;)V

    .line 157
    return-void
.end method
