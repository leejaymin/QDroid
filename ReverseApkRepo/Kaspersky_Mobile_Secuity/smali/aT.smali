.class public final LaT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/additional/gui/SendCommandSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/additional/gui/SendCommandSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, LaT;->a:Lcom/kms/additional/gui/SendCommandSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LaT;->a:Lcom/kms/additional/gui/SendCommandSettingsActivity;

    invoke-static {v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->a(Lcom/kms/additional/gui/SendCommandSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, LaT;->a:Lcom/kms/additional/gui/SendCommandSettingsActivity;

    invoke-static {v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->b(Lcom/kms/additional/gui/SendCommandSettingsActivity;)V

    .line 70
    iget-object v0, p0, LaT;->a:Lcom/kms/additional/gui/SendCommandSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/additional/gui/SendCommandSettingsActivity;->finish()V

    .line 72
    :cond_0
    return-void
.end method
