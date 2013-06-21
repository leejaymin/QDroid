.class final Lcom/sphericbox/syb/processing/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aI:Lcom/sphericbox/syb/processing/ProcessingActivity;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/processing/ProcessingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sphericbox/syb/processing/h;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sphericbox/syb/processing/h;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aD:Z
    invoke-static {v0, v1}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$602(Lcom/sphericbox/syb/processing/ProcessingActivity;Z)Z

    .line 165
    return-void
.end method
