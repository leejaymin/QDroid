.class public final LaL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/kms/activation/gui/ActivationActivity;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, LaL;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, LaL;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-virtual {v0}, Lcom/kms/activation/gui/ActivationActivity;->finish()V

    .line 240
    return-void
.end method
