.class public final LaH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/activation/gui/ActivationActivity;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, LaH;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, LaH;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-virtual {v0}, Lcom/kms/activation/gui/ActivationActivity;->finish()V

    .line 216
    return-void
.end method
